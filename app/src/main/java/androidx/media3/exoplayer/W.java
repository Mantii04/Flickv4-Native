package androidx.media3.exoplayer;

/* loaded from: classes.dex */
public abstract /* synthetic */ class W {
    public static long b(Renderer renderer, long j7, long j8) {
        if (renderer.getState() != 1) {
            return Renderer.DEFAULT_DURATION_TO_PROGRESS_US;
        }
        if (renderer.isReady() || renderer.isEnded()) {
            return 1000000L;
        }
        return Renderer.DEFAULT_DURATION_TO_PROGRESS_US;
    }

    public static boolean e(Renderer renderer, long j7) {
        return false;
    }

    public static void a(Renderer renderer) {
    }

    public static void c(Renderer renderer) {
    }

    public static void d(Renderer renderer, float f3, float f7) {
    }
}
