OPENCV_ROOT_PATH:= $(call my-dir)

include $(OPENCV_ROOT_PATH)/modules/hal/Android.mk
include $(OPENCV_ROOT_PATH)/modules/core/Android.mk
include $(OPENCV_ROOT_PATH)/modules/imgproc/Android.mk
include $(OPENCV_ROOT_PATH)/modules/video/Android.mk
include $(OPENCV_ROOT_PATH)/modules/ml/Android.mk
include $(OPENCV_ROOT_PATH)/modules/flann/Android.mk
include $(OPENCV_ROOT_PATH)/modules/features2d/Android.mk
include $(OPENCV_ROOT_PATH)/modules/photo/Android.mk
include $(OPENCV_ROOT_PATH)/3rdparty/libtiff/Android.mk
include $(OPENCV_ROOT_PATH)/3rdparty/openexr/Android.mk
include $(OPENCV_ROOT_PATH)/3rdparty/libjasper/Android.mk
include $(OPENCV_ROOT_PATH)/modules/imgcodecs/Android.mk
include $(OPENCV_ROOT_PATH)/modules/videoio/Android.mk
include $(OPENCV_ROOT_PATH)/modules/highgui/Android.mk
include $(OPENCV_ROOT_PATH)/modules/objdetect/Android.mk
include $(OPENCV_ROOT_PATH)/modules/calib3d/Android.mk
include $(OPENCV_ROOT_PATH)/modules/java/Android.mk

include $(OPENCV_ROOT_PATH)/platforms/android/service/engine/Android.mk
include $(OPENCV_ROOT_PATH)/samples/android/15-puzzle/Android.mk
