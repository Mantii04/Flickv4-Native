package f1;

import android.media.MediaRouter;

/* renamed from: f1.e0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0892e0 extends MediaRouter.VolumeCallback {

    /* renamed from: a, reason: collision with root package name */
    public final InterfaceC0890d0 f14225a;

    public C0892e0(InterfaceC0890d0 interfaceC0890d0) {
        this.f14225a = interfaceC0890d0;
    }

    @Override // android.media.MediaRouter.VolumeCallback
    public void onVolumeSetRequest(MediaRouter.RouteInfo routeInfo, int i2) {
        this.f14225a.onVolumeSetRequest(routeInfo, i2);
    }

    @Override // android.media.MediaRouter.VolumeCallback
    public void onVolumeUpdateRequest(MediaRouter.RouteInfo routeInfo, int i2) {
        this.f14225a.onVolumeUpdateRequest(routeInfo, i2);
    }
}
