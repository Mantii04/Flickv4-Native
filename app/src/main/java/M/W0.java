package M;

import android.view.WindowInsets;

/* loaded from: classes.dex */
public class W0 extends Y0 {

    /* renamed from: c, reason: collision with root package name */
    public final WindowInsets.Builder f1987c;

    public W0() {
        this.f1987c = I3.v.h();
    }

    @Override // M.Y0
    public h1 a() {
        WindowInsets build;
        applyInsetTypes();
        build = this.f1987c.build();
        h1 windowInsetsCompat = h1.toWindowInsetsCompat(build);
        windowInsetsCompat.f2030a.setOverriddenInsets(this.f1994b);
        return windowInsetsCompat;
    }

    @Override // M.Y0
    public void c(D.c cVar) {
        this.f1987c.setMandatorySystemGestureInsets(cVar.toPlatformInsets());
    }

    @Override // M.Y0
    public void d(D.c cVar) {
        this.f1987c.setStableInsets(cVar.toPlatformInsets());
    }

    @Override // M.Y0
    public void e(D.c cVar) {
        this.f1987c.setSystemGestureInsets(cVar.toPlatformInsets());
    }

    @Override // M.Y0
    public void f(D.c cVar) {
        this.f1987c.setSystemWindowInsets(cVar.toPlatformInsets());
    }

    @Override // M.Y0
    public void g(D.c cVar) {
        this.f1987c.setTappableElementInsets(cVar.toPlatformInsets());
    }

    public W0(h1 h1Var) {
        super(h1Var);
        WindowInsets.Builder h7;
        WindowInsets windowInsets = h1Var.toWindowInsets();
        if (windowInsets != null) {
            h7 = I3.v.i(windowInsets);
        } else {
            h7 = I3.v.h();
        }
        this.f1987c = h7;
    }
}
