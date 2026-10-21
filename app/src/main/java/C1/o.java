package C1;

/* loaded from: classes.dex */
public final class o implements B1.B {

    /* renamed from: c, reason: collision with root package name */
    public final androidx.lifecycle.E f436c = new androidx.lifecycle.E();

    /* renamed from: d, reason: collision with root package name */
    public final M1.g f437d = M1.g.create();

    public o() {
        markState(B1.B.f144b);
    }

    public void markState(B1.A a7) {
        this.f436c.postValue(a7);
        boolean z6 = a7 instanceof B1.z;
        M1.g gVar = this.f437d;
        if (z6) {
            gVar.set((B1.z) a7);
        } else if (a7 instanceof B1.x) {
            gVar.setException(((B1.x) a7).getThrowable());
        }
    }
}
