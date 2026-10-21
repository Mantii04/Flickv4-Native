package androidx.media3.exoplayer.mediacodec;

import P3.v;
import android.content.Context;
import android.graphics.Point;
import android.media.MediaCodecInfo;
import android.os.Build;
import android.util.Pair;
import android.util.Range;
import androidx.media3.common.ColorInfo;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.CodecSpecificDataUtil;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.DecoderReuseEvaluation;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import java.util.Objects;

@UnstableApi
/* loaded from: classes.dex */
public final class MediaCodecInfo {
    public static final int MAX_SUPPORTED_INSTANCES_UNKNOWN = -1;
    public static final String TAG = "MediaCodecInfo";
    public final boolean adaptive;
    public final MediaCodecInfo.CodecCapabilities capabilities;
    public final String codecMimeType;
    public final boolean detachedSurfaceSupported;
    public final boolean hardwareAccelerated;
    private final boolean isVideo;
    public final String mimeType;
    public final String name;
    public final boolean secure;
    public final boolean softwareOnly;
    public final boolean tunneling;
    public final boolean vendor;
    private float maxFrameRate = -3.4028235E38f;
    private int maxFrameRateWidth = -1;
    private int maxFrameRateHeight = -1;

    public MediaCodecInfo(String str, String str2, String str3, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z6, boolean z7, boolean z8, boolean z9, boolean z10, boolean z11, boolean z12) {
        this.name = (String) v.checkNotNull(str);
        this.mimeType = str2;
        this.codecMimeType = str3;
        this.capabilities = codecCapabilities;
        this.hardwareAccelerated = z6;
        this.softwareOnly = z7;
        this.vendor = z8;
        this.adaptive = z9;
        this.tunneling = z10;
        this.secure = z11;
        this.detachedSurfaceSupported = z12;
        this.isVideo = MimeTypes.isVideo(str2);
    }

    private static int adjustMaxInputChannelCount(String str, String str2, int i2) {
        if (i2 > 1 || ((Build.VERSION.SDK_INT >= 26 && i2 > 0) || MimeTypes.AUDIO_MPEG.equals(str2) || MimeTypes.AUDIO_AMR_NB.equals(str2) || MimeTypes.AUDIO_AMR_WB.equals(str2) || MimeTypes.AUDIO_AAC.equals(str2) || MimeTypes.AUDIO_VORBIS.equals(str2) || MimeTypes.AUDIO_OPUS.equals(str2) || MimeTypes.AUDIO_RAW.equals(str2) || MimeTypes.AUDIO_FLAC.equals(str2) || MimeTypes.AUDIO_ALAW.equals(str2) || MimeTypes.AUDIO_MLAW.equals(str2) || MimeTypes.AUDIO_MSGSM.equals(str2))) {
            return i2;
        }
        int i7 = MimeTypes.AUDIO_AC3.equals(str2) ? 6 : MimeTypes.AUDIO_E_AC3.equals(str2) ? 16 : 30;
        Log.w(TAG, "AssumedMaxChannelAdjustment: " + str + ", [" + i2 + " to " + i7 + "]");
        return i7;
    }

    private static Point alignVideoSize(MediaCodecInfo.VideoCapabilities videoCapabilities, int i2, int i7) {
        int widthAlignment = videoCapabilities.getWidthAlignment();
        int heightAlignment = videoCapabilities.getHeightAlignment();
        return new Point(Util.ceilDivide(i2, widthAlignment) * widthAlignment, Util.ceilDivide(i7, heightAlignment) * heightAlignment);
    }

    private static boolean areSizeAndRateSupported(MediaCodecInfo.VideoCapabilities videoCapabilities, int i2, int i7, double d7) {
        Range<Double> achievableFrameRatesFor;
        Point alignVideoSize = alignVideoSize(videoCapabilities, i2, i7);
        int i8 = alignVideoSize.x;
        int i9 = alignVideoSize.y;
        if (d7 == -1.0d || d7 < 1.0d) {
            return videoCapabilities.isSizeSupported(i8, i9);
        }
        double floor = Math.floor(d7);
        if (videoCapabilities.areSizeAndRateSupported(i8, i9, floor)) {
            return Build.VERSION.SDK_INT < 24 || (achievableFrameRatesFor = videoCapabilities.getAchievableFrameRatesFor(i8, i9)) == null || floor <= achievableFrameRatesFor.getUpper().doubleValue();
        }
        return false;
    }

