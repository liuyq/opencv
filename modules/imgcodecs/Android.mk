LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE    := libopencv_imgcodecs
LOCAL_MODULE_TAGS := debug

#ll modules/imgcodecs/src/|tr -s ' '|cut -d\  -f9 |sed  's%$% \\%'
LOCAL_SRC_FILES := \
    src/bitstrm.cpp \
    src/grfmt_base.cpp \
    src/grfmt_bmp.cpp \
    src/grfmt_exr.cpp \
    src/grfmt_gdal.cpp \
    src/grfmt_hdr.cpp \
    src/grfmt_jpeg2000.cpp \
    src/grfmt_jpeg.cpp \
    src/grfmt_png.cpp \
    src/grfmt_pxm.cpp \
    src/grfmt_sunras.cpp \
    src/grfmt_tiff.cpp \
    src/grfmt_webp.cpp \
    src/loadsave.cpp \
    src/rgbe.cpp \
    src/utils.cpp \

LOCAL_C_INCLUDES += \
    external/opencv-upstream/modules/imgcodecs/include \
    external/opencv-upstream/modules/imgproc/include \
    external/opencv-upstream/modules/core/include/ \
    external/opencv-upstream/modules/hal/include \
    external/opencv-upstream/3rdparty/openexr/Imath \
    external/opencv-upstream/3rdparty/openexr/IlmImf \
    external/opencv-upstream/3rdparty/openexr/Iex \
    external/opencv-upstream/3rdparty/openexr/Half \
    external/opencv-upstream/3rdparty/libjasper \
    external/jpeg/ \
    external/libpng/ \
    external/zlib/ \
    external/opencv-upstream/3rdparty/libtiff/ \

LOCAL_SHARED_LIBRARIES := \
    libopencv_core \
    libopencv_imgproc \
    libtiff \
    libpng \
    libopenexr \
    libjasper \
    libjpeg \

LOCAL_CPPFLAGS += \
    -D__OPENCV_BUILD=1 \
    -fexceptions \

include $(BUILD_SHARED_LIBRARY)
