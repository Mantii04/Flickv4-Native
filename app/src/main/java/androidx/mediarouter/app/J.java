package androidx.mediarouter.app;

/* loaded from: classes.dex */
public final class J extends f1.M {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Q f7678a;

    public J(Q q6) {
        this.f7678a = q6;
    }

    @Override // f1.M
    public void onRouteAdded(f1.X x6, f1.U u6) {
        this.f7678a.refreshRoutes();
    }

    @Override // f1.M
    public void onRouteChanged(f1.X x6, f1.U u6) {
        this.f7678a.refreshRoutes();
    }

    @Override // f1.M
    public void onRouteRemoved(f1.X x6, f1.U u6) {
        this.f7678a.refreshRoutes();
    }

    @Override // f1.M
    public void onRouteSelected(f1.X x6, f1.U u6) {
        this.f7678a.dismiss();
    }
}
