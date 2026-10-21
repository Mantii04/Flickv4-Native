package M;

import android.graphics.Insets;
import android.view.View;
import android.view.WindowInsets;

/* loaded from: classes.dex */
public final class d1 extends c1 {

    /* renamed from: q, reason: collision with root package name */
    public static final h1 f2022q;

    static {
        WindowInsets windowInsets;
        windowInsets = WindowInsets.CONSUMED;
        f2022q = h1.toWindowInsetsCompat(windowInsets);
    }

    public d1(h1 h1Var, WindowInsets windowInsets) {
        super(h1Var, windowInsets);
    }

    @Override // M.Z0, M.e1
    public D.c getInsets(int i2) {
        Insets insets;
        insets = this.f2005c.getInsets(g1.a(i2));
        return D.c.toCompatInsets(insets);
    }

    public d1(h1 h1Var, d1 d1Var) {
        super(h1Var, d1Var);
    }

    @Override // M.Z0, M.e1
    public final void d(View view) {
    }
}
