LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE    := libopencv_video
LOCAL_MODULE_TAGS := debug

#ll modules/video/src/|tr -s ' '|cut -d\  -f9 |sed  's%$% \\%'|sed 's%^%src/%'
LOCAL_SRC_FILES := \
    src/bgfg_gaussmix2.cpp \
    src/bgfg_KNN.cpp \
    src/camshift.cpp \
    src/compat_video.cpp \
    src/ecc.cpp \
    src/kalman.cpp \
    src/lkpyramid.cpp \
    src/optflowgf.cpp \
    src/tvl1flow.cpp \

LOCAL_C_INCLUDES += \
    external/opencv-upstream/modules/video/include \
    external/opencv-upstream/modules/core/include/ \
    external/opencv-upstream/modules/hal/include \
    external/opencv-upstream/modules/imgproc/include \

LOCAL_SHARED_LIBRARIES := \
    libopencv_core \
    libopencv_imgproc \

LOCAL_CPPFLAGS += \
    -D__OPENCV_BUILD=1 \

include $(BUILD_SHARED_LIBRARY)
