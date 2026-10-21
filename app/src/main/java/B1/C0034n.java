package B1;

/* renamed from: B1.n, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0034n extends AbstractC0037q {

    /* renamed from: a, reason: collision with root package name */
    public final C0028h f187a;

    public C0034n(C0028h c0028h) {
        this.f187a = c0028h;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C0034n.class != obj.getClass()) {
            return false;
        }
        return this.f187a.equals(((C0034n) obj).f187a);
    }

    public C0028h getOutputData() {
        return this.f187a;
    }

    public int hashCode() {
        return this.f187a.hashCode() + (C0034n.class.getName().hashCode() * 31);
    }

    public String toString() {
        return "Failure {mOutputData=" + this.f187a + '}';
    }

    public C0034n() {
        this(C0028h.f181c);
    }
}
