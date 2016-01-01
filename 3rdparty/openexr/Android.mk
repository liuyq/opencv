LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE    := libopenexr
LOCAL_MODULE_TAGS := debug

LOCAL_SRC_FILES := \
    Half/half.cpp \
    Iex/IexBaseExc.cpp \
    Iex/IexThrowErrnoExc.cpp \
    IlmThread/IlmThread.cpp \
    IlmThread/IlmThreadMutex.cpp \
    IlmThread/IlmThreadMutexPosix.cpp \
    IlmThread/IlmThreadPool.cpp \
    IlmThread/IlmThreadPosix.cpp \
    IlmThread/IlmThreadSemaphore.cpp \
    IlmThread/IlmThreadSemaphorePosixCompat.cpp \
    IlmThread/IlmThreadSemaphorePosix.cpp \
    Imath/ImathColorAlgo.cpp \
    Imath/ImathFun.cpp \
    Imath/ImathMatrixAlgo.cpp \
    Imath/ImathRandom.cpp \
    Imath/ImathVec.cpp \
    IlmImf/ImfAcesFile.cpp \
    IlmImf/ImfAttribute.cpp \
    IlmImf/ImfB44Compressor.cpp \
    IlmImf/ImfBoxAttribute.cpp \
    IlmImf/ImfChannelListAttribute.cpp \
    IlmImf/ImfChannelList.cpp \
    IlmImf/ImfChromaticitiesAttribute.cpp \
    IlmImf/ImfChromaticities.cpp \
    IlmImf/ImfCompressionAttribute.cpp \
    IlmImf/ImfCompressor.cpp \
    IlmImf/ImfConvert.cpp \
    IlmImf/ImfCRgbaFile.cpp \
    IlmImf/ImfDoubleAttribute.cpp \
    IlmImf/ImfEnvmapAttribute.cpp \
    IlmImf/ImfEnvmap.cpp \
    IlmImf/ImfFloatAttribute.cpp \
    IlmImf/ImfFrameBuffer.cpp \
    IlmImf/ImfFramesPerSecond.cpp \
    IlmImf/ImfHeader.cpp \
    IlmImf/ImfHuf.cpp \
    IlmImf/ImfInputFile.cpp \
    IlmImf/ImfIntAttribute.cpp \
    IlmImf/ImfIO.cpp \
    IlmImf/ImfKeyCodeAttribute.cpp \
    IlmImf/ImfKeyCode.cpp \
    IlmImf/ImfLineOrderAttribute.cpp \
    IlmImf/ImfLut.cpp \
    IlmImf/ImfMatrixAttribute.cpp \
    IlmImf/ImfMisc.cpp \
    IlmImf/ImfMultiView.cpp \
    IlmImf/ImfOpaqueAttribute.cpp \
    IlmImf/ImfOutputFile.cpp \
    IlmImf/ImfPizCompressor.cpp \
    IlmImf/ImfPreviewImageAttribute.cpp \
    IlmImf/ImfPreviewImage.cpp \
    IlmImf/ImfPxr24Compressor.cpp \
    IlmImf/ImfRationalAttribute.cpp \
    IlmImf/ImfRational.cpp \
    IlmImf/ImfRgbaFile.cpp \
    IlmImf/ImfRgbaYca.cpp \
    IlmImf/ImfRleCompressor.cpp \
    IlmImf/ImfScanLineInputFile.cpp \
    IlmImf/ImfStandardAttributes.cpp \
    IlmImf/ImfStdIO.cpp \
    IlmImf/ImfStringAttribute.cpp \
    IlmImf/ImfStringVectorAttribute.cpp \
    IlmImf/ImfTestFile.cpp \
    IlmImf/ImfThreading.cpp \
    IlmImf/ImfTileDescriptionAttribute.cpp \
    IlmImf/ImfTiledInputFile.cpp \
    IlmImf/ImfTiledMisc.cpp \
    IlmImf/ImfTiledOutputFile.cpp \
    IlmImf/ImfTiledRgbaFile.cpp \
    IlmImf/ImfTileOffsets.cpp \
    IlmImf/ImfTimeCodeAttribute.cpp \
    IlmImf/ImfTimeCode.cpp \
    IlmImf/ImfVecAttribute.cpp \
    IlmImf/ImfVersion.cpp \
    IlmImf/ImfWav.cpp \
    IlmImf/ImfZipCompressor.cpp \

LOCAL_C_INCLUDES += \
    external/opencv-upstream/3rdparty/openexr/Iex/ \
    external/opencv-upstream/3rdparty/openexr/Half \
    external/opencv-upstream/3rdparty/openexr/IlmImf \
    external/opencv-upstream/3rdparty/openexr/Imath \
    external/opencv-upstream/3rdparty/openexr/IlmThread \
    external/zlib \

LOCAL_SHARED_LIBRARIES := \
    libz \

LOCAL_CPPFLAGS += \
    -fexceptions \
    -frtti \

include $(BUILD_SHARED_LIBRARY)
