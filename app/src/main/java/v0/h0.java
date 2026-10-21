package v0;

/* loaded from: classes.dex */
public final class h0 {

    /* renamed from: c, reason: collision with root package name */
    public static final h0 f20473c = new h0(0, 0);

    /* renamed from: a, reason: collision with root package name */
    public final long f20474a;

    /* renamed from: b, reason: collision with root package name */
    public final long f20475b;

    public h0(long j7, long j8) {
        this.f20474a = j7;
        this.f20475b = j8;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && h0.class == obj.getClass()) {
            h0 h0Var = (h0) obj;
            if (this.f20474a == h0Var.f20474a && this.f20475b == h0Var.f20475b) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return (((int) this.f20474a) * 31) + ((int) this.f20475b);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("[timeUs=");
        sb.append(this.f20474a);
        sb.append(", position=");
        return A.i.n(sb, this.f20475b, "]");
    }
}
