package f1;

import android.media.MediaRouter;

/* loaded from: classes.dex */
public final class E0 extends F {

    /* renamed from: a, reason: collision with root package name */
    public final MediaRouter.RouteInfo f14129a;

    public E0(MediaRouter.RouteInfo routeInfo) {
        this.f14129a = routeInfo;
    }

    @Override // f1.F
    public void onSetVolume(int i2) {
        AbstractC0886b0.requestSetVolume(this.f14129a, i2);
    }

    @Override // f1.F
    public void onUpdateVolume(int i2) {
        AbstractC0886b0.requestUpdateVolume(this.f14129a, i2);
    }
}
