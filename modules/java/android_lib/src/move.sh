#!/bin/bash

for f in $(ls *.java); do
    package=$(echo $f|cut -d+ -f1)
    class=$(echo $f|cut -d+ -f2)
    mkdir -p org/opencv/$package
    git mv -v $f org/opencv/$package/$class
done
