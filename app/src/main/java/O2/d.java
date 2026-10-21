package O2;

import android.os.Build;

/* loaded from: classes.dex */
public final class d extends N2.a {
    @Override // N2.r
    public N2.q[] onCreateChild() {
        c[] cVarArr = new c[12];
        for (int i2 = 0; i2 < 12; i2++) {
            c cVar = new c();
            cVar.setScale(0.0f);
            cVarArr[i2] = cVar;
            if (Build.VERSION.SDK_INT >= 24) {
                cVar.setAnimationDelay(i2 * 100);
            } else {
                cVar.setAnimationDelay((i2 * 100) - 1200);
            }
        }
        return cVarArr;
    }
}
