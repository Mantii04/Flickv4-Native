package h0;

import android.view.animation.Interpolator;

/* loaded from: classes.dex */
public abstract class d implements Interpolator {

    /* renamed from: a, reason: collision with root package name */
    public final float[] f16482a;

    /* renamed from: b, reason: collision with root package name */
    public final float f16483b;

    public d(float[] fArr) {
        this.f16482a = fArr;
        this.f16483b = 1.0f / (fArr.length - 1);
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f3) {
        if (f3 >= 1.0f) {
            return 1.0f;
        }
        if (f3 <= 0.0f) {
            return 0.0f;
        }
        float[] fArr = this.f16482a;
        int min = Math.min((int) ((fArr.length - 1) * f3), fArr.length - 2);
        float f7 = this.f16483b;
        float f8 = (f3 - (min * f7)) / f7;
        float f9 = fArr[min];
        return b.c.a(fArr[min + 1], f9, f8, f9);
    }
}
