package h4;

import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.Arrays;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes2.dex */
public abstract class k {

    /* renamed from: a, reason: collision with root package name */
    public final int f16572a;

    /* renamed from: b, reason: collision with root package name */
    public final Interpolator f16573b;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f16574c;

    /* renamed from: d, reason: collision with root package name */
    public o f16575d;

    public k(j... jVarArr) {
        int length = jVarArr.length;
        this.f16572a = length;
        ArrayList arrayList = new ArrayList();
        this.f16574c = arrayList;
        arrayList.addAll(Arrays.asList(jVarArr));
        this.f16573b = ((j) arrayList.get(length - 1)).getInterpolator();
    }

    public static k ofFloat(float... fArr) {
        int length = fArr.length;
        h[] hVarArr = new h[Math.max(length, 2)];
        if (length == 1) {
            hVarArr[0] = (h) j.ofFloat(0.0f);
            hVarArr[1] = (h) j.ofFloat(1.0f, fArr[0]);
        } else {
            hVarArr[0] = (h) j.ofFloat(0.0f, fArr[0]);
            for (int i2 = 1; i2 < length; i2++) {
                hVarArr[i2] = (h) j.ofFloat(i2 / (length - 1), fArr[i2]);
            }
        }
        return new e(hVarArr);
    }

    public static k ofInt(int... iArr) {
        int length = iArr.length;
        i[] iVarArr = new i[Math.max(length, 2)];
        if (length == 1) {
            iVarArr[0] = (i) j.ofInt(0.0f);
            iVarArr[1] = (i) j.ofInt(1.0f, iArr[0]);
        } else {
            iVarArr[0] = (i) j.ofInt(0.0f, iArr[0]);
            for (int i2 = 1; i2 < length; i2++) {
                iVarArr[i2] = (i) j.ofInt(i2 / (length - 1), iArr[i2]);
            }
        }
        return new g(iVarArr);
    }

    /* renamed from: clone */
    public abstract k m93clone();

    public void setEvaluator(o oVar) {
        this.f16575d = oVar;
    }

    public String toString() {
        String str = StringUtils.SPACE;
        for (int i2 = 0; i2 < this.f16572a; i2++) {
            StringBuilder o6 = b.c.o(str);
            o6.append(((j) this.f16574c.get(i2)).getValue());
            o6.append("  ");
            str = o6.toString();
        }
        return str;
    }
}
