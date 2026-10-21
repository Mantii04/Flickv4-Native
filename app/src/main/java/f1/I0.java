package f1;

import android.content.Context;
import android.media.MediaRouter;
import android.view.Display;

/* loaded from: classes.dex */
public abstract class I0 extends H0 implements InterfaceC0896g0 {
    public I0(Context context, K0 k02) {
        super(context, k02);
    }

    @Override // f1.H0
    public MediaRouter.Callback createCallback() {
        return AbstractC0902j0.createCallback(this);
    }

    public abstract boolean isConnecting(F0 f02);

    @Override // f1.H0
    public void onBuildSystemRouteDescriptor(F0 f02, C0914u c0914u) {
        super.onBuildSystemRouteDescriptor(f02, c0914u);
        if (!AbstractC0900i0.isEnabled(f02.f14130a)) {
            c0914u.setEnabled(false);
        }
        if (isConnecting(f02)) {
            c0914u.setConnectionState(1);
        }
        Display presentationDisplay = AbstractC0900i0.getPresentationDisplay(f02.f14130a);
        if (presentationDisplay != null) {
            c0914u.setPresentationDisplayId(presentationDisplay.getDisplayId());
        }
    }

    public void onRoutePresentationDisplayChanged(MediaRouter.RouteInfo routeInfo) {
        int findSystemRouteRecord = findSystemRouteRecord(routeInfo);
        if (findSystemRouteRecord >= 0) {
            F0 f02 = (F0) this.f14155q.get(findSystemRouteRecord);
            Display presentationDisplay = AbstractC0900i0.getPresentationDisplay(routeInfo);
            int displayId = presentationDisplay != null ? presentationDisplay.getDisplayId() : -1;
            if (displayId != f02.f14132c.getPresentationDisplayId()) {
                f02.f14132c = new C0914u(f02.f14132c).setPresentationDisplayId(displayId).build();
                publishRoutes();
            }
        }
    }
}
