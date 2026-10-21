package androidx.media3.common.util;

import Q3.C0248s;
import android.annotation.SuppressLint;
import android.media.MediaFormat;
import android.os.Build;
import androidx.media3.common.ColorInfo;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.Objects;

@UnstableApi
/* loaded from: classes.dex */
public final class MediaFormatUtil {
    public static final String KEY_MAX_BIT_RATE = "max-bitrate";
    public static final String KEY_PCM_ENCODING_EXTENDED = "exo-pcm-encoding-int";
    public static final String KEY_PIXEL_WIDTH_HEIGHT_RATIO_FLOAT = "exo-pixel-width-height-ratio-float";
    private static final int MAX_POWER_OF_TWO_INT = 1073741824;

    private MediaFormatUtil() {
    }

    @SuppressLint({"InlinedApi"})
    public static Format createFormatFromMediaFormat(MediaFormat mediaFormat) {
        int i2 = 0;
        Format.Builder pcmEncoding = new Format.Builder().setSampleMimeType(mediaFormat.getString("mime")).setLanguage(mediaFormat.getString("language")).setPeakBitrate(getInteger(mediaFormat, KEY_MAX_BIT_RATE, -1)).setAverageBitrate(getInteger(mediaFormat, "bitrate", -1)).setCodecs(getCodecString(mediaFormat)).setFrameRate(getFloatFromIntOrFloat(mediaFormat, "frame-rate", -1.0f)).setWidth(getInteger(mediaFormat, "width", -1)).setHeight(getInteger(mediaFormat, "height", -1)).setPixelWidthHeightRatio(getPixelWidthHeightRatio(mediaFormat, 1.0f)).setMaxInputSize(getInteger(mediaFormat, "max-input-size", -1)).setRotationDegrees(getInteger(mediaFormat, "rotation-degrees", 0)).setColorInfo(getColorInfo(mediaFormat)).setSampleRate(getInteger(mediaFormat, "sample-rate", -1)).setChannelCount(getInteger(mediaFormat, "channel-count", -1)).setPcmEncoding(getInteger(mediaFormat, "pcm-encoding", -1));
        C0248s c0248s = new C0248s();
        while (true) {
            ByteBuffer byteBuffer = mediaFormat.getByteBuffer("csd-" + i2);
            if (byteBuffer == null) {
                break;
            }
            byte[] bArr = new byte[byteBuffer.remaining()];
            byteBuffer.get(bArr);
            byteBuffer.rewind();
            c0248s.add((Object) bArr);
            i2++;
        }
        pcmEncoding.setInitializationData(c0248s.build());
        if (mediaFormat.containsKey("track-id")) {
            pcmEncoding.setId(mediaFormat.getInteger("track-id"));
        }
        return pcmEncoding.build();
    }

    @SuppressLint({"InlinedApi"})
    public static MediaFormat createMediaFormatFromFormat(Format format) {
        MediaFormat mediaFormat = new MediaFormat();
        maybeSetInteger(mediaFormat, "bitrate", format.bitrate);
        maybeSetInteger(mediaFormat, KEY_MAX_BIT_RATE, format.peakBitrate);
        maybeSetInteger(mediaFormat, "channel-count", format.channelCount);
        int audioTrackChannelConfig = Util.getAudioTrackChannelConfig(format.channelCount);
        if (audioTrackChannelConfig != 0) {
            mediaFormat.setInteger("channel-mask", audioTrackChannelConfig);
        }
        maybeSetColorInfo(mediaFormat, format.colorInfo);
        maybeSetString(mediaFormat, "mime", format.sampleMimeType);
        maybeSetString(mediaFormat, "codecs-string", format.codecs);
        maybeSetFloat(mediaFormat, "frame-rate", format.frameRate);
        maybeSetInteger(mediaFormat, "width", format.width);
        maybeSetInteger(mediaFormat, "height", format.height);
        setCsdBuffers(mediaFormat, format.initializationData);
        maybeSetPcmEncoding(mediaFormat, format.pcmEncoding);
        maybeSetString(mediaFormat, "language", format.language);
        maybeSetInteger(mediaFormat, "max-input-size", format.maxInputSize);
        maybeSetInteger(mediaFormat, "sample-rate", format.sampleRate);
        maybeSetInteger(mediaFormat, "caption-service-number", format.accessibilityChannel);
        mediaFormat.setInteger("rotation-degrees", format.rotationDegrees);
        int i2 = format.selectionFlags;
        setBooleanAsInt(mediaFormat, "is-autoselect", i2 & 4);
        setBooleanAsInt(mediaFormat, "is-default", i2 & 1);
        setBooleanAsInt(mediaFormat, "is-forced-subtitle", i2 & 2);
        mediaFormat.setInteger("encoder-delay", format.encoderDelay);
        mediaFormat.setInteger("encoder-padding", format.encoderPadding);
        maybeSetPixelAspectRatio(mediaFormat, format.pixelWidthHeightRatio);
        String str = format.id;
        if (str != null) {
            try {
                mediaFormat.setInteger("track-id", Integer.parseInt(str));
            } catch (NumberFormatException unused) {
            }
        }
        return mediaFormat;
    }

