package f1;

import android.annotation.SuppressLint;
import android.content.Context;

/* loaded from: classes.dex */
public final class D0 extends J0 {
    public D0(Context context, K0 k02) {
        super(context, k02);
    }

    @Override // f1.J0, f1.I0, f1.H0
    @SuppressLint({"WrongConstant"})
    public void onBuildSystemRouteDescriptor(F0 f02, C0914u c0914u) {
        super.onBuildSystemRouteDescriptor(f02, c0914u);
        c0914u.setDeviceType(f02.f14130a.getDeviceType());
    }
}
