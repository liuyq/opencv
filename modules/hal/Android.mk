LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE    := libopencv_hal
LOCAL_MODULE_TAGS := debug
LOCAL_SRC_FILES := \
    src/arithm.cpp \
    src/color.cpp \
    src/filter.cpp \
    src/mathfuncs.cpp \
    src/matrix.cpp \
    src/precomp.hpp \
    src/resize.cpp \
    src/stat.cpp \
    src/warp.cpp \

LOCAL_C_INCLUDES += \
    external/opencv-upstream/modules/hal/include \

include $(BUILD_SHARED_LIBRARY)
