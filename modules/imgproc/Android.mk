LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE    := libopencv_imgproc
LOCAL_MODULE_TAGS := debug

#ll modules/imgproc/src/|tr -s ' '|cut -d\  -f9 |sed  's%$% \\%'
LOCAL_SRC_FILES := \
    src/accum.cpp \
    src/approx.cpp \
    src/blend.cpp \
    src/canny.cpp \
    src/clahe.cpp \
    src/color.cpp \
    src/colormap.cpp \
    src/connectedcomponents.cpp \
    src/contours.cpp \
    src/convhull.cpp \
    src/corner.cpp \
    src/cornersubpix.cpp \
    src/demosaicing.cpp \
    src/deriv.cpp \
    src/distransform.cpp \
    src/drawing.cpp \
    src/emd.cpp \
    src/featureselect.cpp \
    src/filter.cpp \
    src/floodfill.cpp \
    src/gabor.cpp \
    src/generalized_hough.cpp \
    src/geometry.cpp \
    src/grabcut.cpp \
    src/hershey_fonts.cpp \
    src/histogram.cpp \
    src/hough.cpp \
    src/imgwarp.cpp \
    src/intersection.cpp \
    src/linefit.cpp \
    src/lsd.cpp \
    src/matchcontours.cpp \
    src/min_enclosing_triangle.cpp \
    src/moments.cpp \
    src/morph.cpp \
    src/opencl/ \
    src/phasecorr.cpp \
    src/pyramids.cpp \
    src/rotcalipers.cpp \
    src/samplers.cpp \
    src/segmentation.cpp \
    src/shapedescr.cpp \
    src/smooth.cpp \
    src/spatialgradient.cpp \
    src/subdivision2d.cpp \
    src/sumpixels.cpp \
    src/tables.cpp \
    src/templmatch.cpp \
    src/thresh.cpp \
    src/undistort.cpp \
    src/utils.cpp \

LOCAL_C_INCLUDES += \
    external/opencv-upstream/modules/imgproc/include \
    external/opencv-upstream/modules/core/include/ \
    external/opencv-upstream/modules/hal/include \

LOCAL_SHARED_LIBRARIES := \
    libopencv_core \

LOCAL_CPPFLAGS += \
    -D__OPENCV_BUILD=1 \
    -fexceptions \

include $(BUILD_SHARED_LIBRARY)
