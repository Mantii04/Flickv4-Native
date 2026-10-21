package O2;

import android.os.Build;

/* loaded from: classes.dex */
public final class h extends N2.r {
    @Override // N2.r
    public void onChildCreated(N2.q... qVarArr) {
        super.onChildCreated(qVarArr);
        if (Build.VERSION.SDK_INT >= 24) {
            qVarArr[1].setAnimationDelay(1000);
        } else {
            qVarArr[1].setAnimationDelay(-1000);
        }
    }

    @Override // N2.r
    public N2.q[] onCreateChild() {
        return new N2.q[]{new g(), new g()};
    }
}