    private float computeMaxSupportedFrameRate(int i2, int i7) {
        float f3 = 1024.0f;
        if (isVideoSizeAndRateSupportedV21(i2, i7, 1024.0f)) {
            return 1024.0f;
        }
        float f7 = 0.0f;
        while (true) {
            float f8 = f3 - f7;
            if (Math.abs(f8) <= 5.0f) {
                return f7;
            }
            float f9 = (f8 / 2.0f) + f7;
            if (isVideoSizeAndRateSupportedV21(i2, i7, f9)) {
                f7 = f9;
            } else {
                f3 = f9;
            }
        }
    }

    private static MediaCodecInfo.CodecProfileLevel[] estimateLegacyAc4ProfileLevels(Context context, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        MediaCodecInfo.AudioCapabilities audioCapabilities;
        int i2 = ((codecCapabilities == null || (audioCapabilities = codecCapabilities.getAudioCapabilities()) == null) ? 2 : audioCapabilities.getMaxInputChannelCount()) > 18 ? 16 : 8;
        return Util.isAutomotive(context) ? new MediaCodecInfo.CodecProfileLevel[]{MediaCodecUtil.createCodecProfileLevel(AnalyticsListener.EVENT_DRM_KEYS_REMOVED, i2)} : new MediaCodecInfo.CodecProfileLevel[]{MediaCodecUtil.createCodecProfileLevel(257, i2), MediaCodecUtil.createCodecProfileLevel(513, i2), MediaCodecUtil.createCodecProfileLevel(514, i2), MediaCodecUtil.createCodecProfileLevel(AnalyticsListener.EVENT_DRM_KEYS_REMOVED, i2), MediaCodecUtil.createCodecProfileLevel(AnalyticsListener.EVENT_PLAYER_RELEASED, i2)};
    }

    private static MediaCodecInfo.CodecProfileLevel[] estimateLegacyVp9ProfileLevels(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        MediaCodecInfo.VideoCapabilities videoCapabilities;
        int intValue = (codecCapabilities == null || (videoCapabilities = codecCapabilities.getVideoCapabilities()) == null) ? 0 : videoCapabilities.getBitrateRange().getUpper().intValue();
        return new MediaCodecInfo.CodecProfileLevel[]{MediaCodecUtil.createCodecProfileLevel(1, intValue >= 180000000 ? 1024 : intValue >= 120000000 ? 512 : intValue >= 60000000 ? 256 : intValue >= 30000000 ? 128 : intValue >= 18000000 ? 64 : intValue >= 12000000 ? 32 : intValue >= 7200000 ? 16 : intValue >= 3600000 ? 8 : intValue >= 1800000 ? 4 : intValue >= 800000 ? 2 : 1)};
    }

