package M;

import L1.AbstractC0149g;
import android.os.Build;
import android.view.animation.Interpolator;

/* loaded from: classes.dex */
public final class S0 {

    /* renamed from: a, reason: collision with root package name */
    public R0 f1970a;

    public S0(int i2, Interpolator interpolator, long j7) {
        if (Build.VERSION.SDK_INT >= 30) {
            this.f1970a = new Q0(AbstractC0149g.l(i2, interpolator, j7));
        } else {
            this.f1970a = new O0(i2, interpolator, j7);
        }
    }

    public long getDurationMillis() {
        return this.f1970a.getDurationMillis();
    }

    public float getInterpolatedFraction() {
        return this.f1970a.getInterpolatedFraction();
    }

    public int getTypeMask() {
        return this.f1970a.getTypeMask();
    }

    public void setFraction(float f3) {
        this.f1970a.setFraction(f3);
    }
}
