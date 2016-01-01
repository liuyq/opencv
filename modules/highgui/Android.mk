LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE    := libopencv_highgui
LOCAL_MODULE_TAGS := debug

#ll modules/highgui/src/|tr -s ' '|cut -d\  -f9 |sed  's%$% \\%'|sed 's%^%src/%'
LOCAL_SRC_FILES := \
    src/window.cpp \

#    src/window_carbon.cpp \
    src/window_cocoa.mm \
    src/window_gtk.cpp \
    src/window_QT.cpp \
    src/window_QT.qrc \
    src/window_w32.cpp \
    src/window_winrt_bridge.cpp \
    src/window_winrt.cpp \

LOCAL_C_INCLUDES += \
    external/opencv-upstream/modules/highgui/include \
    external/opencv-upstream/modules/core/include/ \
    external/opencv-upstream/modules/hal/include \
    external/opencv-upstream/modules/imgproc/include \
    external/opencv-upstream/modules/imgcodecs/include \
    external/opencv-upstream/modules/videoio/include \

LOCAL_SHARED_LIBRARIES := \
    libopencv_core \
    libopencv_imgproc \
    libopencv_imgcodecs \
    libopencv_videoio \

LOCAL_CPPFLAGS += \
    -D__OPENCV_BUILD=1 \
    -fexceptions \
    -frtti \

include $(BUILD_SHARED_LIBRARY)
