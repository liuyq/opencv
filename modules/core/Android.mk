LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(call all-java-files-under, misc/java/src/java/)
LOCAL_MODULE := OpenCVJavaCore
LOCAL_MODULE_TAGS := debug
CAL_SDK_VERSION := current

#include $(BUILD_JAVA_LIBRARY)
include $(BUILD_STATIC_JAVA_LIBRARY)
