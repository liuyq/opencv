LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE    := libopencv_videoio
LOCAL_MODULE_TAGS := debug

#ll modules/videoio/src/|tr -s ' '|cut -d\  -f9 |sed  's%$% \\%'|sed 's%^%src/%'

# have following defined:  \
    HAVE_FFMPEG \
    HAVE_CAMV4L2 \

LOCAL_SRC_FILES := \
    src/cap.cpp \
    src/cap_images.cpp \
    src/cap_mjpeg_decoder.cpp \
    src/cap_mjpeg_encoder.cpp \
    src/cap_ffmpeg.cpp \
    src/cap_v4l.cpp \

LOCAL_C_INCLUDES += \
    external/opencv-upstream/modules/videoio/include \
    external/opencv-upstream/modules/core/include/ \
    external/opencv-upstream/modules/hal/include \
    external/opencv-upstream/modules/imgcodecs/include \
    external/opencv-upstream/modules/imgproc/include \

LOCAL_SHARED_LIBRARIES := \
    libopencv_core \
    libopencv_imgproc \
    libopencv_imgcodecs \

LOCAL_CPPFLAGS += \
    -D__OPENCV_BUILD=1 \
    -fexceptions \
    -frtti \

include $(BUILD_SHARED_LIBRARY)
