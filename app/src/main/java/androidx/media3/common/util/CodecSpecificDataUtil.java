package androidx.media3.common.util;

import P3.v;
import android.annotation.SuppressLint;
import android.util.Pair;
import androidx.media3.common.ColorInfo;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.exoplayer.DefaultRenderersFactory;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.media3.exoplayer.source.ProgressiveMediaSource;
import com.google.common.collect.ImmutableList;
import com.uwetrottmann.trakt5.TraktV2;
import cz.msebera.android.httpclient.impl.client.cache.CacheConfig;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import okhttp3.internal.http2.Http2Connection;

@SuppressLint({"InlinedApi"})
@UnstableApi
/* loaded from: classes.dex */
public final class CodecSpecificDataUtil {
    private static final String CODEC_ID_AC4 = "ac-4";
    private static final String CODEC_ID_APV1 = "apv1";
    private static final String CODEC_ID_AV01 = "av01";
    private static final String CODEC_ID_AVC1 = "avc1";
    private static final String CODEC_ID_AVC2 = "avc2";
    private static final String CODEC_ID_H263 = "s263";
    private static final String CODEC_ID_HEV1 = "hev1";
    private static final String CODEC_ID_HVC1 = "hvc1";
    private static final String CODEC_ID_IAMF = "iamf";
    private static final String CODEC_ID_MP4A = "mp4a";
    private static final String CODEC_ID_VP09 = "vp09";
    private static final int EXTENDED_PAR = 15;
    private static final int OBU_IA_CODEC_CONFIG = 0;
    private static final int OBU_IA_SEQUENCE_HEADER = 31;
    private static final int RECTANGULAR = 0;
    private static final String TAG = "CodecSpecificDataUtil";
    private static final int VISUAL_OBJECT_LAYER = 1;
    private static final int VISUAL_OBJECT_LAYER_START = 32;
    private static final byte[] NAL_START_CODE = {0, 0, 0, 1};
    private static final String[] HEVC_GENERAL_PROFILE_SPACE_STRINGS = {"", "A", "B", "C"};
    private static final Pattern PROFILE_PATTERN = Pattern.compile("^\\D?(\\d+)$");

    private CodecSpecificDataUtil() {
    }

    private static int ac4BitstreamAndPresentationVersionsToProfileConst(int i2, int i7) {
        if (i2 == 0) {
            return i7 == 0 ? 257 : -1;
        }
        if (i2 == 1) {
            if (i7 == 0) {
                return 513;
            }
            return i7 == 1 ? 514 : -1;
        }
        if (i2 != 2) {
            return -1;
        }
        if (i7 == 1) {
            return AnalyticsListener.EVENT_DRM_KEYS_REMOVED;
        }
        if (i7 == 2) {
            return AnalyticsListener.EVENT_PLAYER_RELEASED;
        }
        return -1;
    }

    private static int ac4LevelNumberToConst(int i2) {
        if (i2 == 0) {
            return 1;
        }
        if (i2 == 1) {
            return 2;
        }
        if (i2 == 2) {
            return 4;
        }
        if (i2 != 3) {
            return i2 != 4 ? -1 : 16;
        }
        return 8;
    }

    private static int av1LevelNumberToConst(int i2) {
        switch (i2) {
            case 0:
                return 1;
            case 1:
                return 2;
            case 2:
                return 4;
            case 3:
                return 8;
            case 4:
                return 16;
            case 5:
                return 32;
            case 6:
                return 64;
            case 7:
                return 128;
            case 8:
                return 256;
            case 9:
                return 512;
            case 10:
                return 1024;
            case 11:
                return 2048;
            case 12:
                return 4096;
            case 13:
                return 8192;
            case 14:
                return 16384;
            case 15:
                return 32768;
            case 16:
                return 65536;
            case 17:
                return 131072;
            case 18:
                return 262144;
            case 19:
                return 524288;
            case 20:
                return ProgressiveMediaSource.DEFAULT_LOADING_CHECK_INTERVAL_BYTES;
            case 21:
                return 2097152;
            case 22:
                return 4194304;
            case 23:
                return 8388608;
            default:
                return -1;
        }
    }

