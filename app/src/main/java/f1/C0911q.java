package f1;

import android.media.MediaRoute2Info;
import android.media.MediaRouter2$RouteCallback;
import java.util.List;

/* renamed from: f1.q, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0911q extends MediaRouter2$RouteCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0913t f14297a;

    public C0911q(C0913t c0913t) {
        this.f14297a = c0913t;
    }

    public void onRoutesAdded(List<MediaRoute2Info> list) {
        this.f14297a.refreshRoutes();
    }

    public void onRoutesChanged(List<MediaRoute2Info> list) {
        this.f14297a.refreshRoutes();
    }

    public void onRoutesRemoved(List<MediaRoute2Info> list) {
        this.f14297a.refreshRoutes();
    }
}
