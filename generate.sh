#!/bin/bash

opencv_src_root="$(cd $(dirname $0);pwd)"

java_modules="core \
    imgproc \
    ml \
    photo \
    video \
    imgcodecs \
    videoio \
    objdetect \
    features2d \
    calib3d"

#opencv-master/cmake/OpenCVModule.cmake
#opencv-master/modules/java/CMakeLists.txt
includes="opencv-master/include/ opencv-master/modules/java/generator/src/cpp/"

scripts_gen_java=${opencv_src_root}/modules/java/generator/gen_java.py
scripts_hdr_parser=${opencv_src_root}/modules/python/src2/hdr_parser.py
handwritten_h_sources=${opencv_src_root}/modules/java/generator/src/cpp/*.h
handwritten_cpp_sources=${opencv_src_root}/modules/java/generator/src/cpp/*.cpp
handwritten_java_sources=${opencv_src_root}/modules/java/generator/src/java/*.java
handwritten_aidl_sources=${opencv_src_root}/modules/java/generator/src/java/*.aidl

for module in ${java_modules}; do
    cd ${opencv_src_root}/modules/${module}
    module_java_dir=${opencv_src_root}/modules/${module}/misc/java
    custom_header_list="${module_java_dir}/filelist"
    opencv_public_headers_module=""
    if [ -f "${custom_header_list}" ];then
        while read LINE; do
            opencv_public_headers_module="${opencv_public_headers_module} ${LINE}"
        done < "${custom_header_list}"
    else
        module_opencv2_dir="${opencv_src_root}/modules/${module}/include/opencv2/"
        if [ -d "${module_opencv2_dir}" ]; then
            for f_header in $(ls ${module_opencv2_dir}/*.hpp); do
                opencv_public_headers_module="${opencv_public_headers_module} ${f_header}"
            done
        fi
        if [ -d "${module_opencv2_dir}/${module}" ]; then
            for f_header in $(ls ${module_opencv2_dir}/${module}/*.hpp); do
                opencv_public_headers_module="${opencv_public_headers_module} ${f_header}"
            done
            for f_header in $(ls ${module_opencv2_dir}/${module}/*.h); do
                opencv_public_headers_module="${opencv_public_headers_module} ${f_header}"
            done
        fi
        if [ -d "${module_opencv2_dir}/${module}/hal" ]; then
            for f_header in $(ls ${module_opencv2_dir}/${module}/hal/*.hpp); do
                opencv_public_headers_module="${opencv_public_headers_module} ${f_header}"
            done
            for f_header in $(ls ${module_opencv2_dir}/${module}//hal/*.h); do
                opencv_public_headers_module="${opencv_public_headers_module} ${f_header}"
            done
        fi
        if [ -d "${module_opencv2_dir}/${module}/detail" ]; then
            for f_header in $(ls ${module_opencv2_dir}/${module}/detail/*.hpp); do
                opencv_public_headers_module="${opencv_public_headers_module} ${f_header}"
            done
            for f_header in $(ls ${module_opencv2_dir}/${module}//detail/*.h); do
                opencv_public_headers_module="${opencv_public_headers_module} ${f_header}"
            done
        fi
    fi
    ${scripts_gen_java} ${scripts_hdr_parser} ${module} ${opencv_public_headers_module}

    rm -fv ${module}.txt
done

cd ${opencv_src_root}
android_lib_jni="${opencv_src_root}/modules/java/android_lib/jni"

SRC_FILES_COPY="\
    modules/java/generator/src/cpp/converters.cpp \
    modules/java/generator/src/cpp/jni_part.cpp \
    modules/java/generator/src/cpp/Mat.cpp \
    modules/java/generator/src/cpp/utils.cpp \
    modules/core/misc/java/src/cpp/core_manual.cpp \
    modules/features2d/misc/java/src/cpp/features2d_converters.cpp \
"

for f in ${SRC_FILES_COPY}; do
    cp -uvf $f ${android_lib_jni}/
done

SRC_FILES_MOVE="\
    modules/calib3d/calib3d.cpp \
    modules/imgcodecs/imgcodecs.cpp \
    modules/ml/ml.cpp \
    modules/objdetect/objdetect.cpp \
    modules/photo/photo.cpp \
    modules/videoio/videoio.cpp \
    modules/core/core.cpp \
    modules/features2d/features2d.cpp \
    modules/imgproc/imgproc.cpp \
    modules/video/video.cpp \
"
for f in ${SRC_FILES_MOVE}; do
    mv -vf $f ${android_lib_jni}/
done

#opencv-master/cmake/OpenCVGenHeaders.cmake
#opencv2/opencv_modules.hpp
mkdir -p modules/java/android_lib/jni/include
mkdir -p modules/java/android_lib/jni/include/opencv2/
cat >modules/java/android_lib/jni/include/opencv2/opencv_modules.hpp <<__EOF__
/*
*      ** File generated automatically, do not modify **
*
* This file defines the list of modules available in current build configuration
*
*
*/

#define HAVE_OPENCV_CALIB3D
#define HAVE_OPENCV_CORE
#define HAVE_OPENCV_FEATURES2D
#define HAVE_OPENCV_FLANN
#define HAVE_OPENCV_HIGHGUI
#define HAVE_OPENCV_IMGCODECS
#define HAVE_OPENCV_IMGPROC
#define HAVE_OPENCV_ML
#define HAVE_OPENCV_OBJDETECT
#define HAVE_OPENCV_PHOTO
#define HAVE_OPENCV_SHAPE
#define HAVE_OPENCV_STITCHING
#define HAVE_OPENCV_SUPERRES
#define HAVE_OPENCV_VIDEO
#define HAVE_OPENCV_VIDEOIO
#define HAVE_OPENCV_VIDEOSTAB
__EOF__

# generate cvconfig.h, see opencv-master/cmake/OpenCVGenHeaders.cmake
# generate opencl_kernels_$module.hpp, see opencv-master/cmake/OpenCVModule.cmake
# for some headers files, it's not use abs path
# generate version_string.inc, see ./cmake/OpenCVUtils.cmake
