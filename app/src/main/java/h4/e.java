package h4;

import android.view.animation.Interpolator;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public final class e extends k {

    /* renamed from: e, reason: collision with root package name */
    public float f16560e;

    /* renamed from: f, reason: collision with root package name */
    public float f16561f;

    /* renamed from: g, reason: collision with root package name */
    public float f16562g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f16563h;

    public e(h... hVarArr) {
        super(hVarArr);
        this.f16563h = true;
    }

    public float getFloatValue(float f3) {
        ArrayList arrayList = this.f16574c;
        int i2 = this.f16572a;
        if (i2 == 2) {
            if (this.f16563h) {
                this.f16563h = false;
                this.f16560e = ((h) arrayList.get(0)).getFloatValue();
                float floatValue = ((h) arrayList.get(1)).getFloatValue();
                this.f16561f = floatValue;
                this.f16562g = floatValue - this.f16560e;
            }
            Interpolator interpolator = this.f16573b;
            if (interpolator != null) {
                f3 = interpolator.getInterpolation(f3);
            }
            o oVar = this.f16575d;
            if (oVar == null) {
                return (f3 * this.f16562g) + this.f16560e;
            }
            return ((Number) oVar.evaluate(f3, Float.valueOf(this.f16560e), Float.valueOf(this.f16561f))).floatValue();
        }
        if (f3 <= 0.0f) {
            h hVar = (h) arrayList.get(0);
            h hVar2 = (h) arrayList.get(1);
            float floatValue2 = hVar.getFloatValue();
            float floatValue3 = hVar2.getFloatValue();
            float fraction = hVar.getFraction();
            float fraction2 = hVar2.getFraction();
            Interpolator interpolator2 = hVar2.getInterpolator();
            if (interpolator2 != null) {
                f3 = interpolator2.getInterpolation(f3);
            }
            float f7 = (f3 - fraction) / (fraction2 - fraction);
            o oVar2 = this.f16575d;
            return oVar2 == null ? b.c.a(floatValue3, floatValue2, f7, floatValue2) : ((Number) oVar2.evaluate(f7, Float.valueOf(floatValue2), Float.valueOf(floatValue3))).floatValue();
        }
        if (f3 >= 1.0f) {
            h hVar3 = (h) arrayList.get(i2 - 2);
            h hVar4 = (h) arrayList.get(i2 - 1);
            float floatValue4 = hVar3.getFloatValue();
            float floatValue5 = hVar4.getFloatValue();
            float fraction3 = hVar3.getFraction();
            float fraction4 = hVar4.getFraction();
            Interpolator interpolator3 = hVar4.getInterpolator();
            if (interpolator3 != null) {
                f3 = interpolator3.getInterpolation(f3);
            }
            float f8 = (f3 - fraction3) / (fraction4 - fraction3);
            o oVar3 = this.f16575d;
            return oVar3 == null ? b.c.a(floatValue5, floatValue4, f8, floatValue4) : ((Number) oVar3.evaluate(f8, Float.valueOf(floatValue4), Float.valueOf(floatValue5))).floatValue();
        }
        h hVar5 = (h) arrayList.get(0);
        int i7 = 1;
        while (i7 < i2) {
            h hVar6 = (h) arrayList.get(i7);
            if (f3 < hVar6.getFraction()) {
                Interpolator interpolator4 = hVar6.getInterpolator();
                if (interpolator4 != null) {
                    f3 = interpolator4.getInterpolation(f3);
                }
                float fraction5 = (f3 - hVar5.getFraction()) / (hVar6.getFraction() - hVar5.getFraction());
                float floatValue6 = hVar5.getFloatValue();
                float floatValue7 = hVar6.getFloatValue();
                o oVar4 = this.f16575d;
                return oVar4 == null ? b.c.a(floatValue7, floatValue6, fraction5, floatValue6) : ((Number) oVar4.evaluate(fraction5, Float.valueOf(floatValue6), Float.valueOf(floatValue7))).floatValue();
            }
            i7++;
            hVar5 = hVar6;
        }
        return ((Number) ((j) arrayList.get(i2 - 1)).getValue()).floatValue();
    }

    @Override // h4.k
    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public e m92clone() {
        ArrayList arrayList = this.f16574c;
        int size = arrayList.size();
        h[] hVarArr = new h[size];
        for (int i2 = 0; i2 < size; i2++) {
            hVarArr[i2] = (h) ((j) arrayList.get(i2)).m95clone();
        }
        return new e(hVarArr);
    }
}
