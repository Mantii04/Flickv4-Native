package h4;

import android.view.animation.Interpolator;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public final class g extends k {

    /* renamed from: e, reason: collision with root package name */
    public int f16564e;

    /* renamed from: f, reason: collision with root package name */
    public int f16565f;

    /* renamed from: g, reason: collision with root package name */
    public int f16566g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f16567h;

    public g(i... iVarArr) {
        super(iVarArr);
        this.f16567h = true;
    }

    public int getIntValue(float f3) {
        int intValue;
        int i2;
        ArrayList arrayList = this.f16574c;
        int i7 = this.f16572a;
        if (i7 != 2) {
            if (f3 <= 0.0f) {
                i iVar = (i) arrayList.get(0);
                i iVar2 = (i) arrayList.get(1);
                int intValue2 = iVar.getIntValue();
                int intValue3 = iVar2.getIntValue();
                float fraction = iVar.getFraction();
                float fraction2 = iVar2.getFraction();
                Interpolator interpolator = iVar2.getInterpolator();
                if (interpolator != null) {
                    f3 = interpolator.getInterpolation(f3);
                }
                float f7 = (f3 - fraction) / (fraction2 - fraction);
                o oVar = this.f16575d;
                return oVar == null ? intValue2 + ((int) (f7 * (intValue3 - intValue2))) : ((Number) oVar.evaluate(f7, Integer.valueOf(intValue2), Integer.valueOf(intValue3))).intValue();
            }
            if (f3 >= 1.0f) {
                i iVar3 = (i) arrayList.get(i7 - 2);
                i iVar4 = (i) arrayList.get(i7 - 1);
                int intValue4 = iVar3.getIntValue();
                int intValue5 = iVar4.getIntValue();
                float fraction3 = iVar3.getFraction();
                float fraction4 = iVar4.getFraction();
                Interpolator interpolator2 = iVar4.getInterpolator();
                if (interpolator2 != null) {
                    f3 = interpolator2.getInterpolation(f3);
                }
                float f8 = (f3 - fraction3) / (fraction4 - fraction3);
                o oVar2 = this.f16575d;
                return oVar2 == null ? intValue4 + ((int) (f8 * (intValue5 - intValue4))) : ((Number) oVar2.evaluate(f8, Integer.valueOf(intValue4), Integer.valueOf(intValue5))).intValue();
            }
            i iVar5 = (i) arrayList.get(0);
            int i8 = 1;
            while (i8 < i7) {
                i iVar6 = (i) arrayList.get(i8);
                if (f3 < iVar6.getFraction()) {
                    Interpolator interpolator3 = iVar6.getInterpolator();
                    if (interpolator3 != null) {
                        f3 = interpolator3.getInterpolation(f3);
                    }
                    f3 = (f3 - iVar5.getFraction()) / (iVar6.getFraction() - iVar5.getFraction());
                    intValue = iVar5.getIntValue();
                    int intValue6 = iVar6.getIntValue();
                    o oVar3 = this.f16575d;
                    if (oVar3 != null) {
                        return ((Number) oVar3.evaluate(f3, Integer.valueOf(intValue), Integer.valueOf(intValue6))).intValue();
                    }
                    i2 = intValue6 - intValue;
                } else {
                    i8++;
                    iVar5 = iVar6;
                }
            }
            return ((Number) ((j) arrayList.get(i7 - 1)).getValue()).intValue();
        }
        if (this.f16567h) {
            this.f16567h = false;
            this.f16564e = ((i) arrayList.get(0)).getIntValue();
            int intValue7 = ((i) arrayList.get(1)).getIntValue();
            this.f16565f = intValue7;
            this.f16566g = intValue7 - this.f16564e;
        }
        Interpolator interpolator4 = this.f16573b;
        if (interpolator4 != null) {
            f3 = interpolator4.getInterpolation(f3);
        }
        o oVar4 = this.f16575d;
        if (oVar4 != null) {
            return ((Number) oVar4.evaluate(f3, Integer.valueOf(this.f16564e), Integer.valueOf(this.f16565f))).intValue();
        }
        intValue = this.f16564e;
        i2 = this.f16566g;
        return intValue + ((int) (f3 * i2));
    }

    @Override // h4.k
    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public g m93clone() {
        ArrayList arrayList = this.f16574c;
        int size = arrayList.size();
        i[] iVarArr = new i[size];
        for (int i2 = 0; i2 < size; i2++) {
            iVarArr[i2] = (i) ((j) arrayList.get(i2)).m95clone();
        }
        return new g(iVarArr);
    }
}
