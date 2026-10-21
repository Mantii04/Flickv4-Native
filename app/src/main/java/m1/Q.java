package m1;

import android.view.animation.Interpolator;

/* loaded from: classes.dex */
public final class Q implements Interpolator {
    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f3) {
        float f7 = f3 - 1.0f;
        return (f7 * f7 * f7 * f7 * f7) + 1.0f;
    }
}
