package M;

import android.view.animation.Interpolator;

/* loaded from: classes.dex */
public abstract class R0 {

    /* renamed from: a, reason: collision with root package name */
    public final int f1964a;

    /* renamed from: b, reason: collision with root package name */
    public float f1965b;

    /* renamed from: c, reason: collision with root package name */
    public final Interpolator f1966c;

    /* renamed from: d, reason: collision with root package name */
    public final long f1967d;

    public R0(int i2, Interpolator interpolator, long j7) {
        this.f1964a = i2;
        this.f1966c = interpolator;
        this.f1967d = j7;
    }

    public long getDurationMillis() {
        return this.f1967d;
    }

    public float getInterpolatedFraction() {
        Interpolator interpolator = this.f1966c;
        return interpolator != null ? interpolator.getInterpolation(this.f1965b) : this.f1965b;
    }

    public int getTypeMask() {
        return this.f1964a;
    }

    public void setFraction(float f3) {
        this.f1965b = f3;
    }
}
