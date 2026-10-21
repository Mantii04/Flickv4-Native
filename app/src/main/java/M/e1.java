package M;

import android.view.View;

/* loaded from: classes.dex */
public class e1 {

    /* renamed from: b, reason: collision with root package name */
    public static final h1 f2025b = new U0().build().consumeDisplayCutout().consumeStableInsets().consumeSystemWindowInsets();

    /* renamed from: a, reason: collision with root package name */
    public final h1 f2026a;

    public e1(h1 h1Var) {
        this.f2026a = h1Var;
    }

    public h1 a() {
        return this.f2026a;
    }

    public h1 b() {
        return this.f2026a;
    }

    public h1 c() {
        return this.f2026a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e1)) {
            return false;
        }
        e1 e1Var = (e1) obj;
        return n() == e1Var.n() && m() == e1Var.m() && L.c.equals(j(), e1Var.j()) && L.c.equals(h(), e1Var.h()) && L.c.equals(f(), e1Var.f());
    }

    public C0182q f() {
        return null;
    }

    public D.c g() {
        return j();
    }

    public D.c getInsets(int i2) {
        return D.c.f807e;
    }

    public D.c h() {
        return D.c.f807e;
    }

    public int hashCode() {
        return L.c.hash(Boolean.valueOf(n()), Boolean.valueOf(m()), j(), h(), f());
    }

    public D.c i() {
        return j();
    }

    public D.c j() {
        return D.c.f807e;
    }

    public D.c k() {
        return j();
    }

    public h1 l(int i2, int i7, int i8, int i9) {
        return f2025b;
    }

    public boolean m() {
        return false;
    }

    public boolean n() {
        return false;
    }

    public void d(View view) {
    }

    public void e(h1 h1Var) {
    }

    public void o(D.c cVar) {
    }

    public void p(h1 h1Var) {
    }

    public void setOverriddenInsets(D.c[] cVarArr) {
    }

    public void setStableInsets(D.c cVar) {
    }
}
