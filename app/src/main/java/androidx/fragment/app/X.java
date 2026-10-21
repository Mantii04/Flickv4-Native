package androidx.fragment.app;

/* loaded from: classes.dex */
public final class X extends O {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AbstractC0467i0 f6170b;

    public X(AbstractC0467i0 abstractC0467i0) {
        this.f6170b = abstractC0467i0;
    }

    @Override // androidx.fragment.app.O
    public C instantiate(ClassLoader classLoader, String str) {
        AbstractC0467i0 abstractC0467i0 = this.f6170b;
        return abstractC0467i0.getHost().instantiate(abstractC0467i0.getHost().f6150e, str, null);
    }
}
