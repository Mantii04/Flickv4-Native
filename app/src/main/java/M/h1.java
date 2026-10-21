package M;

import android.os.Build;
import android.view.View;
import android.view.WindowInsets;

/* loaded from: classes.dex */
public final class h1 {

    /* renamed from: b, reason: collision with root package name */
    public static final h1 f2029b;

    /* renamed from: a, reason: collision with root package name */
    public final e1 f2030a;

    static {
        if (Build.VERSION.SDK_INT >= 30) {
            f2029b = d1.f2022q;
        } else {
            f2029b = e1.f2025b;
        }
    }

    public h1(WindowInsets windowInsets) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 30) {
            this.f2030a = new d1(this, windowInsets);
            return;
        }
        if (i2 >= 29) {
            this.f2030a = new c1(this, windowInsets);
        } else if (i2 >= 28) {
            this.f2030a = new b1(this, windowInsets);
        } else {
            this.f2030a = new a1(this, windowInsets);
        }
    }

    public static D.c a(D.c cVar, int i2, int i7, int i8, int i9) {
        int max = Math.max(0, cVar.f808a - i2);
        int max2 = Math.max(0, cVar.f809b - i7);
        int max3 = Math.max(0, cVar.f810c - i8);
        int max4 = Math.max(0, cVar.f811d - i9);
        return (max == i2 && max2 == i7 && max3 == i8 && max4 == i9) ? cVar : D.c.of(max, max2, max3, max4);
    }

    public static h1 toWindowInsetsCompat(WindowInsets windowInsets) {
        return toWindowInsetsCompat(windowInsets, null);
    }

    @Deprecated
    public h1 consumeDisplayCutout() {
        return this.f2030a.a();
    }

    @Deprecated
    public h1 consumeStableInsets() {
        return this.f2030a.b();
    }

    @Deprecated
    public h1 consumeSystemWindowInsets() {
        return this.f2030a.c();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof h1) {
            return L.c.equals(this.f2030a, ((h1) obj).f2030a);
        }
        return false;
    }

    public C0182q getDisplayCutout() {
        return this.f2030a.f();
    }

    public D.c getInsets(int i2) {
        return this.f2030a.getInsets(i2);
    }

    @Deprecated
    public D.c getStableInsets() {
        return this.f2030a.h();
    }

    @Deprecated
    public D.c getSystemGestureInsets() {
        return this.f2030a.i();
    }

    @Deprecated
    public int getSystemWindowInsetBottom() {
        return this.f2030a.j().f811d;
    }

    @Deprecated
    public int getSystemWindowInsetLeft() {
        return this.f2030a.j().f808a;
    }

    @Deprecated
    public int getSystemWindowInsetRight() {
        return this.f2030a.j().f810c;
    }

    @Deprecated
    public int getSystemWindowInsetTop() {
        return this.f2030a.j().f809b;
    }

    @Deprecated
    public boolean hasSystemWindowInsets() {
        return !this.f2030a.j().equals(D.c.f807e);
    }

    public int hashCode() {
        e1 e1Var = this.f2030a;
        if (e1Var == null) {
            return 0;
        }
        return e1Var.hashCode();
    }

    public h1 inset(int i2, int i7, int i8, int i9) {
        return this.f2030a.l(i2, i7, i8, i9);
    }

    public boolean isConsumed() {
        return this.f2030a.m();
    }

    @Deprecated
    public h1 replaceSystemWindowInsets(int i2, int i7, int i8, int i9) {
        return new U0(this).setSystemWindowInsets(D.c.of(i2, i7, i8, i9)).build();
    }

    public WindowInsets toWindowInsets() {
        e1 e1Var = this.f2030a;
        if (e1Var instanceof Z0) {
            return ((Z0) e1Var).f2005c;
        }
        return null;
    }

    public static h1 toWindowInsetsCompat(WindowInsets windowInsets, View view) {
        h1 h1Var = new h1((WindowInsets) L.h.checkNotNull(windowInsets));
        if (view != null && view.isAttachedToWindow()) {
            h1 rootWindowInsets = AbstractC0181p0.getRootWindowInsets(view);
            e1 e1Var = h1Var.f2030a;
            e1Var.p(rootWindowInsets);
            e1Var.d(view.getRootView());
        }
        return h1Var;
    }

    public h1(h1 h1Var) {
        if (h1Var != null) {
            e1 e1Var = h1Var.f2030a;
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 30 && (e1Var instanceof d1)) {
                this.f2030a = new d1(this, (d1) e1Var);
            } else if (i2 >= 29 && (e1Var instanceof c1)) {
                this.f2030a = new c1(this, (c1) e1Var);
            } else if (i2 >= 28 && (e1Var instanceof b1)) {
                this.f2030a = new b1(this, (b1) e1Var);
            } else if (e1Var instanceof a1) {
                this.f2030a = new a1(this, (a1) e1Var);
            } else if (e1Var instanceof Z0) {
                this.f2030a = new Z0(this, (Z0) e1Var);
            } else {
                this.f2030a = new e1(this);
            }
            e1Var.e(this);
            return;
        }
        this.f2030a = new e1(this);
    }
}
