package g;

import android.animation.TimeInterpolator;

/* loaded from: classes.dex */
public final class e implements TimeInterpolator {

    /* renamed from: a, reason: collision with root package name */
    public int[] f16318a;

    /* renamed from: b, reason: collision with root package name */
    public int f16319b;

    /* renamed from: c, reason: collision with root package name */
    public int f16320c;

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f3) {
        int i2 = (int) ((f3 * this.f16320c) + 0.5f);
        int i7 = this.f16319b;
        int[] iArr = this.f16318a;
        int i8 = 0;
        while (i8 < i7) {
            int i9 = iArr[i8];
            if (i2 < i9) {
                break;
            }
            i2 -= i9;
            i8++;
        }
        return (i8 / i7) + (i8 < i7 ? i2 / this.f16320c : 0.0f);
    }
}
