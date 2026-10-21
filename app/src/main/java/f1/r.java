package f1;

import android.media.MediaRoute2Info;
import android.media.MediaRouter2$RouteCallback;
import java.util.List;

/* loaded from: classes.dex */
public final class r extends MediaRouter2$RouteCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0913t f14298a;

    public r(C0913t c0913t) {
        this.f14298a = c0913t;
    }

    public void onRoutesUpdated(List<MediaRoute2Info> list) {
        this.f14298a.refreshRoutes();
    }
}