    private static boolean isAdaptive(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("adaptive-playback");
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x00c3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean isCodecProfileAndLevelSupported(android.content.Context r10, androidx.media3.common.Format r11, boolean r12) {
        /*
            Method dump skipped, instructions count: 272
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.exoplayer.mediacodec.MediaCodecInfo.isCodecProfileAndLevelSupported(android.content.Context, androidx.media3.common.Format, boolean):boolean");
    }

    private boolean isCompressedAudioBitDepthSupported(Format format) {
        return (Objects.equals(format.sampleMimeType, MimeTypes.AUDIO_FLAC) && format.pcmEncoding == 22 && Build.VERSION.SDK_INT < 34 && this.name.equals("c2.android.flac.decoder")) ? false : true;
    }

    private static boolean isDetachedSurfaceSupported(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return Build.VERSION.SDK_INT >= 35 && codecCapabilities != null && codecCapabilities.isFeatureSupported("detached-surface") && !needsDetachedSurfaceUnsupportedWorkaround();
    }

    private boolean isSampleMimeTypeSupported(Format format) {
        return this.mimeType.equals(format.sampleMimeType) || this.mimeType.equals(MediaCodecUtil.getAlternativeCodecMimeType(format));
    }

    private static boolean isSecure(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("secure-playback");
    }

    private static boolean isTunneling(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("tunneled-playback");
    }

    private void logAssumedSupport(String str) {
        StringBuilder t6 = A.i.t("AssumedSupport [", str, "] [");
        t6.append(this.name);
        t6.append(", ");
        t6.append(this.mimeType);
        t6.append("] [");
        t6.append(Util.DEVICE_DEBUG_INFO);
        t6.append("]");
        Log.d(TAG, t6.toString());
    }

    private void logNoSupport(String str) {
        StringBuilder t6 = A.i.t("NoSupport [", str, "] [");
        t6.append(this.name);
        t6.append(", ");
        t6.append(this.mimeType);
        t6.append("] [");
        t6.append(Util.DEVICE_DEBUG_INFO);
        t6.append("]");
        Log.d(TAG, t6.toString());
    }

    private static boolean needsAdaptationFlushWorkaround(String str) {
        return MimeTypes.AUDIO_OPUS.equals(str);
    }

    private static boolean needsAdaptationReconfigureWorkaround(String str) {
        return Build.MODEL.startsWith("SM-T230") && "OMX.MARVELL.VIDEO.HW.CODA7542DECODER".equals(str);
    }

    private static boolean needsDetachedSurfaceUnsupportedWorkaround() {
        String str = Build.MANUFACTURER;
        return str.equals("Xiaomi") || str.equals("OPPO") || str.equals("realme") || str.equals("motorola") || str.equals("LENOVO");
    }

    private static boolean needsProfileExcludedWorkaround(String str, int i2) {
        if (!MimeTypes.VIDEO_H265.equals(str) || 2 != i2) {
            return false;
        }
        String str2 = Build.DEVICE;
        return "sailfish".equals(str2) || "marlin".equals(str2);
    }

    private static boolean needsRotatedVerticalResolutionWorkaround(String str) {
        return ("OMX.MTK.VIDEO.DECODER.HEVC".equals(str) && "mcv5a".equals(Build.DEVICE)) ? false : true;
    }

    public static MediaCodecInfo newInstance(String str, String str2, String str3, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z6, boolean z7, boolean z8, boolean z9, boolean z10) {
        return new MediaCodecInfo(str, str2, str3, codecCapabilities, z6, z7, z8, (z9 || codecCapabilities == null || !isAdaptive(codecCapabilities)) ? false : true, codecCapabilities != null && isTunneling(codecCapabilities), z10 || (codecCapabilities != null && isSecure(codecCapabilities)), isDetachedSurfaceSupported(codecCapabilities));
    }

    public Point alignVideoSizeV21(int i2, int i7) {
        MediaCodecInfo.VideoCapabilities videoCapabilities;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.capabilities;
        if (codecCapabilities == null || (videoCapabilities = codecCapabilities.getVideoCapabilities()) == null) {
            return null;
        }
        return alignVideoSize(videoCapabilities, i2, i7);
    }

    public DecoderReuseEvaluation canReuseCodec(Format format, Format format2) {
        Format format3;
        Format format4;
        int i2;
        int i7 = !Objects.equals(format.sampleMimeType, format2.sampleMimeType) ? 8 : 0;
        if (this.isVideo) {
            if (format.rotationDegrees != format2.rotationDegrees) {
                i7 |= 1024;
            }
            boolean z6 = (format.width == format2.width && format.height == format2.height) ? false : true;
            if (!this.adaptive && z6) {
                i7 |= 512;
            }
            if ((!ColorInfo.isEquivalentToAssumedSdrDefault(format.colorInfo) || !ColorInfo.isEquivalentToAssumedSdrDefault(format2.colorInfo)) && !Objects.equals(format.colorInfo, format2.colorInfo)) {
                i7 |= 2048;
            }
            if (needsAdaptationReconfigureWorkaround(this.name) && !format.initializationDataEquals(format2)) {
                i7 |= 2;
            }
            int i8 = format.decodedWidth;
            if (i8 != -1 && (i2 = format.decodedHeight) != -1 && i8 == format2.decodedWidth && i2 == format2.decodedHeight && z6) {
                i7 |= 2;
            }
            if (i7 == 0 && Objects.equals(format2.sampleMimeType, MimeTypes.VIDEO_DOLBY_VISION)) {
                Pair<Integer, Integer> codecProfileAndLevel = CodecSpecificDataUtil.getCodecProfileAndLevel(format);
                Pair<Integer, Integer> codecProfileAndLevel2 = CodecSpecificDataUtil.getCodecProfileAndLevel(format2);
                if (codecProfileAndLevel == null || codecProfileAndLevel2 == null || !((Integer) codecProfileAndLevel.first).equals(codecProfileAndLevel2.first)) {
                    i7 |= 2;
                }
            }
            if (i7 == 0) {
                return new DecoderReuseEvaluation(this.name, format, format2, format.initializationDataEquals(format2) ? 3 : 2, 0);
            }
            format3 = format;
            format4 = format2;
        } else {
            format3 = format;
            format4 = format2;
            if (format3.channelCount != format4.channelCount) {
                i7 |= 4096;
            }
            if (format3.sampleRate != format4.sampleRate) {
                i7 |= 8192;
            }
            if (format3.pcmEncoding != format4.pcmEncoding) {
                i7 |= 16384;
            }
            if (i7 == 0 && (this.mimeType.equals(MimeTypes.AUDIO_AAC) || this.mimeType.equals(MimeTypes.AUDIO_AC4))) {
                Pair<Integer, Integer> codecProfileAndLevel3 = CodecSpecificDataUtil.getCodecProfileAndLevel(format3);
                Pair<Integer, Integer> codecProfileAndLevel4 = CodecSpecificDataUtil.getCodecProfileAndLevel(format4);
                if (codecProfileAndLevel3 != null && codecProfileAndLevel4 != null) {
                    int intValue = ((Integer) codecProfileAndLevel3.first).intValue();
                    int intValue2 = ((Integer) codecProfileAndLevel4.first).intValue();
                    if (intValue == 42 && intValue2 == 42) {
                        return new DecoderReuseEvaluation(this.name, format3, format4, 3, 0);
                    }
                    if (this.mimeType.equals(MimeTypes.AUDIO_AC4) && codecProfileAndLevel3.equals(codecProfileAndLevel4)) {
                        return new DecoderReuseEvaluation(this.name, format3, format4, 3, 0);
                    }
                }
            }
            if (i7 == 0 && (this.mimeType.equals(MimeTypes.AUDIO_E_AC3_JOC) || this.mimeType.equals(MimeTypes.AUDIO_E_AC3))) {
                return new DecoderReuseEvaluation(this.name, format3, format4, 3, 0);
            }
            if (!format3.initializationDataEquals(format4)) {
                i7 |= 32;
            }
            if (needsAdaptationFlushWorkaround(this.mimeType)) {
                i7 |= 2;
            }
            if (i7 == 0) {
                return new DecoderReuseEvaluation(this.name, format3, format4, 1, 0);
            }
        }
        return new DecoderReuseEvaluation(this.name, format3, format4, 0, i7);
    }

    public float getMaxSupportedFrameRate(int i2, int i7) {
        if (!this.isVideo) {
            return -3.4028235E38f;
        }
        float f3 = this.maxFrameRate;
        if (f3 != -3.4028235E38f && this.maxFrameRateWidth == i2 && this.maxFrameRateHeight == i7) {
            return f3;
        }
        float computeMaxSupportedFrameRate = computeMaxSupportedFrameRate(i2, i7);
        this.maxFrameRate = computeMaxSupportedFrameRate;
        this.maxFrameRateWidth = i2;
        this.maxFrameRateHeight = i7;
        return computeMaxSupportedFrameRate;
    }

    public int getMaxSupportedInstances() {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.capabilities;
        if (codecCapabilities == null) {
            return -1;
        }
        return codecCapabilities.getMaxSupportedInstances();
    }

    public MediaCodecInfo.CodecProfileLevel[] getProfileLevels() {
        MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArr;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.capabilities;
        return (codecCapabilities == null || (codecProfileLevelArr = codecCapabilities.profileLevels) == null) ? new MediaCodecInfo.CodecProfileLevel[0] : codecProfileLevelArr;
    }

    public boolean isAudioChannelCountSupportedV21(int i2) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.capabilities;
        if (codecCapabilities == null) {
            logNoSupport("channelCount.caps");
            return false;
        }
        MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
        if (audioCapabilities == null) {
            logNoSupport("channelCount.aCaps");
            return false;
        }
        if (adjustMaxInputChannelCount(this.name, this.mimeType, audioCapabilities.getMaxInputChannelCount()) >= i2) {
            return true;
        }
        logNoSupport(A.i.f(i2, "channelCount.support, "));
        return false;
    }

    public boolean isAudioSampleRateSupportedV21(int i2) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.capabilities;
        if (codecCapabilities == null) {
            logNoSupport("sampleRate.caps");
            return false;
        }
        MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
        if (audioCapabilities == null) {
            logNoSupport("sampleRate.aCaps");
            return false;
        }
        if (audioCapabilities.isSampleRateSupported(i2)) {
            return true;
        }
        logNoSupport(A.i.f(i2, "sampleRate.support, "));
        return false;
    }

    public boolean isFormatFunctionallySupported(Context context, Format format) {
        return isSampleMimeTypeSupported(format) && isCodecProfileAndLevelSupported(context, format, false) && isCompressedAudioBitDepthSupported(format);
    }

    public boolean isFormatSupported(Context context, Format format) {
        int i2;
        int i7;
        if (!isSampleMimeTypeSupported(format) || !isCodecProfileAndLevelSupported(context, format, true) || !isCompressedAudioBitDepthSupported(format)) {
            return false;
        }
        if (!this.isVideo) {
            int i8 = format.sampleRate;
            return (i8 == -1 || isAudioSampleRateSupportedV21(i8)) && ((i2 = format.channelCount) == -1 || isAudioChannelCountSupportedV21(i2));
        }
        int i9 = format.width;
        if (i9 <= 0 || (i7 = format.height) <= 0) {
            return true;
        }
        return isVideoSizeAndRateSupportedV21(i9, i7, format.frameRate);
    }

    public boolean isHdr10PlusOutOfBandMetadataSupported() {
        if (Build.VERSION.SDK_INT >= 29 && MimeTypes.VIDEO_VP9.equals(this.mimeType)) {
            for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : getProfileLevels()) {
                if (codecProfileLevel.profile == 16384) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean isSeamlessAdaptationSupported(Format format) {
        if (this.isVideo) {
            return this.adaptive;
        }
        Pair<Integer, Integer> codecProfileAndLevel = CodecSpecificDataUtil.getCodecProfileAndLevel(format);
        return codecProfileAndLevel != null && ((Integer) codecProfileAndLevel.first).intValue() == 42;
    }

    public boolean isVideoSizeAndRateSupportedV21(int i2, int i7, double d7) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.capabilities;
        if (codecCapabilities == null) {
            logNoSupport("sizeAndRate.caps");
            return false;
        }
        MediaCodecInfo.VideoCapabilities videoCapabilities = codecCapabilities.getVideoCapabilities();
        if (videoCapabilities == null) {
            logNoSupport("sizeAndRate.vCaps");
            return false;
        }
        if (Build.VERSION.SDK_INT >= 29) {
            int areResolutionAndFrameRateCovered = MediaCodecPerformancePointCoverageProvider.areResolutionAndFrameRateCovered(videoCapabilities, i2, i7, d7);
            if (areResolutionAndFrameRateCovered == 2) {
                return true;
            }
            if (areResolutionAndFrameRateCovered == 1) {
                StringBuilder p6 = A.i.p(i2, i7, "sizeAndRate.cover, ", "x", "@");
                p6.append(d7);
                logNoSupport(p6.toString());
                return false;
            }
        }
        if (!areSizeAndRateSupported(videoCapabilities, i2, i7, d7)) {
            if (i2 >= i7 || !needsRotatedVerticalResolutionWorkaround(this.name) || !areSizeAndRateSupported(videoCapabilities, i7, i2, d7)) {
                StringBuilder p7 = A.i.p(i2, i7, "sizeAndRate.support, ", "x", "@");
                p7.append(d7);
                logNoSupport(p7.toString());
                return false;
            }
            StringBuilder p8 = A.i.p(i2, i7, "sizeAndRate.rotated, ", "x", "@");
            p8.append(d7);
            logAssumedSupport(p8.toString());
        }
        return true;
    }

    public String toString() {
        return this.name;
    }
}
