LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := libopencv_java

LOCAL_SRC_FILES := \
    converters.cpp \
    jni_part.cpp \
    Mat.cpp \
    utils.cpp \
    core_manual.cpp \
    features2d_converters.cpp \

LOCAL_SRC_FILES += \
    calib3d.cpp \
    imgcodecs.cpp \
    ml.cpp \
    objdetect.cpp \
    photo.cpp \
    videoio.cpp \
    core.cpp \
    features2d.cpp \
    imgproc.cpp \
    video.cpp \

LOCAL_SHARED_LIBRARIES := \
    liblog \
    libdl \
    libjnigraphics \
    libopencv_core \
    libopencv_imgproc \
    libopencv_video \
    libopencv_features2d \
    libopencv_photo \
    libopencv_objdetect \
    libopencv_videoio \
    libopencv_ml \
    libopencv_imgcodecs \
    libopencv_calib3d \


LOCAL_C_INCLUDES += \
    external/opencv-upstream/modules/java/android_lib/jni/include \
    external/opencv-upstream/modules/java/generator/src/cpp/ \
    external/opencv-upstream/modules/core/include \
    external/opencv-upstream/modules/core/misc/java/src/cpp/ \
    external/opencv-upstream/modules/hal/include \
    external/opencv-upstream/modules/features2d/include \
    external/opencv-upstream/modules/flann/include \
    external/opencv-upstream/modules/video/include/ \
    external/opencv-upstream/modules/imgproc/include \
    external/opencv-upstream/modules/features2d/misc/java/src/cpp/ \
    external/opencv-upstream/modules/calib3d/include \
    external/opencv-upstream/modules/imgcodecs/include/ \
    external/opencv-upstream/modules/ml/include \
    external/opencv-upstream/modules/objdetect/include \
    external/opencv-upstream/modules/photo/include \
    external/opencv-upstream/modules/videoio/include \

LOCAL_CPPFLAGS += -fexceptions -frtti
include $(BUILD_SHARED_LIBRARY)