    private static int avcLevelNumberToConst(int i2) {
        switch (i2) {
            case 10:
                return 1;
            case 11:
                return 4;
            case 12:
                return 8;
            case 13:
                return 16;
            default:
                switch (i2) {
                    case 20:
                        return 32;
                    case 21:
                        return 64;
                    case 22:
                        return 128;
                    default:
                        switch (i2) {
                            case 30:
                                return 256;
                            case 31:
                                return 512;
                            case 32:
                                return 1024;
                            default:
                                switch (i2) {
                                    case 40:
                                        return 2048;
                                    case 41:
                                        return 4096;
                                    case 42:
                                        return 8192;
                                    default:
                                        switch (i2) {
                                            case DefaultRenderersFactory.MAX_DROPPED_VIDEO_FRAME_COUNT_TO_NOTIFY /* 50 */:
                                                return 16384;
                                            case 51:
                                                return 32768;
                                            case 52:
                                                return 65536;
                                            default:
                                                return -1;
                                        }
                                }
                        }
                }
        }
    }

    private static int avcProfileNumberToConst(int i2) {
        if (i2 == 66) {
            return 1;
        }
        if (i2 == 77) {
            return 2;
        }
        if (i2 == 88) {
            return 4;
        }
        if (i2 == 100) {
            return 8;
        }
        if (i2 == 110) {
            return 16;
        }
        if (i2 != 122) {
            return i2 != 244 ? -1 : 64;
        }
        return 32;
    }

    public static String buildApvCodecString(byte[] bArr) {
        v.checkArgument(bArr.length >= 17, "Invalid APV CSD length: %s", bArr.length);
        byte b7 = bArr[0];
        v.checkArgument(b7 == 1, "Invalid APV CSD version: %s", (int) b7);
        return Util.formatInvariant("apv1.apvf%d.apvl%d.apvb%d", Integer.valueOf(bArr[5]), Integer.valueOf(bArr[6]), Integer.valueOf(bArr[7]));
    }

    public static String buildAvcCodecString(int i2, int i7, int i8) {
        return String.format("avc1.%02X%02X%02X", Integer.valueOf(i2), Integer.valueOf(i7), Integer.valueOf(i8));
    }

    public static List<byte[]> buildCea708InitializationData(boolean z6) {
        return Collections.singletonList(z6 ? new byte[]{1} : new byte[]{0});
    }

    public static String buildDolbyVisionCodecString(int i2, int i7) {
        return i2 > 9 ? Util.formatInvariant("dvh1.%02d.%02d", Integer.valueOf(i2), Integer.valueOf(i7)) : i2 > 8 ? Util.formatInvariant("dvav.%02d.%02d", Integer.valueOf(i2), Integer.valueOf(i7)) : Util.formatInvariant("dvhe.%02d.%02d", Integer.valueOf(i2), Integer.valueOf(i7));
    }

    public static byte[] buildDolbyVisionInitializationData(int i2, int i7) {
        int i8;
        int i9;
        byte[] bArr = new byte[24];
        if (i2 == 8) {
            i8 = 4;
            i9 = 0;
        } else if (i2 == 9) {
            i8 = 2;
            i9 = 1;
        } else {
            i8 = 0;
            i9 = 0;
        }
        bArr[0] = 1;
        bArr[1] = 0;
        byte b7 = (byte) ((i2 & 127) << 1);
        bArr[2] = b7;
        bArr[2] = (byte) ((b7 | ((i7 >> 5) & 1)) & 255);
        byte b8 = (byte) ((i7 & 31) << 3);
        bArr[3] = b8;
        byte b9 = (byte) (b8 | 4);
        bArr[3] = b9;
        byte b10 = b9;
        bArr[3] = b10;
        bArr[3] = (byte) (b10 | 1);
        byte b11 = (byte) (i8 << 4);
        bArr[4] = b11;
        bArr[4] = (byte) (b11 | (i9 << 2));
        return bArr;
    }

    public static String buildH263CodecString(int i2, int i7) {
        return Util.formatInvariant("s263.%d.%d", Integer.valueOf(i2), Integer.valueOf(i7));
    }

