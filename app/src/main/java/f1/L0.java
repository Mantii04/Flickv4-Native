package f1;

import android.content.ComponentName;
import android.content.Context;
import android.os.Build;

/* loaded from: classes.dex */
public abstract class L0 extends G {
    public L0(Context context) {
        super(context, new E(new ComponentName("android", L0.class.getName())));
    }

    public static L0 obtain(Context context, K0 k02) {
        return Build.VERSION.SDK_INT >= 24 ? new D0(context, k02) : new J0(context, k02);
    }

    public abstract void onSyncRouteAdded(U u6);

    public abstract void onSyncRouteChanged(U u6);

    public abstract void onSyncRouteRemoved(U u6);

    public abstract void onSyncRouteSelected(U u6);
}
