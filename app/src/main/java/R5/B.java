package R5;

/* loaded from: classes2.dex */
public final class B {

    /* renamed from: a, reason: collision with root package name */
    public final Object f3134a;

    /* renamed from: b, reason: collision with root package name */
    public final H5.l f3135b;

    public B(Object obj, H5.l lVar) {
        this.f3134a = obj;
        this.f3135b = lVar;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof B)) {
            return false;
        }
        B b7 = (B) obj;
        return kotlin.jvm.internal.j.areEqual(this.f3134a, b7.f3134a) && kotlin.jvm.internal.j.areEqual(this.f3135b, b7.f3135b);
    }

    public int hashCode() {
        Object obj = this.f3134a;
        return this.f3135b.hashCode() + ((obj == null ? 0 : obj.hashCode()) * 31);
    }

    public String toString() {
        return "CompletedWithCancellation(result=" + this.f3134a + ", onCancellation=" + this.f3135b + ')';
    }
}
