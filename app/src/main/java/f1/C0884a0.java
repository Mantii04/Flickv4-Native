package f1;

import android.media.MediaRouter;

/* renamed from: f1.a0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0884a0 extends MediaRouter.Callback {

    /* renamed from: a, reason: collision with root package name */
    public final Z f14216a;

    public C0884a0(Z z6) {
        this.f14216a = z6;
    }

    @Override // android.media.MediaRouter.Callback
    public void onRouteAdded(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
        ((H0) this.f14216a).onRouteAdded(routeInfo);
    }

    @Override // android.media.MediaRouter.Callback
    public void onRouteChanged(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
        ((H0) this.f14216a).onRouteChanged(routeInfo);
    }

    @Override // android.media.MediaRouter.Callback
    public void onRouteGrouped(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo, MediaRouter.RouteGroup routeGroup, int i2) {
        ((H0) this.f14216a).onRouteGrouped(routeInfo, routeGroup, i2);
    }

    @Override // android.media.MediaRouter.Callback
    public void onRouteRemoved(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
        ((H0) this.f14216a).onRouteRemoved(routeInfo);
    }

    @Override // android.media.MediaRouter.Callback
    public void onRouteSelected(MediaRouter mediaRouter, int i2, MediaRouter.RouteInfo routeInfo) {
        ((H0) this.f14216a).onRouteSelected(i2, routeInfo);
    }

    @Override // android.media.MediaRouter.Callback
    public void onRouteUngrouped(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo, MediaRouter.RouteGroup routeGroup) {
        ((H0) this.f14216a).onRouteUngrouped(routeInfo, routeGroup);
    }

    @Override // android.media.MediaRouter.Callback
    public void onRouteUnselected(MediaRouter mediaRouter, int i2, MediaRouter.RouteInfo routeInfo) {
        ((H0) this.f14216a).onRouteUnselected(i2, routeInfo);
    }

    @Override // android.media.MediaRouter.Callback
    public void onRouteVolumeChanged(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
        ((H0) this.f14216a).onRouteVolumeChanged(routeInfo);
    }
}
