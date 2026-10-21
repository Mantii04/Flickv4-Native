package androidx.media3.common;

import android.os.SystemClock;
import androidx.media3.common.SimpleBasePlayer;

/* loaded from: classes.dex */
public abstract /* synthetic */ class y {
    static {
        SimpleBasePlayer.PositionSupplier positionSupplier = SimpleBasePlayer.PositionSupplier.ZERO;
    }

    public static SimpleBasePlayer.PositionSupplier a(long j7) {
        return new x(j7);
    }

    public static SimpleBasePlayer.PositionSupplier b(final long j7, final float f3) {
        final long elapsedRealtime = SystemClock.elapsedRealtime();
        return new SimpleBasePlayer.PositionSupplier() { // from class: androidx.media3.common.w
            @Override // androidx.media3.common.SimpleBasePlayer.PositionSupplier
            public final long get() {
                return y.d(j7, elapsedRealtime, f3);
            }
        };
    }

    public static /* synthetic */ long d(long j7, long j8, float f3) {
        return j7 + ((long) ((SystemClock.elapsedRealtime() - j8) * f3));
    }

    public static /* synthetic */ long c(long j7) {
        return j7;
    }
}
