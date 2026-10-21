package m1;

/* renamed from: m1.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1269a {

    /* renamed from: a, reason: collision with root package name */
    public int f18342a;

    /* renamed from: b, reason: collision with root package name */
    public int f18343b;

    /* renamed from: c, reason: collision with root package name */
    public Object f18344c;

    /* renamed from: d, reason: collision with root package name */
    public int f18345d;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1269a)) {
            return false;
        }
        C1269a c1269a = (C1269a) obj;
        int i2 = this.f18342a;
        if (i2 != c1269a.f18342a) {
            return false;
        }
        if (i2 == 8 && Math.abs(this.f18345d - this.f18343b) == 1 && this.f18345d == c1269a.f18343b && this.f18343b == c1269a.f18345d) {
            return true;
        }
        if (this.f18345d != c1269a.f18345d || this.f18343b != c1269a.f18343b) {
            return false;
        }
        Object obj2 = this.f18344c;
        if (obj2 != null) {
            if (!obj2.equals(c1269a.f18344c)) {
                return false;
            }
        } else if (c1269a.f18344c != null) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return (((this.f18342a * 31) + this.f18343b) * 31) + this.f18345d;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("[");
        int i2 = this.f18342a;
        sb.append(i2 != 1 ? i2 != 2 ? i2 != 4 ? i2 != 8 ? "??" : "mv" : "up" : "rm" : "add");
        sb.append(",s:");
        sb.append(this.f18343b);
        sb.append("c:");
        sb.append(this.f18345d);
        sb.append(",p:");
        sb.append(this.f18344c);
        sb.append("]");
        return sb.toString();
    }
}
