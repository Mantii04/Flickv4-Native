package M;

import android.content.Context;
import android.os.Build;
import android.view.PointerIcon;

/* loaded from: classes.dex */
public final class Q {

    /* renamed from: a, reason: collision with root package name */
    public final PointerIcon f1962a;

    public Q(PointerIcon pointerIcon) {
        this.f1962a = pointerIcon;
    }

    public static Q getSystemIcon(Context context, int i2) {
        return Build.VERSION.SDK_INT >= 24 ? new Q(P.b(context, i2)) : new Q(null);
    }

    public Object getPointerIcon() {
        return this.f1962a;
    }
}
