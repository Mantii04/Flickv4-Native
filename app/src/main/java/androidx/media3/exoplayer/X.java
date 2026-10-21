package androidx.media3.exoplayer;

import androidx.media3.exoplayer.RendererCapabilities;

/* loaded from: classes.dex */
public abstract /* synthetic */ class X {
    public static int c(int i2) {
        return e(i2, 0, 0, 0);
    }

    public static int d(int i2, int i7, int i8) {
        return g(i2, i7, i8, 0, 128, 0);
    }

    public static int e(int i2, int i7, int i8, int i9) {
        return g(i2, i7, i8, 0, 128, i9);
    }

    public static int f(int i2, int i7, int i8, int i9, int i10) {
        return g(i2, i7, i8, i9, i10, 0);
    }

    public static int g(int i2, int i7, int i8, int i9, int i10, int i11) {
        return i2 | i7 | i8 | i9 | i10 | i11;
    }

    public static int h(int i2) {
        return i2 & 24;
    }

    public static int i(int i2) {
        return i2 & RendererCapabilities.AUDIO_OFFLOAD_SUPPORT_MASK;
    }

    public static int j(int i2) {
        return i2 & RendererCapabilities.DECODER_SUPPORT_MASK;
    }

    public static int k(int i2) {
        return i2 & 7;
    }

    public static int l(int i2) {
        return i2 & 64;
    }

    public static int m(int i2) {
        return i2 & 32;
    }

    public static boolean n(int i2, boolean z6) {
        int k7 = k(i2);
        if (k7 != 4) {
            return z6 && k7 == 3;
        }
        return true;
    }

    public static void a(RendererCapabilities rendererCapabilities) {
    }

    public static void b(RendererCapabilities rendererCapabilities, RendererCapabilities.Listener listener) {
    }
}
