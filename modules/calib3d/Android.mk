LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE    := libopencv_calib3d
LOCAL_MODULE_TAGS := debug

#ll modules/calib3d/src/|tr -s ' '|cut -d\  -f9 |sed  's%$% \\%'|sed 's%^%src/%'

LOCAL_SRC_FILES := \
    src/calibinit.cpp \
    src/calibration.cpp \
    src/checkchessboard.cpp \
    src/circlesgrid.cpp \
    src/compat_ptsetreg.cpp \
    src/compat_stereo.cpp \
    src/dls.cpp \
    src/epnp.cpp \
    src/fisheye.cpp \
    src/five-point.cpp \
    src/fundam.cpp \
    src/homography_decomp.cpp \
    src/levmarq.cpp \
    src/opencl/ \
    src/p3p.cpp \
    src/polynom_solver.cpp \
    src/posit.cpp \
    src/ptsetreg.cpp \
    src/quadsubpix.cpp \
    src/rho.cpp \
    src/solvepnp.cpp \
    src/stereobm.cpp \
    src/stereosgbm.cpp \
    src/triangulate.cpp \
    src/upnp.cpp \

LOCAL_C_INCLUDES += \
    external/opencv-upstream/modules/calib3d/include \
    external/opencv-upstream/modules/calib3d/src \
    external/opencv-upstream/modules/core/include/ \
    external/opencv-upstream/modules/hal/include \
    external/opencv-upstream/modules/features2d/include \
    external/opencv-upstream/modules/imgproc/include \
    external/opencv-upstream/modules/flann/include \

LOCAL_SHARED_LIBRARIES := \
    libopencv_core \
    libopencv_imgproc \
    libopencv_features2d \
    libopencv_flann \

LOCAL_CPPFLAGS += \
    -D__OPENCV_BUILD=1 \
    -fexceptions \
    -frtti \

include $(BUILD_SHARED_LIBRARY)