    public static byte[] getArray(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[byteBuffer.remaining()];
        byteBuffer.get(bArr);
        return bArr;
    }

    @SuppressLint({"InlinedApi"})
    private static String getCodecString(MediaFormat mediaFormat) {
        return (Objects.equals(mediaFormat.getString("mime"), MimeTypes.VIDEO_H263) && mediaFormat.containsKey("profile") && mediaFormat.containsKey(FirebaseAnalytics.Param.LEVEL)) ? CodecSpecificDataUtil.buildH263CodecString(mediaFormat.getInteger("profile"), mediaFormat.getInteger(FirebaseAnalytics.Param.LEVEL)) : (Objects.equals(mediaFormat.getString("mime"), MimeTypes.VIDEO_DOLBY_VISION) && mediaFormat.containsKey("profile") && mediaFormat.containsKey(FirebaseAnalytics.Param.LEVEL)) ? CodecSpecificDataUtil.buildDolbyVisionCodecString(CodecSpecificDataUtil.dolbyVisionConstantToProfileNumber(mediaFormat.getInteger("profile")), CodecSpecificDataUtil.dolbyVisionConstantToLevelNumber(mediaFormat.getInteger(FirebaseAnalytics.Param.LEVEL))) : getString(mediaFormat, "codecs-string", null);
    }

    public static ColorInfo getColorInfo(MediaFormat mediaFormat) {
        if (Build.VERSION.SDK_INT < 24) {
            return null;
        }
        int integer = getInteger(mediaFormat, "color-standard", -1);
        int integer2 = getInteger(mediaFormat, "color-range", -1);
        int integer3 = getInteger(mediaFormat, "color-transfer", -1);
        ByteBuffer byteBuffer = mediaFormat.getByteBuffer("hdr-static-info");
        byte[] array = byteBuffer != null ? getArray(byteBuffer) : null;
        if (!isValidColorSpace(integer)) {
            integer = -1;
        }
        if (!isValidColorRange(integer2)) {
            integer2 = -1;
        }
        if (!isValidColorTransfer(integer3)) {
            integer3 = -1;
        }
        if (integer == -1 && integer2 == -1 && integer3 == -1 && array == null) {
            return null;
        }
        return new ColorInfo.Builder().setColorSpace(integer).setColorRange(integer2).setColorTransfer(integer3).setHdrStaticInfo(array).build();
    }

    public static float getFloat(MediaFormat mediaFormat, String str, float f3) {
        return mediaFormat.containsKey(str) ? mediaFormat.getFloat(str) : f3;
    }

    public static float getFloatFromIntOrFloat(MediaFormat mediaFormat, String str, float f3) {
        int valueTypeForKey;
        if (!mediaFormat.containsKey(str)) {
            return f3;
        }
        if (Build.VERSION.SDK_INT >= 29) {
            valueTypeForKey = mediaFormat.getValueTypeForKey(str);
            return valueTypeForKey == 3 ? mediaFormat.getFloat(str) : mediaFormat.getInteger(str);
        }
        try {
            return mediaFormat.getFloat(str);
        } catch (ClassCastException unused) {
            return mediaFormat.getInteger(str);
        }
    }

    public static int getInteger(MediaFormat mediaFormat, String str, int i2) {
        return mediaFormat.containsKey(str) ? mediaFormat.getInteger(str) : i2;
    }

    @SuppressLint({"InlinedApi"})
    private static float getPixelWidthHeightRatio(MediaFormat mediaFormat, float f3) {
        return (mediaFormat.containsKey("sar-width") && mediaFormat.containsKey("sar-height")) ? mediaFormat.getInteger("sar-width") / mediaFormat.getInteger("sar-height") : f3;
    }

    public static String getString(MediaFormat mediaFormat, String str, String str2) {
        return mediaFormat.containsKey(str) ? mediaFormat.getString(str) : str2;
    }

