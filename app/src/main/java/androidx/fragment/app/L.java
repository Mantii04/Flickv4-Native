package androidx.fragment.app;

import android.content.Context;
import android.os.Bundle;
import android.view.View;

/* loaded from: classes.dex */
public abstract class L {
    @Deprecated
    public C instantiate(Context context, String str, Bundle bundle) {
        return C.instantiate(context, str, bundle);
    }

    public abstract View onFindViewById(int i2);

    public abstract boolean onHasView();
}
