package O2;

import android.os.Build;

/* loaded from: classes.dex */
public final class j extends N2.a {
    @Override // N2.r
    public N2.q[] onCreateChild() {
        i[] iVarArr = new i[12];
        for (int i2 = 0; i2 < 12; i2++) {
            i iVar = new i();
            iVar.setAlpha(0);
            iVarArr[i2] = iVar;
            if (Build.VERSION.SDK_INT >= 24) {
                iVar.setAnimationDelay(i2 * 100);
            } else {
                iVar.setAnimationDelay((i2 * 100) - 1200);
            }
        }
        return iVarArr;
    }
}
