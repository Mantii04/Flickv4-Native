package T5;

/* loaded from: classes2.dex */
public final class g extends i {

    /* renamed from: a, reason: collision with root package name */
    public final Throwable f3731a;

    public g(Throwable th) {
        this.f3731a = th;
    }

    public boolean equals(Object obj) {
        if (obj instanceof g) {
            return kotlin.jvm.internal.j.areEqual(this.f3731a, ((g) obj).f3731a);
        }
        return false;
    }

    public int hashCode() {
        Throwable th = this.f3731a;
        if (th != null) {
            return th.hashCode();
        }
        return 0;
    }

    @Override // T5.i
    public String toString() {
        return "Closed(" + this.f3731a + ')';
    }
}