    public static String buildHevcCodecString(int i2, boolean z6, int i7, int i8, int[] iArr, int i9) {
        StringBuilder sb = new StringBuilder(Util.formatInvariant("hvc1.%s%d.%X.%c%d", HEVC_GENERAL_PROFILE_SPACE_STRINGS[i2], Integer.valueOf(i7), Integer.valueOf(i8), Character.valueOf(z6 ? 'H' : 'L'), Integer.valueOf(i9)));
        int length = iArr.length;
        while (length > 0 && iArr[length - 1] == 0) {
            length--;
        }
        for (int i10 = 0; i10 < length; i10++) {
            sb.append(String.format(".%02X", Integer.valueOf(iArr[i10])));
        }
        return sb.toString();
    }

    public static String buildIamfCodecString(byte[] bArr) {
        ParsableByteArray parsableByteArray = new ParsableByteArray(bArr);
        String str = null;
        String str2 = null;
        while (parsableByteArray.bytesLeft() > 0 && (str == null || str2 == null)) {
            int readUnsignedByte = parsableByteArray.readUnsignedByte();
            int i2 = readUnsignedByte >> 3;
            boolean z6 = (readUnsignedByte & 2) != 0;
            boolean z7 = (readUnsignedByte & 1) != 0;
            int readUnsignedLeb128ToInt = parsableByteArray.readUnsignedLeb128ToInt();
            if (i2 > 4 && i2 < 24 && z6) {
                parsableByteArray.skipLeb128();
                parsableByteArray.skipLeb128();
            }
            if (z7) {
                parsableByteArray.skipBytes(parsableByteArray.readUnsignedLeb128ToInt());
            }
            int position = parsableByteArray.getPosition() + readUnsignedLeb128ToInt;
            if (i2 == 31) {
                parsableByteArray.skipBytes(4);
                str = Util.formatInvariant("iamf.%03X.%03X", Integer.valueOf(parsableByteArray.readUnsignedByte()), Integer.valueOf(parsableByteArray.readUnsignedByte()));
            } else if (i2 == 0) {
                parsableByteArray.skipLeb128();
                str2 = parsableByteArray.readString(4);
                if (str2.equals(CODEC_ID_MP4A)) {
                    parsableByteArray.skipLeb128();
                    parsableByteArray.skipBytes(2);
                    ParsableBitArray parsableBitArray = new ParsableBitArray();
                    parsableBitArray.reset(parsableByteArray);
                    int readBits = parsableBitArray.readBits(5);
                    if (readBits == 31) {
                        readBits = parsableBitArray.readBits(6) + 32;
                    }
                    str2 = str2 + ".40." + readBits;
                }
            }
            parsableByteArray.setPosition(position);
        }
        if (str == null || str2 == null) {
            return null;
        }
        return A.i.C(str, ".", str2);
    }

    public static byte[] buildNalUnit(byte[] bArr, int i2, int i7) {
        byte[] bArr2 = NAL_START_CODE;
        byte[] bArr3 = new byte[bArr2.length + i7];
        System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
        System.arraycopy(bArr, i2, bArr3, bArr2.length, i7);
        return bArr3;
    }

    public static ImmutableList<byte[]> buildVp9CodecPrivateInitializationData(byte b7, byte b8, byte b9, byte b10) {
        return ImmutableList.of(new byte[]{1, 1, b7, 2, 1, b8, 3, 1, b9, 4, 1, b10});
    }

    public static int dolbyVisionConstantToLevelNumber(int i2) {
        int i7 = 1;
        if (i2 != 1) {
            i7 = 2;
            if (i2 != 2) {
                switch (i2) {
                    case 4:
                        return 3;
                    case 8:
                        return 4;
                    case 16:
                        return 5;
                    case 32:
                        return 6;
                    case 64:
                        return 7;
                    case 128:
                        return 8;
                    case 256:
                        return 9;
                    case 512:
                        return 10;
                    case 1024:
                        return 11;
                    case 2048:
                        return 12;
                    case 4096:
                        return 13;
                    default:
                        throw new IllegalArgumentException(A.i.f(i2, "Unknown Dolby Vision level: "));
                }
            }
        }
        return i7;
    }

