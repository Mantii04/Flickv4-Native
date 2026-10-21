package K1;

/* loaded from: classes.dex */
public final class r {

    /* renamed from: a, reason: collision with root package name */
    public final String f1646a;

    /* renamed from: b, reason: collision with root package name */
    public final int f1647b;

    public r(String workSpecId, int i2) {
        kotlin.jvm.internal.j.checkNotNullParameter(workSpecId, "workSpecId");
        this.f1646a = workSpecId;
        this.f1647b = i2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof r)) {
            return false;
        }
        r rVar = (r) obj;
        return kotlin.jvm.internal.j.areEqual(this.f1646a, rVar.f1646a) && this.f1647b == rVar.f1647b;
    }

    public final int getGeneration() {
        return this.f1647b;
    }

    public final String getWorkSpecId() {
        return this.f1646a;
    }

    public int hashCode() {
        return (this.f1646a.hashCode() * 31) + this.f1647b;
    }

    public String toString() {
        return "WorkGenerationalId(workSpecId=" + this.f1646a + ", generation=" + this.f1647b + ')';
    }
}
