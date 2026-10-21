package G2;

import android.annotation.TargetApi;
import android.os.SystemClock;

/* loaded from: classes.dex */
public abstract class m {

    /* renamed from: a, reason: collision with root package name */
    public static final double f1038a = 1.0d / Math.pow(10.0d, 6.0d);

    public static double getElapsedMillis(long j7) {
        return (getLogTime() - j7) * f1038a;
    }

    @TargetApi(17)
    public static long getLogTime() {
        return SystemClock.elapsedRealtimeNanos();
    }
}
