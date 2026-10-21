package f1;

import M.l1;
import android.media.MediaRoute2Info;
import android.media.MediaRouter2;
import android.media.MediaRouter2$TransferCallback;
import android.util.Log;
import java.util.List;

/* renamed from: f1.s, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0912s extends MediaRouter2$TransferCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0913t f14299a;

    public C0912s(C0913t c0913t) {
        this.f14299a = c0913t;
    }

    public void onStop(MediaRouter2.RoutingController routingController) {
        F f3 = (F) this.f14299a.f14303k.remove(routingController);
        if (f3 != null) {
            this.f14299a.f14302j.onReleaseController(f3);
            return;
        }
        Log.w("MR2Provider", "onStop: No matching routeController found. routingController=" + routingController);
    }

    public void onTransfer(MediaRouter2.RoutingController routingController, MediaRouter2.RoutingController routingController2) {
        MediaRouter2.RoutingController systemController;
        List selectedRoutes;
        String id;
        this.f14299a.f14303k.remove(routingController);
        systemController = this.f14299a.f14301i.getSystemController();
        if (routingController2 == systemController) {
            this.f14299a.f14302j.onSelectFallbackRoute(3);
            return;
        }
        selectedRoutes = routingController2.getSelectedRoutes();
        if (selectedRoutes.isEmpty()) {
            Log.w("MR2Provider", "Selected routes are empty. This shouldn't happen.");
            return;
        }
        id = l1.c(selectedRoutes.get(0)).getId();
        this.f14299a.f14303k.put(routingController2, new C0909o(this.f14299a, routingController2, id));
        this.f14299a.f14302j.onSelectRoute(id, 3);
        this.f14299a.b(routingController2);
    }

    public void onTransferFailure(MediaRoute2Info mediaRoute2Info) {
        Log.w("MR2Provider", "Transfer failed. requestedRoute=" + mediaRoute2Info);
    }
}