    public static Integer getTimeLapseFrameRate(MediaFormat mediaFormat) {
        if (mediaFormat.containsKey("time-lapse-enable") && mediaFormat.getInteger("time-lapse-enable") > 0 && mediaFormat.containsKey("time-lapse-fps")) {
            return Integer.valueOf(mediaFormat.getInteger("time-lapse-fps"));
        }
        return null;
    }

    public static boolean isAudioFormat(MediaFormat mediaFormat) {
        return MimeTypes.isAudio(mediaFormat.getString("mime"));
    }

    private static boolean isValidColorRange(int i2) {
        return i2 == 2 || i2 == 1 || i2 == -1;
    }

    private static boolean isValidColorSpace(int i2) {
        return i2 == 2 || i2 == 1 || i2 == 6 || i2 == -1;
    }

    private static boolean isValidColorTransfer(int i2) {
        return i2 == 1 || i2 == 3 || i2 == 2 || i2 == 6 || i2 == 7 || i2 == -1;
    }

    public static boolean isVideoFormat(MediaFormat mediaFormat) {
        return MimeTypes.isVideo(mediaFormat.getString("mime"));
    }

    public static void maybeSetByteBuffer(MediaFormat mediaFormat, String str, byte[] bArr) {
        if (bArr != null) {
            mediaFormat.setByteBuffer(str, ByteBuffer.wrap(bArr));
        }
    }

    public static void maybeSetColorInfo(MediaFormat mediaFormat, ColorInfo colorInfo) {
        if (colorInfo != null) {
            maybeSetInteger(mediaFormat, "color-transfer", colorInfo.colorTransfer);
            maybeSetInteger(mediaFormat, "color-standard", colorInfo.colorSpace);
            maybeSetInteger(mediaFormat, "color-range", colorInfo.colorRange);
            maybeSetByteBuffer(mediaFormat, "hdr-static-info", colorInfo.hdrStaticInfo);
        }
    }

    public static void maybeSetFloat(MediaFormat mediaFormat, String str, float f3) {
        if (f3 != -1.0f) {
            mediaFormat.setFloat(str, f3);
        }
    }

    public static void maybeSetInteger(MediaFormat mediaFormat, String str, int i2) {
        if (i2 != -1) {
            mediaFormat.setInteger(str, i2);
        }
    }

    @SuppressLint({"InlinedApi"})
    private static void maybeSetPcmEncoding(MediaFormat mediaFormat, int i2) {
        int i7;
        if (i2 == -1) {
            return;
        }
        maybeSetInteger(mediaFormat, KEY_PCM_ENCODING_EXTENDED, i2);
        if (i2 != 0) {
            i7 = 2;
            if (i2 != 2) {
                i7 = 3;
                if (i2 != 3) {
                    i7 = 4;
                    if (i2 != 4) {
                        i7 = 21;
                        if (i2 != 21) {
                            i7 = 22;
                            if (i2 != 22) {
                                return;
                            }
                        }
                    }
                }
            }
        } else {
            i7 = 0;
        }
        mediaFormat.setInteger("pcm-encoding", i7);
    }

    @SuppressLint({"InlinedApi"})
    private static void maybeSetPixelAspectRatio(MediaFormat mediaFormat, float f3) {
        int i2;
        mediaFormat.setFloat(KEY_PIXEL_WIDTH_HEIGHT_RATIO_FLOAT, f3);
        int i7 = 1073741824;
        if (f3 < 1.0f) {
            i7 = (int) (f3 * 1073741824);
            i2 = 1073741824;
        } else if (f3 > 1.0f) {
            i2 = (int) (1073741824 / f3);
        } else {
            i7 = 1;
            i2 = 1;
        }
        mediaFormat.setInteger("sar-width", i7);
        mediaFormat.setInteger("sar-height", i2);
    }

    public static void maybeSetString(MediaFormat mediaFormat, String str, String str2) {
        if (str2 != null) {
            mediaFormat.setString(str, str2);
        }
    }

    private static void setBooleanAsInt(MediaFormat mediaFormat, String str, int i2) {
        mediaFormat.setInteger(str, i2 != 0 ? 1 : 0);
    }

    public static void setCsdBuffers(MediaFormat mediaFormat, List<byte[]> list) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            mediaFormat.setByteBuffer(A.i.f(i2, "csd-"), ByteBuffer.wrap(list.get(i2)));
        }
    }
}
