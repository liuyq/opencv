LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(call all-java-files-under, generator/src/java) \
                  generator/src/java/org/opencv/engine/OpenCVEngineInterface.aidl 
LOCAL_MODULE := OpenCVJavaCommon
LOCAL_MODULE_TAGS := debug
CAL_SDK_VERSION := current
LOCAL_STATIC_JAVA_LIBRARIES := OpenCVJavaCore
#LOCAL_JAVA_LIBRARIES := OpenCVJavaCore

#include $(BUILD_JAVA_LIBRARY)
include $(BUILD_STATIC_JAVA_LIBRARY)

include $(OPENCV_ROOT_PATH)/modules/java/android_lib/Android.mk
include $(OPENCV_ROOT_PATH)/modules/java/android_lib/jni/Android.mk
