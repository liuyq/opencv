LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE    := libopencv_ml
LOCAL_MODULE_TAGS := debug

#ll modules/ml/src/|tr -s ' '|cut -d\  -f9 |sed  's%$% \\%'|sed 's%^%src/%'
LOCAL_SRC_FILES := \
    src/ann_mlp.cpp \
    src/boost.cpp \
    src/data.cpp \
    src/em.cpp \
    src/gbt.cpp \
    src/inner_functions.cpp \
    src/kdtree.cpp \
    src/kdtree.hpp \
    src/knearest.cpp \
    src/lr.cpp \
    src/nbayes.cpp \
    src/precomp.hpp \
    src/rtrees.cpp \
    src/svm.cpp \
    src/testset.cpp \
    src/tree.cpp \

LOCAL_C_INCLUDES += \
    external/opencv-upstream/modules/core/include/ \
    external/opencv-upstream/modules/hal/include \
    external/opencv-upstream/modules/ml/include \

LOCAL_SHARED_LIBRARIES := \
    libopencv_core \

LOCAL_CPPFLAGS += \
    -D__OPENCV_BUILD=1 \

include $(BUILD_SHARED_LIBRARY)
