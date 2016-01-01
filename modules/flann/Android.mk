LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE    := libopencv_flann
LOCAL_MODULE_TAGS := debug

#ll modules/flann/src/|tr -s ' '|cut -d\  -f9 |sed  's%$% \\%'|sed 's%^%src/%'
LOCAL_SRC_FILES := \
    src/flann.cpp \
    src/miniflann.cpp \

LOCAL_C_INCLUDES += \
    external/opencv-upstream/modules/flann/include \
    external/opencv-upstream/modules/core/include/ \
    external/opencv-upstream/modules/hal/include \

LOCAL_SHARED_LIBRARIES := \
    libopencv_core \

LOCAL_CPPFLAGS += \
    -D__OPENCV_BUILD=1 \
    -fexceptions \
    -frtti \

include $(BUILD_SHARED_LIBRARY)
