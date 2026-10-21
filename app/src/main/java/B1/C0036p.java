package B1;

/* renamed from: B1.p, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0036p extends AbstractC0037q {

    /* renamed from: a, reason: collision with root package name */
    public final C0028h f188a;

    public C0036p(C0028h c0028h) {
        this.f188a = c0028h;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C0036p.class != obj.getClass()) {
            return false;
        }
        return this.f188a.equals(((C0036p) obj).f188a);
    }

    public C0028h getOutputData() {
        return this.f188a;
    }

    public int hashCode() {
        return this.f188a.hashCode() + (C0036p.class.getName().hashCode() * 31);
    }

    public String toString() {
        return "Success {mOutputData=" + this.f188a + '}';
    }

    public C0036p() {
        this(C0028h.f181c);
    }
}
