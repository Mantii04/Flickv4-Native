package f1;

import android.media.MediaRouter2;
import android.media.MediaRouter2$ControllerCallback;

/* renamed from: f1.l, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0905l extends MediaRouter2$ControllerCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0913t f14267a;

    public C0905l(C0913t c0913t) {
        this.f14267a = c0913t;
    }

    public void onControllerUpdated(MediaRouter2.RoutingController routingController) {
        this.f14267a.b(routingController);
    }
}
