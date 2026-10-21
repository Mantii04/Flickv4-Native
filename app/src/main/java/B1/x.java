package B1;

/* loaded from: classes.dex */
public final class x extends A {

    /* renamed from: a, reason: collision with root package name */
    public final Throwable f197a;

    public x(Throwable th) {
        this.f197a = th;
    }

    public Throwable getThrowable() {
        return this.f197a;
    }

    public String toString() {
        return "FAILURE (" + this.f197a.getMessage() + ")";
    }
}
