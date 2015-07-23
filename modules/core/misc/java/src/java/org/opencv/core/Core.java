
//
// This file is auto-generated. Please don't modify it!
//
package org.opencv.core;

import java.lang.String;

public class Core {

    // these constants are wrapped inside functions to prevent inlining
    private static String getVersion() { return "3.0.0-dev"; }
    private static String getNativeLibraryName() { return "opencv_java300"; }
    private static int getVersionMajor() { return 3; }
    private static int getVersionMinor() { return 0; }
    private static int getVersionRevision() { return 0; }
    private static String getVersionStatus() { return "-dev"; }

    public static final String VERSION = getVersion();
    public static final String NATIVE_LIBRARY_NAME = getNativeLibraryName();
    public static final int VERSION_MAJOR = getVersionMajor();
    public static final int VERSION_MINOR = getVersionMinor();
    public static final int VERSION_REVISION = getVersionRevision();
    public static final String VERSION_STATUS = getVersionStatus();

    private static final int
            CV_8U = 0,
            CV_8S = 1,
            CV_16U = 2,
            CV_16S = 3,
            CV_32S = 4,
            CV_32F = 5,
            CV_64F = 6,
            CV_USRTYPE1 = 7;


    public static final int
            SVD_MODIFY_A = 1,
            SVD_NO_UV = 2,
            SVD_FULL_UV = 4,
            FILLED = -1,
            REDUCE_SUM = 0,
            REDUCE_AVG = 1,
            REDUCE_MAX = 2,
            REDUCE_MIN = 3,
            CPU_MMX = 1,
            CPU_SSE = 2,
            CPU_SSE2 = 3,
            CPU_SSE3 = 4,
            CPU_SSSE3 = 5,
            CPU_SSE4_1 = 6,
            CPU_SSE4_2 = 7,
            CPU_POPCNT = 8,
            CPU_AVX = 10,
            CPU_AVX2 = 11,
            CPU_FMA3 = 12,
            CPU_AVX_512F = 13,
            CPU_AVX_512BW = 14,
            CPU_AVX_512CD = 15,
            CPU_AVX_512DQ = 16,
            CPU_AVX_512ER = 17,
            CPU_AVX_512IFMA512 = 18,
            CPU_AVX_512PF = 19,
            CPU_AVX_512VBMI = 20,
            CPU_AVX_512VL = 21,
            CPU_NEON = 100;


    //
    // C++:  void setNumThreads(int nthreads)
    //

    //javadoc: setNumThreads(nthreads)
    public static void setNumThreads(int nthreads)
    {
        
        setNumThreads_0(nthreads);
        
        return;
    }


    //
    // C++:  int getNumThreads()
    //

    //javadoc: getNumThreads()
    public static int getNumThreads()
    {
        
        int retVal = getNumThreads_0();
        
        return retVal;
    }


    //
    // C++:  int getThreadNum()
    //

    //javadoc: getThreadNum()
    public static int getThreadNum()
    {
        
        int retVal = getThreadNum_0();
        
        return retVal;
    }


    //
    // C++:  String getBuildInformation()
    //

    //javadoc: getBuildInformation()
    public static String getBuildInformation()
    {
        
        String retVal = getBuildInformation_0();
        
        return retVal;
    }


    //
    // C++:  int64 getTickCount()
    //

    //javadoc: getTickCount()
    public static long getTickCount()
    {
        
        long retVal = getTickCount_0();
        
        return retVal;
    }


    //
    // C++:  double getTickFrequency()
    //

    //javadoc: getTickFrequency()
    public static double getTickFrequency()
    {
        
        double retVal = getTickFrequency_0();
        
        return retVal;
    }


    //
    // C++:  int64 getCPUTickCount()
    //

    //javadoc: getCPUTickCount()
    public static long getCPUTickCount()
    {
        
        long retVal = getCPUTickCount_0();
        
        return retVal;
    }


    //
    // C++:  int getNumberOfCPUs()
    //

    //javadoc: getNumberOfCPUs()
    public static int getNumberOfCPUs()
    {
        
        int retVal = getNumberOfCPUs_0();
        
        return retVal;
    }


    // manual port
    public static class MinMaxLocResult {
        public double minVal;
        public double maxVal;
        public Point minLoc;
        public Point maxLoc;

        public MinMaxLocResult() {
            minVal=0; maxVal=0;
            minLoc=new Point();
            maxLoc=new Point();
        }
    }

    // C++: minMaxLoc(Mat src, double* minVal, double* maxVal=0, Point* minLoc=0, Point* maxLoc=0, InputArray mask=noArray())

    //javadoc: minMaxLoc(src, mask)
    public static MinMaxLocResult minMaxLoc(Mat src, Mat mask) {
        MinMaxLocResult res = new MinMaxLocResult();
        long maskNativeObj=0;
        if (mask != null) {
            maskNativeObj=mask.nativeObj;
        }
        double resarr[] = n_minMaxLocManual(src.nativeObj, maskNativeObj);
        res.minVal=resarr[0];
        res.maxVal=resarr[1];
        res.minLoc.x=resarr[2];
        res.minLoc.y=resarr[3];
        res.maxLoc.x=resarr[4];
        res.maxLoc.y=resarr[5];
        return res;
    }

    //javadoc: minMaxLoc(src)
    public static MinMaxLocResult minMaxLoc(Mat src) {
        return minMaxLoc(src, null);
    }




    // C++:  void setNumThreads(int nthreads)
    private static native void setNumThreads_0(int nthreads);

    // C++:  int getNumThreads()
    private static native int getNumThreads_0();

    // C++:  int getThreadNum()
    private static native int getThreadNum_0();

    // C++:  String getBuildInformation()
    private static native String getBuildInformation_0();

    // C++:  int64 getTickCount()
    private static native long getTickCount_0();

    // C++:  double getTickFrequency()
    private static native double getTickFrequency_0();

    // C++:  int64 getCPUTickCount()
    private static native long getCPUTickCount_0();

    // C++:  int getNumberOfCPUs()
    private static native int getNumberOfCPUs_0();
    private static native double[] n_minMaxLocManual(long src_nativeObj, long mask_nativeObj);

}
