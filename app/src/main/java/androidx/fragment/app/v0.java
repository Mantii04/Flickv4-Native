package androidx.fragment.app;

import java.util.ArrayList;

/* loaded from: classes.dex */
public abstract class v0 {

    /* renamed from: a, reason: collision with root package name */
    public ArrayList f6333a;

    /* renamed from: b, reason: collision with root package name */
    public int f6334b;

    /* renamed from: c, reason: collision with root package name */
    public int f6335c;

    /* renamed from: d, reason: collision with root package name */
    public int f6336d;

    /* renamed from: e, reason: collision with root package name */
    public int f6337e;

    /* renamed from: f, reason: collision with root package name */
    public int f6338f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f6339g;

    /* renamed from: h, reason: collision with root package name */
    public String f6340h;

    /* renamed from: i, reason: collision with root package name */
    public int f6341i;

    /* renamed from: j, reason: collision with root package name */
    public CharSequence f6342j;

    /* renamed from: k, reason: collision with root package name */
    public int f6343k;

    /* renamed from: l, reason: collision with root package name */
    public CharSequence f6344l;

    /* renamed from: m, reason: collision with root package name */
    public ArrayList f6345m;

    /* renamed from: n, reason: collision with root package name */
    public ArrayList f6346n;

    /* renamed from: o, reason: collision with root package name */
    public boolean f6347o;

    public final void a(u0 u0Var) {
        this.f6333a.add(u0Var);
        u0Var.f6326d = this.f6334b;
        u0Var.f6327e = this.f6335c;
        u0Var.f6328f = this.f6336d;
        u0Var.f6329g = this.f6337e;
    }

    public v0 add(C c7, String str) {
        b(0, c7, str, 1);
        return this;
    }

    public abstract void b(int i2, C c7, String str, int i7);

    public abstract int commit();

    public abstract int commitAllowingStateLoss();

    public abstract void commitNowAllowingStateLoss();

    public v0 disallowAddToBackStack() {
        if (this.f6339g) {
            throw new IllegalStateException("This transaction is already being added to the back stack");
        }
        return this;
    }

    public v0 remove(C c7) {
        a(new u0(3, c7));
        return this;
    }

    public v0 replace(int i2, C c7) {
        return replace(i2, c7, null);
    }

    public v0 setReorderingAllowed(boolean z6) {
        this.f6347o = z6;
        return this;
    }

    public v0 add(int i2, C c7) {
        b(i2, c7, null, 1);
        return this;
    }

    public v0 replace(int i2, C c7, String str) {
        if (i2 == 0) {
            throw new IllegalArgumentException("Must use non-zero containerViewId");
        }
        b(i2, c7, str, 2);
        return this;
    }

    public v0 add(int i2, C c7, String str) {
        b(i2, c7, str, 1);
        return this;
    }
}
