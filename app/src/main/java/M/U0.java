package M;

import android.os.Build;

/* loaded from: classes.dex */
public final class U0 {

    /* renamed from: a, reason: collision with root package name */
    public final Y0 f1979a;

    public U0() {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 30) {
            this.f1979a = new X0();
        } else if (i2 >= 29) {
            this.f1979a = new W0();
        } else {
            this.f1979a = new V0();
        }
    }

    public h1 build() {
        return this.f1979a.a();
    }

    public U0 setInsets(int i2, D.c cVar) {
        this.f1979a.b(i2, cVar);
        return this;
    }

    @Deprecated
    public U0 setStableInsets(D.c cVar) {
        this.f1979a.d(cVar);
        return this;
    }

    @Deprecated
    public U0 setSystemWindowInsets(D.c cVar) {
        this.f1979a.f(cVar);
        return this;
    }

    public U0(h1 h1Var) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 30) {
            this.f1979a = new X0(h1Var);
        } else if (i2 >= 29) {
            this.f1979a = new W0(h1Var);
        } else {
            this.f1979a = new V0(h1Var);
        }
    }
}
