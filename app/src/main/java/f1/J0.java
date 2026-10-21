package f1;

import android.content.Context;
import android.media.MediaRouter;

/* loaded from: classes.dex */
public class J0 extends I0 {
    public J0(Context context, K0 k02) {
        super(context, k02);
    }

    @Override // f1.I0
    public boolean isConnecting(F0 f02) {
        return f02.f14130a.isConnecting();
    }

    @Override // f1.I0, f1.H0
    public void onBuildSystemRouteDescriptor(F0 f02, C0914u c0914u) {
        super.onBuildSystemRouteDescriptor(f02, c0914u);
        CharSequence description = f02.f14130a.getDescription();
        if (description != null) {
            c0914u.setDescription(description.toString());
        }
    }

    @Override // f1.H0
    public void selectRoute(MediaRouter.RouteInfo routeInfo) {
        AbstractC0894f0.selectRoute(this.f14148j, 8388611, routeInfo);
    }

    @Override // f1.H0
    public void updateCallback() {
        boolean z6 = this.f14154p;
        MediaRouter.Callback callback = this.f14149k;
        MediaRouter mediaRouter = this.f14148j;
        if (z6) {
            AbstractC0894f0.removeCallback(mediaRouter, callback);
        }
        this.f14154p = true;
        mediaRouter.addCallback(this.f14152n, callback, (this.f14153o ? 1 : 0) | 2);
    }

    @Override // f1.H0
    public void updateUserRouteProperties(G0 g02) {
        super.updateUserRouteProperties(g02);
        g02.f14142b.setDescription(g02.f14141a.getDescription());
    }

    @Override // f1.H0
    public MediaRouter.RouteInfo getDefaultRoute() {
        return this.f14148j.getDefaultRoute();
    }
}
