LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE    := libopencv_objdetect
LOCAL_MODULE_TAGS := debug

#ll modules/objdetect/src/|tr -s ' '|cut -d\  -f9 |sed  's%$% \\%'|sed 's%^%src/%'
LOCAL_SRC_FILES := \
    src/cascadedetect_convert.cpp \
    src/cascadedetect.cpp \
    src/detection_based_tracker.cpp \
    src/haar.cpp \
    src/hog.cpp \

LOCAL_C_INCLUDES += \
    external/opencv-upstream/modules/objdetect/include/ \
    external/opencv-upstream/modules/core/include/ \
    external/opencv-upstream/modules/hal/include \
    external/opencv-upstream/modules/imgproc/include \
    external/opencv-upstream/modules/ml/include \
    external/opencv-upstream/modules/highgui/include \
    external/opencv-upstream/modules/imgcodecs/include \
    external/opencv-upstream/modules/videoio/include \

LOCAL_SHARED_LIBRARIES := \
    libopencv_core \
    libopencv_imgproc \
    libopencv_ml \
    libopencv_highgui \
    liblog \

LOCAL_CPPFLAGS += \
    -D__OPENCV_BUILD=1 \
    -fexceptions \
    -frtti \

include $(BUILD_SHARED_LIBRARY)
