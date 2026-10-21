package androidx.mediarouter.app;

import f1.C0906l0;

/* renamed from: androidx.mediarouter.app.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0598b extends f1.M {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MediaRouteButton f7766a;

    public C0598b(MediaRouteButton mediaRouteButton) {
        this.f7766a = mediaRouteButton;
    }

    @Override // f1.M
    public void onProviderAdded(f1.X x6, f1.S s6) {
        this.f7766a.b();
    }

    @Override // f1.M
    public void onProviderChanged(f1.X x6, f1.S s6) {
        this.f7766a.b();
    }

    @Override // f1.M
    public void onProviderRemoved(f1.X x6, f1.S s6) {
        this.f7766a.b();
    }

    @Override // f1.M
    public void onRouteAdded(f1.X x6, f1.U u6) {
        this.f7766a.b();
    }

    @Override // f1.M
    public void onRouteChanged(f1.X x6, f1.U u6) {
        this.f7766a.b();
    }

    @Override // f1.M
    public void onRouteRemoved(f1.X x6, f1.U u6) {
        this.f7766a.b();
    }

    @Override // f1.M
    public void onRouteSelected(f1.X x6, f1.U u6) {
        this.f7766a.b();
    }

    @Override // f1.M
    public void onRouteUnselected(f1.X x6, f1.U u6) {
        this.f7766a.b();
    }

    @Override // f1.M
    public void onRouterParamsChanged(f1.X x6, C0906l0 c0906l0) {
        boolean z6 = c0906l0 != null ? c0906l0.getExtras().getBoolean("androidx.mediarouter.media.MediaRouterParams.FIXED_CAST_ICON") : false;
        MediaRouteButton mediaRouteButton = this.f7766a;
        if (mediaRouteButton.f7695n != z6) {
            mediaRouteButton.f7695n = z6;
            mediaRouteButton.refreshDrawableState();
        }
    }
}
