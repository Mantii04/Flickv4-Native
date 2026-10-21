package M;

import android.view.WindowInsets;

/* loaded from: classes.dex */
public class a1 extends Z0 {

    /* renamed from: m, reason: collision with root package name */
    public D.c f2012m;

    public a1(h1 h1Var, WindowInsets windowInsets) {
        super(h1Var, windowInsets);
        this.f2012m = null;
    }

    @Override // M.e1
    public h1 b() {
        return h1.toWindowInsetsCompat(this.f2005c.consumeStableInsets());
    }

    @Override // M.e1
    public h1 c() {
        return h1.toWindowInsetsCompat(this.f2005c.consumeSystemWindowInsets());
    }

    @Override // M.e1
    public final D.c h() {
        if (this.f2012m == null) {
            WindowInsets windowInsets = this.f2005c;
            this.f2012m = D.c.of(windowInsets.getStableInsetLeft(), windowInsets.getStableInsetTop(), windowInsets.getStableInsetRight(), windowInsets.getStableInsetBottom());
        }
        return this.f2012m;
    }

    @Override // M.e1
    public boolean m() {
        return this.f2005c.isConsumed();
    }

    @Override // M.e1
    public void setStableInsets(D.c cVar) {
        this.f2012m = cVar;
    }

    public a1(h1 h1Var, a1 a1Var) {
        super(h1Var, a1Var);
        this.f2012m = null;
        this.f2012m = a1Var.f2012m;
    }
}
