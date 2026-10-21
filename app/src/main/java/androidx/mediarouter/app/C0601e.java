package androidx.mediarouter.app;

/* renamed from: androidx.mediarouter.app.e, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0601e extends f1.M {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ DialogC0605i f7780a;

    public C0601e(DialogC0605i dialogC0605i) {
        this.f7780a = dialogC0605i;
    }

    @Override // f1.M
    public void onRouteAdded(f1.X x6, f1.U u6) {
        this.f7780a.refreshRoutes();
    }

    @Override // f1.M
    public void onRouteChanged(f1.X x6, f1.U u6) {
        this.f7780a.refreshRoutes();
    }

    @Override // f1.M
    public void onRouteRemoved(f1.X x6, f1.U u6) {
        this.f7780a.refreshRoutes();
    }

    @Override // f1.M
    public void onRouteSelected(f1.X x6, f1.U u6) {
        this.f7780a.dismiss();
    }
}
