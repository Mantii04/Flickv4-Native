package v0;

/* loaded from: classes.dex */
public final class e0 {

    /* renamed from: a, reason: collision with root package name */
    public final h0 f20453a;

    /* renamed from: b, reason: collision with root package name */
    public final h0 f20454b;

    public e0(h0 h0Var) {
        this(h0Var, h0Var);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && e0.class == obj.getClass()) {
            e0 e0Var = (e0) obj;
            if (this.f20453a.equals(e0Var.f20453a) && this.f20454b.equals(e0Var.f20454b)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return this.f20454b.hashCode() + (this.f20453a.hashCode() * 31);
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder("[");
        h0 h0Var = this.f20453a;
        sb.append(h0Var);
        h0 h0Var2 = this.f20454b;
        if (h0Var.equals(h0Var2)) {
            str = "";
        } else {
            str = ", " + h0Var2;
        }
        return A.i.o(sb, str, "]");
    }

    public e0(h0 h0Var, h0 h0Var2) {
        this.f20453a = (h0) P3.v.checkNotNull(h0Var);
        this.f20454b = (h0) P3.v.checkNotNull(h0Var2);
    }
}
