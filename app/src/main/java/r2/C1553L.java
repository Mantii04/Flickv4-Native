package r2;

/* renamed from: r2.L, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1553L {

    /* renamed from: a, reason: collision with root package name */
    public final String f19743a;

    public C1553L(String str) {
        this.f19743a = str;
    }

    public String buildHeader() {
        return this.f19743a;
    }

    public boolean equals(Object obj) {
        if (obj instanceof C1553L) {
            return this.f19743a.equals(((C1553L) obj).f19743a);
        }
        return false;
    }

    public int hashCode() {
        return this.f19743a.hashCode();
    }

    public String toString() {
        return A.i.o(new StringBuilder("StringHeaderFactory{value='"), this.f19743a, "'}");
    }
}
