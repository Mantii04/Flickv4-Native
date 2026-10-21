package M;

/* loaded from: classes.dex */
public abstract class Y0 {

    /* renamed from: a, reason: collision with root package name */
    public final h1 f1993a;

    /* renamed from: b, reason: collision with root package name */
    public D.c[] f1994b;

    public Y0() {
        this(new h1((h1) null));
    }

    public abstract h1 a();

    public final void applyInsetTypes() {
        D.c[] cVarArr = this.f1994b;
        if (cVarArr != null) {
            D.c cVar = cVarArr[0];
            D.c cVar2 = cVarArr[1];
            h1 h1Var = this.f1993a;
            if (cVar2 == null) {
                cVar2 = h1Var.getInsets(2);
            }
            if (cVar == null) {
                cVar = h1Var.getInsets(1);
            }
            f(D.c.max(cVar, cVar2));
            D.c cVar3 = this.f1994b[f1.a(16)];
            if (cVar3 != null) {
                e(cVar3);
            }
            D.c cVar4 = this.f1994b[f1.a(32)];
            if (cVar4 != null) {
                c(cVar4);
            }
            D.c cVar5 = this.f1994b[f1.a(64)];
            if (cVar5 != null) {
                g(cVar5);
            }
        }
    }

    public void b(int i2, D.c cVar) {
        if (this.f1994b == null) {
            this.f1994b = new D.c[9];
        }
        for (int i7 = 1; i7 <= 256; i7 <<= 1) {
            if ((i2 & i7) != 0) {
                this.f1994b[f1.a(i7)] = cVar;
            }
        }
    }

    public abstract void d(D.c cVar);

    public abstract void f(D.c cVar);

    public Y0(h1 h1Var) {
        this.f1993a = h1Var;
    }

    public void c(D.c cVar) {
    }

    public void e(D.c cVar) {
    }

    public void g(D.c cVar) {
    }
}
