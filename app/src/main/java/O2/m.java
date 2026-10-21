package O2;

import cz.msebera.android.httpclient.HttpStatus;

/* loaded from: classes.dex */
public final class m extends N2.r {
    @Override // N2.r
    public void onChildCreated(N2.q... qVarArr) {
        int i2 = 0;
        while (i2 < qVarArr.length) {
            N2.q qVar = qVarArr[i2];
            i2++;
            qVar.setAnimationDelay(i2 * HttpStatus.SC_OK);
        }
    }

    @Override // N2.r
    public N2.q[] onCreateChild() {
        return new N2.q[]{new o(), new o(), new o()};
    }
}
