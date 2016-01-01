LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE    := libopencv_features2d
LOCAL_MODULE_TAGS := debug

#ll modules/video/src/|tr -s ' '|cut -d\  -f9 |sed  's%$% \\%'|sed 's%^%src/%'
LOCAL_SRC_FILES := \
    src/agast.cpp \
    src/agast_score.cpp \
    src/akaze.cpp \
    src/bagofwords.cpp \
    src/blobdetector.cpp \
    src/brisk.cpp \
    src/draw.cpp \
    src/dynamic.cpp \
    src/evaluation.cpp \
    src/fast.cpp \
    src/fast_score.cpp \
    src/feature2d.cpp \
    src/gftt.cpp \
    src/kaze/AKAZEFeatures.cpp \
    src/kaze/fed.cpp \
    src/kaze/KAZEFeatures.cpp \
    src/kaze/nldiffusion_functions.cpp \
    src/kaze.cpp \
    src/keypoint.cpp \
    src/matchers.cpp \
    src/mser.cpp \
    src/opencl/ \
    src/orb.cpp \

LOCAL_C_INCLUDES += \
    external/opencv-upstream/modules/features2d/include \
    external/opencv-upstream/modules/core/include/ \
    external/opencv-upstream/modules/hal/include \
    external/opencv-upstream/modules/imgproc/include \
    external/opencv-upstream/modules/ml/include \
    external/opencv-upstream/modules/flann/include \

LOCAL_SHARED_LIBRARIES := \
    libopencv_core \
    libopencv_hal \
    libopencv_imgproc \
    libopencv_ml \
    libopencv_flann \

LOCAL_CPPFLAGS += \
    -D__OPENCV_BUILD=1 \
    -fvisibility=default \
    -frtti \

include $(BUILD_SHARED_LIBRARY)
