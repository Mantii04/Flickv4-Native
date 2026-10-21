package androidx.concurrent.futures;

/* loaded from: classes.dex */
public final class l extends i {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ m f5222b;

    public l(m mVar) {
        this.f5222b = mVar;
    }

    @Override // androidx.concurrent.futures.i
    public String pendingToString() {
        j jVar = (j) this.f5222b.f5223b.get();
        if (jVar == null) {
            return "Completer object has been garbage collected, future will fail soon";
        }
        return "tag=[" + jVar.f5218a + "]";
    }
}
