LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := $(call all-java-files-under, misc/java/src/java/)
LOCAL_MODULE := OpenCVJavaCore
LOCAL_MODULE_TAGS := debug
LOCAL_SDK_VERSION := current
#include $(BUILD_JAVA_LIBRARY)
include $(BUILD_STATIC_JAVA_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE    := libopencv_core
LOCAL_MODULE_TAGS := debug
LOCAL_SRC_FILES := \
        src/algorithm.cpp \
        src/alloc.cpp \
        src/arithm.cpp \
        src/array.cpp \
        src/command_line_parser.cpp \
        src/conjugate_gradient.cpp \
        src/convert.cpp \
        src/copy.cpp \
        src/cuda_gpu_mat.cpp \
        src/cuda_host_mem.cpp \
        src/cuda_info.cpp \
        src/cuda_stream.cpp \
        src/datastructs.cpp \
        src/directx.cpp \
        src/downhill_simplex.cpp \
        src/dxt.cpp \
        src/gl_core_3_1.cpp \
        src/glob.cpp \
        src/kmeans.cpp \
        src/lapack.cpp \
        src/lda.cpp \
        src/lpsolver.cpp \
        src/mathfuncs.cpp \
        src/matmul.cpp \
        src/matop.cpp \
        src/matrix.cpp \
        src/ocl.cpp \
        src/opengl.cpp \
        src/out.cpp \
        src/parallel.cpp \
        src/parallel_pthreads.cpp \
        src/pca.cpp \
        src/persistence.cpp \
        src/rand.cpp \
        src/stat.cpp \
        src/stl.cpp \
        src/system.cpp \
        src/tables.cpp \
        src/types.cpp \
        src/umatrix.cpp \


LOCAL_SHARED_LIBRARIES := \
    liblog \
    libz \
    libopencv_hal \

LOCAL_C_INCLUDES += \
    external/opencv-upstream/modules/core/include \
    external/opencv-upstream/modules/core/misc/java/src/cpp/ \
    external/opencv-upstream/modules/hal/include/ \
    external/zlib/ \

LOCAL_CPPFLAGS += \
    -D__OPENCV_BUILD=1 \
    -fexceptions \
    -fvisibility=default \
    -frtti \

include $(BUILD_SHARED_LIBRARY)
