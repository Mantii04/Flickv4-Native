package M2;

import android.animation.TimeInterpolator;
import android.view.animation.Interpolator;

/* loaded from: classes.dex */
public final class b implements Interpolator {

    /* renamed from: a, reason: collision with root package name */
    public final TimeInterpolator f2103a;

    /* renamed from: b, reason: collision with root package name */
    public float[] f2104b;

    public b(TimeInterpolator timeInterpolator, float... fArr) {
        this.f2103a = timeInterpolator;
        this.f2104b = fArr;
    }

    public static b easeInOut(float... fArr) {
        b bVar = new b(a.inOut(), new float[0]);
        bVar.setFractions(fArr);
        return bVar;
    }

    public static b pathInterpolator(float f3, float f7, float f8, float f9, float... fArr) {
        b bVar = new b(c.create(f3, f7, f8, f9), new float[0]);
        bVar.setFractions(fArr);
        return bVar;
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f3) {
        int length = this.f2104b.length;
        TimeInterpolator timeInterpolator = this.f2103a;
        if (length > 1) {
            int i2 = 0;
            while (true) {
                float[] fArr = this.f2104b;
                if (i2 >= fArr.length - 1) {
                    break;
                }
                float f7 = fArr[i2];
                i2++;
                float f8 = fArr[i2];
                float f9 = f8 - f7;
                if (f3 >= f7 && f3 <= f8) {
                    return (timeInterpolator.getInterpolation((f3 - f7) / f9) * f9) + f7;
                }
            }
        }
        return timeInterpolator.getInterpolation(f3);
    }

    public void setFractions(float... fArr) {
        this.f2104b = fArr;
    }
}
