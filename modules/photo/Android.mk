LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE    := libopencv_photo
LOCAL_MODULE_TAGS := debug

#ll modules/photo/src/|tr -s ' '|cut -d\  -f9 |sed  's%$% \\%'|sed 's%^%src/%'
LOCAL_SRC_FILES := \
    src/align.cpp \
    src/calibrate.cpp \
    src/contrast_preserve.cpp \
    src/cuda/ \
    src/denoise_tvl1.cpp \
    src/denoising.cpp \
    src/denoising.cuda.cpp \
    src/hdr_common.cpp \
    src/inpaint.cpp \
    src/merge.cpp \
    src/npr.cpp \
    src/opencl/ \
    src/seamless_cloning.cpp \
    src/seamless_cloning_impl.cpp \
    src/tonemap.cpp \

LOCAL_C_INCLUDES += \
    external/opencv-upstream/modules/photo/include \
    external/opencv-upstream/modules/core/include/ \
    external/opencv-upstream/modules/hal/include \
    external/opencv-upstream/modules/imgproc/include \

LOCAL_SHARED_LIBRARIES := \
    libopencv_core \
    libopencv_imgproc \

LOCAL_CPPFLAGS += \
    -D__OPENCV_BUILD=1 \
    -fexceptions \
    -frtti \

include $(BUILD_SHARED_LIBRARY)
