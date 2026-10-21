package M;

import android.view.VelocityTracker;

/* loaded from: classes.dex */
public abstract class V {
    public static float a(VelocityTracker velocityTracker, int i2) {
        return velocityTracker.getAxisVelocity(i2);
    }

    public static float b(VelocityTracker velocityTracker, int i2, int i7) {
        return velocityTracker.getAxisVelocity(i2, i7);
    }

    public static boolean c(VelocityTracker velocityTracker, int i2) {
        return velocityTracker.isAxisSupported(i2);
    }
}
