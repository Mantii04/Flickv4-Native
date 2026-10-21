package Q3;

/* loaded from: classes2.dex */
public final class i0 extends g0 {

    /* renamed from: a, reason: collision with root package name */
    public final Object f2888a;

    /* renamed from: b, reason: collision with root package name */
    public int f2889b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ j0 f2890c;

    public i0(j0 j0Var, int i2) {
        this.f2890c = j0Var;
        this.f2888a = j0Var.f2893a[i2];
        this.f2889b = i2;
    }

    public int getCount() {
        int i2 = this.f2889b;
        j0 j0Var = this.f2890c;
        Object obj = this.f2888a;
        if (i2 == -1 || i2 >= j0Var.f2895c || !P3.u.equal(obj, j0Var.f2893a[i2])) {
            this.f2889b = j0Var.b(obj);
        }
        int i7 = this.f2889b;
        if (i7 == -1) {
            return 0;
        }
        return j0Var.f2894b[i7];
    }

    public Object getElement() {
        return this.f2888a;
    }
}