    public static int dolbyVisionConstantToProfileNumber(int i2) {
        if (i2 == 1) {
            return 0;
        }
        if (i2 == 2) {
            return 1;
        }
        if (i2 == 4) {
            return 2;
        }
        if (i2 == 8) {
            return 3;
        }
        if (i2 == 16) {
            return 4;
        }
        if (i2 == 32) {
            return 5;
        }
        if (i2 == 64) {
            return 6;
        }
        if (i2 == 128) {
            return 7;
        }
        if (i2 == 256) {
            return 8;
        }
        if (i2 == 512) {
            return 9;
        }
        if (i2 == 1024) {
            return 10;
        }
        throw new IllegalArgumentException(A.i.f(i2, "Unknown Dolby Vision profile: "));
    }

    private static Integer dolbyVisionStringToLevel(String str) {
        if (str == null) {
            return null;
        }
        switch (str) {
        }
        return null;
    }

    private static Integer dolbyVisionStringToProfile(String str) {
        if (str == null) {
            return null;
        }
        switch (str) {
        }
        return null;
    }

    private static int findNalStartCode(byte[] bArr, int i2) {
        int length = bArr.length - NAL_START_CODE.length;
        while (i2 <= length) {
            if (isNalStartCode(bArr, i2)) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    private static Pair<Integer, Integer> getAacCodecProfileAndLevel(String str, String[] strArr) {
        int mp4aAudioObjectTypeToProfile;
        if (strArr.length != 3) {
            A.i.z("Ignoring malformed MP4A codec string: ", str, TAG);
            return null;
        }
        try {
            if (MimeTypes.AUDIO_AAC.equals(MimeTypes.getMimeTypeFromMp4ObjectType(Integer.parseInt(strArr[1], 16))) && (mp4aAudioObjectTypeToProfile = mp4aAudioObjectTypeToProfile(Integer.parseInt(strArr[2]))) != -1) {
                return new Pair<>(Integer.valueOf(mp4aAudioObjectTypeToProfile), 0);
            }
        } catch (NumberFormatException unused) {
            A.i.z("Ignoring malformed MP4A codec string: ", str, TAG);
        }
        return null;
    }

    private static Pair<Integer, Integer> getAc4CodecProfileAndLevel(String str, String[] strArr) {
        if (strArr.length != 4) {
            A.i.z("Ignoring malformed AC-4 codec string: ", str, TAG);
            return null;
        }
        try {
            int parseInt = Integer.parseInt(strArr[1]);
            int parseInt2 = Integer.parseInt(strArr[2]);
            int parseInt3 = Integer.parseInt(strArr[3]);
            int ac4BitstreamAndPresentationVersionsToProfileConst = ac4BitstreamAndPresentationVersionsToProfileConst(parseInt, parseInt2);
            if (ac4BitstreamAndPresentationVersionsToProfileConst != -1) {
                int ac4LevelNumberToConst = ac4LevelNumberToConst(parseInt3);
                if (ac4LevelNumberToConst != -1) {
                    return new Pair<>(Integer.valueOf(ac4BitstreamAndPresentationVersionsToProfileConst), Integer.valueOf(ac4LevelNumberToConst));
                }
                A.i.v(parseInt3, "Unknown AC-4 level: ", TAG);
                return null;
            }
            Log.w(TAG, "Unknown AC-4 profile: " + parseInt + "." + parseInt2);
            return null;
        } catch (NumberFormatException unused) {
            A.i.z("Ignoring malformed AC-4 codec string: ", str, TAG);
            return null;
        }
    }

    private static Pair<Integer, Integer> getApvProfileAndLevel(String str, String[] strArr) {
        int i2;
        if (strArr.length < 4) {
            A.i.z("Ignoring malformed APV codec string: ", str, TAG);
            return null;
        }
        try {
            int parseInt = Integer.parseInt(strArr[1].substring(4));
            int parseInt2 = Integer.parseInt(strArr[2].substring(4));
            int parseInt3 = Integer.parseInt(strArr[3].substring(4));
            if (parseInt == 33) {
                i2 = 1;
            } else {
                if (parseInt != 44) {
                    A.i.v(parseInt, "Ignoring invalid APV profile: ", TAG);
                    return null;
                }
                i2 = 8192;
            }
            int i7 = (parseInt2 / 30) * 2;
            if (parseInt2 % 30 == 0) {
                i7--;
            }
            return new Pair<>(Integer.valueOf(i2), Integer.valueOf((1 << parseInt3) | (256 << (i7 - 1))));
        } catch (NumberFormatException e3) {
            Log.w(TAG, "Ignoring malformed APV codec string: " + str, e3);
            return null;
        }
    }

    private static Pair<Integer, Integer> getAv1ProfileAndLevel(String str, String[] strArr, ColorInfo colorInfo) {
        int i2;
        if (strArr.length < 4) {
            A.i.z("Ignoring malformed AV1 codec string: ", str, TAG);
            return null;
        }
        try {
            int parseInt = Integer.parseInt(strArr[1]);
            int parseInt2 = Integer.parseInt(strArr[2].substring(0, 2));
            int parseInt3 = Integer.parseInt(strArr[3]);
            if (parseInt != 0) {
                A.i.v(parseInt, "Unknown AV1 profile: ", TAG);
                return null;
            }
            if (parseInt3 != 8 && parseInt3 != 10) {
                A.i.v(parseInt3, "Unknown AV1 bit depth: ", TAG);
                return null;
            }
            int i7 = parseInt3 != 8 ? (colorInfo == null || !(colorInfo.hdrStaticInfo != null || (i2 = colorInfo.colorTransfer) == 7 || i2 == 6)) ? 2 : 4096 : 1;
            int av1LevelNumberToConst = av1LevelNumberToConst(parseInt2);
            if (av1LevelNumberToConst != -1) {
                return new Pair<>(Integer.valueOf(i7), Integer.valueOf(av1LevelNumberToConst));
            }
            A.i.v(parseInt2, "Unknown AV1 level: ", TAG);
            return null;
        } catch (NumberFormatException unused) {
            A.i.z("Ignoring malformed AV1 codec string: ", str, TAG);
            return null;
        }
    }

    private static Pair<Integer, Integer> getAvcProfileAndLevel(String str, String[] strArr) {
        int parseInt;
        int i2;
        if (strArr.length < 2) {
            A.i.z("Ignoring malformed AVC codec string: ", str, TAG);
            return null;
        }
        try {
            if (strArr[1].length() == 6) {
                i2 = Integer.parseInt(strArr[1].substring(0, 2), 16);
                parseInt = Integer.parseInt(strArr[1].substring(4), 16);
            } else {
                if (strArr.length < 3) {
                    Log.w(TAG, "Ignoring malformed AVC codec string: " + str);
                    return null;
                }
                int parseInt2 = Integer.parseInt(strArr[1]);
                parseInt = Integer.parseInt(strArr[2]);
                i2 = parseInt2;
            }
            int avcProfileNumberToConst = avcProfileNumberToConst(i2);
            if (avcProfileNumberToConst == -1) {
                A.i.v(i2, "Unknown AVC profile: ", TAG);
                return null;
            }
            int avcLevelNumberToConst = avcLevelNumberToConst(parseInt);
            if (avcLevelNumberToConst != -1) {
                return new Pair<>(Integer.valueOf(avcProfileNumberToConst), Integer.valueOf(avcLevelNumberToConst));
            }
            A.i.v(parseInt, "Unknown AVC level: ", TAG);
            return null;
        } catch (NumberFormatException unused) {
            A.i.z("Ignoring malformed AVC codec string: ", str, TAG);
            return null;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00a7, code lost:
    
        if (r3.equals(androidx.media3.common.util.CodecSpecificDataUtil.CODEC_ID_AC4) == false) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.util.Pair<java.lang.Integer, java.lang.Integer> getCodecProfileAndLevel(androidx.media3.common.Format r6) {
        /*
            Method dump skipped, instructions count: 314
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.common.util.CodecSpecificDataUtil.getCodecProfileAndLevel(androidx.media3.common.Format):android.util.Pair");
    }

    private static Pair<Integer, Integer> getDolbyVisionProfileAndLevel(String str, String[] strArr) {
        if (strArr.length < 3) {
            A.i.z("Ignoring malformed Dolby Vision codec string: ", str, TAG);
            return null;
        }
        Matcher matcher = PROFILE_PATTERN.matcher(strArr[1]);
        if (!matcher.matches()) {
            A.i.z("Ignoring malformed Dolby Vision codec string: ", str, TAG);
            return null;
        }
        String group = matcher.group(1);
        Integer dolbyVisionStringToProfile = dolbyVisionStringToProfile(group);
        if (dolbyVisionStringToProfile == null) {
            A.i.z("Unknown Dolby Vision profile string: ", group, TAG);
            return null;
        }
        String str2 = strArr[2];
        Integer dolbyVisionStringToLevel = dolbyVisionStringToLevel(str2);
        if (dolbyVisionStringToLevel != null) {
            return new Pair<>(dolbyVisionStringToProfile, dolbyVisionStringToLevel);
        }
        A.i.z("Unknown Dolby Vision level string: ", str2, TAG);
        return null;
    }

    private static Pair<Integer, Integer> getH263ProfileAndLevel(String str, String[] strArr) {
        Pair<Integer, Integer> pair = new Pair<>(1, 1);
        if (strArr.length < 3) {
            A.i.z("Ignoring malformed H263 codec string: ", str, TAG);
            return pair;
        }
        try {
            return new Pair<>(Integer.valueOf(Integer.parseInt(strArr[1])), Integer.valueOf(Integer.parseInt(strArr[2])));
        } catch (NumberFormatException unused) {
            A.i.z("Ignoring malformed H263 codec string: ", str, TAG);
            return pair;
        }
    }

    public static Pair<Integer, Integer> getHevcProfileAndLevel(String str, String[] strArr, ColorInfo colorInfo) {
        if (strArr.length < 4) {
            A.i.z("Ignoring malformed HEVC codec string: ", str, TAG);
            return null;
        }
        int i2 = 1;
        Matcher matcher = PROFILE_PATTERN.matcher(strArr[1]);
        if (!matcher.matches()) {
            A.i.z("Ignoring malformed HEVC codec string: ", str, TAG);
            return null;
        }
        String group = matcher.group(1);
        if (!"1".equals(group)) {
            i2 = 6;
            if (TraktV2.API_VERSION.equals(group)) {
                i2 = (colorInfo == null || colorInfo.colorTransfer != 6) ? 2 : 4096;
            } else if (!"6".equals(group)) {
                A.i.z("Unknown HEVC profile string: ", group, TAG);
                return null;
            }
        }
        String str2 = strArr[3];
        Integer hevcCodecStringToProfileLevel = hevcCodecStringToProfileLevel(str2);
        if (hevcCodecStringToProfileLevel != null) {
            return new Pair<>(Integer.valueOf(i2), hevcCodecStringToProfileLevel);
        }
        A.i.z("Unknown HEVC level string: ", str2, TAG);
        return null;
    }

    private static Pair<Integer, Integer> getIamfCodecProfileAndLevel(String str, String[] strArr) {
        int i2 = 2;
        if (strArr.length < 4) {
            A.i.z("Ignoring malformed IAMF codec string: ", str, TAG);
            return null;
        }
        try {
            int parseInt = 1 << (Integer.parseInt(strArr[1]) + 16);
            String str2 = strArr[3];
            str2.getClass();
            switch (str2) {
                case "Opus":
                    i2 = 1;
                    break;
                case "fLaC":
                    i2 = 4;
                    break;
                case "ipcm":
                    i2 = 8;
                    break;
                case "mp4a":
                    break;
                default:
                    Log.w(TAG, "Ignoring unknown codec identifier for IAMF auxiliary profile: " + strArr[3]);
                    return null;
            }
            return new Pair<>(Integer.valueOf(parseInt | Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE | i2), 0);
        } catch (NumberFormatException e3) {
            Log.w(TAG, "Ignoring malformed primary profile in IAMF codec string: " + strArr[1], e3);
            return null;
        }
    }

    public static Pair<Integer, Integer> getVideoResolutionFromMpeg4VideoConfig(byte[] bArr) {
        boolean z6;
        ParsableByteArray parsableByteArray = new ParsableByteArray(bArr);
        int i2 = 0;
        int i7 = 0;
        while (true) {
            int i8 = i7 + 3;
            if (i8 >= bArr.length) {
                z6 = false;
                break;
            }
            if (parsableByteArray.readUnsignedInt24() == 1 && (bArr[i8] & 240) == 32) {
                z6 = true;
                break;
            }
            parsableByteArray.setPosition(parsableByteArray.getPosition() - 2);
            i7++;
        }
        v.checkArgument(z6, "Invalid input: VOL not found.");
        ParsableBitArray parsableBitArray = new ParsableBitArray(bArr);
        parsableBitArray.skipBits((i7 + 4) * 8);
        parsableBitArray.skipBits(1);
        parsableBitArray.skipBits(8);
        if (parsableBitArray.readBit()) {
            parsableBitArray.skipBits(4);
            parsableBitArray.skipBits(3);
        }
        if (parsableBitArray.readBits(4) == 15) {
            parsableBitArray.skipBits(8);
            parsableBitArray.skipBits(8);
        }
        if (parsableBitArray.readBit()) {
            parsableBitArray.skipBits(2);
            parsableBitArray.skipBits(1);
            if (parsableBitArray.readBit()) {
                parsableBitArray.skipBits(79);
            }
        }
        v.checkArgument(parsableBitArray.readBits(2) == 0, "Only supports rectangular video object layer shape.");
        v.checkArgument(parsableBitArray.readBit());
        int readBits = parsableBitArray.readBits(16);
        v.checkArgument(parsableBitArray.readBit());
        if (parsableBitArray.readBit()) {
            v.checkArgument(readBits > 0);
            for (int i9 = readBits - 1; i9 > 0; i9 >>= 1) {
                i2++;
            }
            parsableBitArray.skipBits(i2);
        }
        v.checkArgument(parsableBitArray.readBit());
        int readBits2 = parsableBitArray.readBits(13);
        v.checkArgument(parsableBitArray.readBit());
        int readBits3 = parsableBitArray.readBits(13);
        v.checkArgument(parsableBitArray.readBit());
        parsableBitArray.skipBits(1);
        return Pair.create(Integer.valueOf(readBits2), Integer.valueOf(readBits3));
    }

    public static ByteBuffer getVorbisInitializationData(Format format) {
        v.checkArgument(format.initializationData.size() > 1, "csd-0 and csd-1 must be present for Vorbis.");
        byte[] bArr = format.initializationData.get(0);
        byte[] bArr2 = format.initializationData.get(1);
        int length = bArr.length;
        int length2 = bArr2.length;
        byte[] xiphLaceEnc = xiphLaceEnc(length);
        byte[] xiphLaceEnc2 = xiphLaceEnc(23);
        ByteBuffer allocate = ByteBuffer.allocate(xiphLaceEnc.length + 1 + xiphLaceEnc2.length + length + 23 + length2);
        allocate.put((byte) 2);
        allocate.put(xiphLaceEnc);
        allocate.put(xiphLaceEnc2);
        allocate.put(bArr);
        allocate.put(new byte[]{3, 118, 111, 114, 98, 105, 115, 7, 0, 0, 0, 97, 110, 100, 114, 111, 105, 100, 0, 0, 0, 0, 1});
        allocate.put(bArr2);
        allocate.flip();
        return allocate;
    }

    private static Pair<Integer, Integer> getVp9ProfileAndLevel(String str, String[] strArr) {
        if (strArr.length < 3) {
            A.i.z("Ignoring malformed VP9 codec string: ", str, TAG);
            return null;
        }
        try {
            int parseInt = Integer.parseInt(strArr[1]);
            int parseInt2 = Integer.parseInt(strArr[2]);
            int vp9ProfileNumberToConst = vp9ProfileNumberToConst(parseInt);
            if (vp9ProfileNumberToConst == -1) {
                A.i.v(parseInt, "Unknown VP9 profile: ", TAG);
                return null;
            }
            int vp9LevelNumberToConst = vp9LevelNumberToConst(parseInt2);
            if (vp9LevelNumberToConst != -1) {
                return new Pair<>(Integer.valueOf(vp9ProfileNumberToConst), Integer.valueOf(vp9LevelNumberToConst));
            }
            A.i.v(parseInt2, "Unknown VP9 level: ", TAG);
            return null;
        } catch (NumberFormatException unused) {
            A.i.z("Ignoring malformed VP9 codec string: ", str, TAG);
            return null;
        }
    }

    private static Integer hevcCodecStringToProfileLevel(String str) {
        if (str == null) {
            return null;
        }
        switch (str) {
        }
        return null;
    }

    private static boolean isNalStartCode(byte[] bArr, int i2) {
        if (bArr.length - i2 <= NAL_START_CODE.length) {
            return false;
        }
        int i7 = 0;
        while (true) {
            byte[] bArr2 = NAL_START_CODE;
            if (i7 >= bArr2.length) {
                return true;
            }
            if (bArr[i2 + i7] != bArr2[i7]) {
                return false;
            }
            i7++;
        }
    }

    private static int mp4aAudioObjectTypeToProfile(int i2) {
        int i7 = 17;
        if (i2 != 17) {
            i7 = 20;
            if (i2 != 20) {
                i7 = 23;
                if (i2 != 23) {
                    i7 = 29;
                    if (i2 != 29) {
                        i7 = 39;
                        if (i2 != 39) {
                            i7 = 42;
                            if (i2 != 42) {
                                switch (i2) {
                                    case 1:
                                        return 1;
                                    case 2:
                                        return 2;
                                    case 3:
                                        return 3;
                                    case 4:
                                        return 4;
                                    case 5:
                                        return 5;
                                    case 6:
                                        return 6;
                                    default:
                                        return -1;
                                }
                            }
                        }
                    }
                }
            }
        }
        return i7;
    }

    public static int[] parseAlacAudioSpecificConfig(byte[] bArr) {
        ParsableByteArray parsableByteArray = new ParsableByteArray(bArr);
        parsableByteArray.setPosition(5);
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        parsableByteArray.setPosition(9);
        int readUnsignedByte2 = parsableByteArray.readUnsignedByte();
        parsableByteArray.setPosition(20);
        return new int[]{parsableByteArray.readUnsignedIntToInt(), readUnsignedByte2, readUnsignedByte};
    }

    public static boolean parseCea708InitializationData(List<byte[]> list) {
        return list.size() == 1 && list.get(0).length == 1 && list.get(0)[0] == 1;
    }

    public static byte[][] splitNalUnits(byte[] bArr) {
        if (!isNalStartCode(bArr, 0)) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        do {
            arrayList.add(Integer.valueOf(i2));
            i2 = findNalStartCode(bArr, i2 + NAL_START_CODE.length);
        } while (i2 != -1);
        byte[][] bArr2 = new byte[arrayList.size()][];
        int i7 = 0;
        while (i7 < arrayList.size()) {
            int intValue = ((Integer) arrayList.get(i7)).intValue();
            int intValue2 = (i7 < arrayList.size() + (-1) ? ((Integer) arrayList.get(i7 + 1)).intValue() : bArr.length) - intValue;
            byte[] bArr3 = new byte[intValue2];
            System.arraycopy(bArr, intValue, bArr3, 0, intValue2);
            bArr2[i7] = bArr3;
            i7++;
        }
        return bArr2;
    }

    private static int vp9LevelNumberToConst(int i2) {
        if (i2 == 10) {
            return 1;
        }
        if (i2 == 11) {
            return 2;
        }
        if (i2 == 20) {
            return 4;
        }
        if (i2 == 21) {
            return 8;
        }
        if (i2 == 30) {
            return 16;
        }
        if (i2 == 31) {
            return 32;
        }
        if (i2 == 40) {
            return 64;
        }
        if (i2 == 41) {
            return 128;
        }
        if (i2 == 50) {
            return 256;
        }
        if (i2 == 51) {
            return 512;
        }
        switch (i2) {
            case CacheConfig.DEFAULT_ASYNCHRONOUS_WORKER_IDLE_LIFETIME_SECS /* 60 */:
                return 2048;
            case 61:
                return 4096;
            case 62:
                return 8192;
            default:
                return -1;
        }
    }

    private static int vp9ProfileNumberToConst(int i2) {
        if (i2 == 0) {
            return 1;
        }
        if (i2 == 1) {
            return 2;
        }
        if (i2 != 2) {
            return i2 != 3 ? -1 : 8;
        }
        return 4;
    }

    private static byte[] xiphLaceEnc(int i2) {
        int i7 = i2 / 255;
        byte[] bArr = new byte[i7 + 1];
        Arrays.fill(bArr, (byte) -1);
        bArr[i7] = (byte) (i2 % 255);
        return bArr;
    }
}
