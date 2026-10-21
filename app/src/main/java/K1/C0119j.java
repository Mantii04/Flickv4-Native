package K1;

/* renamed from: K1.j, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0119j {

    /* renamed from: a, reason: collision with root package name */
    public final String f1639a;

    /* renamed from: b, reason: collision with root package name */
    public final int f1640b;

    /* renamed from: c, reason: collision with root package name */
    public final int f1641c;

    public C0119j(String workSpecId, int i2, int i7) {
        kotlin.jvm.internal.j.checkNotNullParameter(workSpecId, "workSpecId");
        this.f1639a = workSpecId;
        this.f1640b = i2;
        this.f1641c = i7;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0119j)) {
            return false;
        }
        C0119j c0119j = (C0119j) obj;
        return kotlin.jvm.internal.j.areEqual(this.f1639a, c0119j.f1639a) && this.f1640b == c0119j.f1640b && this.f1641c == c0119j.f1641c;
    }

    public final int getGeneration() {
        return this.f1640b;
    }

    public int hashCode() {
        return (((this.f1639a.hashCode() * 31) + this.f1640b) * 31) + this.f1641c;
    }

    public String toString() {
        return "SystemIdInfo(workSpecId=" + this.f1639a + ", generation=" + this.f1640b + ", systemId=" + this.f1641c + ')';
    }
}
