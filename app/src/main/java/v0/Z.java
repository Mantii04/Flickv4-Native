package v0;

import androidx.media3.common.MimeTypes;
import androidx.media3.exoplayer.RendererCapabilities;

/* loaded from: classes.dex */
public abstract class Z {

    /* renamed from: a, reason: collision with root package name */
    public static final String[] f20421a = {MimeTypes.AUDIO_MPEG_L1, MimeTypes.AUDIO_MPEG_L2, MimeTypes.AUDIO_MPEG};

    /* renamed from: b, reason: collision with root package name */
    public static final int[] f20422b = {44100, 48000, 32000};

    /* renamed from: c, reason: collision with root package name */
    public static final int[] f20423c = {32000, 64000, 96000, 128000, 160000, 192000, 224000, 256000, 288000, 320000, 352000, 384000, 416000, 448000};

    /* renamed from: d, reason: collision with root package name */
    public static final int[] f20424d = {32000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 144000, 160000, 176000, 192000, 224000, 256000};

    /* renamed from: e, reason: collision with root package name */
    public static final int[] f20425e = {32000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 160000, 192000, 224000, 256000, 320000, 384000};

    /* renamed from: f, reason: collision with root package name */
    public static final int[] f20426f = {32000, 40000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 160000, 192000, 224000, 256000, 320000};

    /* renamed from: g, reason: collision with root package name */
    public static final int[] f20427g = {8000, 16000, 24000, 32000, 40000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 144000, 160000};

    public static int getFrameSize(int i2) {
        int i7;
        int i8;
        int i9;
        int i10;
        if (!((i2 & (-2097152)) == -2097152) || (i7 = (i2 >>> 19) & 3) == 1 || (i8 = (i2 >>> 17) & 3) == 0 || (i9 = (i2 >>> 12) & 15) == 0 || i9 == 15 || (i10 = (i2 >>> 10) & 3) == 3) {
            return -1;
        }
        int i11 = f20422b[i10];
        if (i7 == 2) {
            i11 /= 2;
        } else if (i7 == 0) {
            i11 /= 4;
        }
        int i12 = (i2 >>> 9) & 1;
        if (i8 == 3) {
            return ((((i7 == 3 ? f20423c[i9 - 1] : f20424d[i9 - 1]) * 12) / i11) + i12) * 4;
        }
        int i13 = i7 == 3 ? i8 == 2 ? f20425e[i9 - 1] : f20426f[i9 - 1] : f20427g[i9 - 1];
        if (i7 == 3) {
            return A.i.D(i13, 144, i11, i12);
        }
        return A.i.D(i8 == 1 ? 72 : 144, i13, i11, i12);
    }

    public static int parseMpegAudioFrameSampleCount(int i2) {
        int i7;
        int i8;
        if (!((i2 & (-2097152)) == -2097152) || (i7 = (i2 >>> 19) & 3) == 1 || (i8 = (i2 >>> 17) & 3) == 0) {
            return -1;
        }
        int i9 = (i2 >>> 12) & 15;
        int i10 = (i2 >>> 10) & 3;
        if (i9 == 0 || i9 == 15 || i10 == 3) {
            return -1;
        }
        if (i8 == 1) {
            return i7 == 3 ? 1152 : 576;
        }
        if (i8 == 2) {
            return 1152;
        }
        if (i8 == 3) {
            return RendererCapabilities.DECODER_SUPPORT_MASK;
        }
        throw new IllegalArgumentException();
    }
}
