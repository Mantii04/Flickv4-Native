package P5;

/* loaded from: classes2.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    public final String f2738a;

    /* renamed from: b, reason: collision with root package name */
    public final M5.e f2739b;

    public f(String value, M5.e range) {
        kotlin.jvm.internal.j.checkNotNullParameter(value, "value");
        kotlin.jvm.internal.j.checkNotNullParameter(range, "range");
        this.f2738a = value;
        this.f2739b = range;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return kotlin.jvm.internal.j.areEqual(this.f2738a, fVar.f2738a) && kotlin.jvm.internal.j.areEqual(this.f2739b, fVar.f2739b);
    }

    public int hashCode() {
        return this.f2739b.hashCode() + (this.f2738a.hashCode() * 31);
    }

    public String toString() {
        return "MatchGroup(value=" + this.f2738a + ", range=" + this.f2739b + ')';
    }
}
