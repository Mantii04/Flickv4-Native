package f1;

import android.media.MediaRoute2Info;
import android.media.MediaRouter2;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Messenger;
import android.util.Log;
import android.util.SparseArray;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

/* renamed from: f1.o, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0909o extends AbstractC0881C {

    /* renamed from: f, reason: collision with root package name */
    public final String f14274f;

    /* renamed from: g, reason: collision with root package name */
    public final MediaRouter2.RoutingController f14275g;

    /* renamed from: h, reason: collision with root package name */
    public final Messenger f14276h;

    /* renamed from: i, reason: collision with root package name */
    public final Messenger f14277i;

    /* renamed from: k, reason: collision with root package name */
    public final Handler f14279k;

    /* renamed from: o, reason: collision with root package name */
    public C0915v f14283o;

    /* renamed from: p, reason: collision with root package name */
    public final /* synthetic */ C0913t f14284p;

    /* renamed from: j, reason: collision with root package name */
    public final SparseArray f14278j = new SparseArray();

    /* renamed from: l, reason: collision with root package name */
    public final AtomicInteger f14280l = new AtomicInteger(1);

    /* renamed from: m, reason: collision with root package name */
    public final RunnableC0883a f14281m = new RunnableC0883a(this, 1);

    /* renamed from: n, reason: collision with root package name */
    public int f14282n = -1;

    public C0909o(C0913t c0913t, MediaRouter2.RoutingController routingController, String str) {
        Bundle controlHints;
        this.f14284p = c0913t;
        this.f14275g = routingController;
        this.f14274f = str;
        int i2 = C0913t.f14300r;
        controlHints = routingController.getControlHints();
        Messenger messenger = controlHints == null ? null : (Messenger) controlHints.getParcelable("androidx.mediarouter.media.KEY_MESSENGER");
        this.f14276h = messenger;
        this.f14277i = messenger != null ? new Messenger(new HandlerC0908n(this)) : null;
        this.f14279k = new Handler(Looper.getMainLooper());
    }

    public String getGroupRouteId() {
        String id;
        C0915v c0915v = this.f14283o;
        if (c0915v != null) {
            return c0915v.getId();
        }
        id = this.f14275g.getId();
        return id;
    }

    @Override // f1.AbstractC0881C
    public void onAddMemberRoute(String str) {
        if (str == null || str.isEmpty()) {
            Log.w("MR2Provider", "onAddMemberRoute: Ignoring null or empty routeId.");
            return;
        }
        MediaRoute2Info a7 = this.f14284p.a(str);
        if (a7 == null) {
            Log.w("MR2Provider", "onAddMemberRoute: Specified route not found. routeId=".concat(str));
        } else {
            this.f14275g.selectRoute(a7);
        }
    }

    @Override // f1.F
    public void onRelease() {
        this.f14275g.release();
    }

    @Override // f1.AbstractC0881C
    public void onRemoveMemberRoute(String str) {
        if (str == null || str.isEmpty()) {
            Log.w("MR2Provider", "onRemoveMemberRoute: Ignoring null or empty routeId.");
            return;
        }
        MediaRoute2Info a7 = this.f14284p.a(str);
        if (a7 == null) {
            Log.w("MR2Provider", "onRemoveMemberRoute: Specified route not found. routeId=".concat(str));
        } else {
            this.f14275g.deselectRoute(a7);
        }
    }

    @Override // f1.F
    public void onSetVolume(int i2) {
        MediaRouter2.RoutingController routingController = this.f14275g;
        if (routingController == null) {
            return;
        }
        routingController.setVolume(i2);
        this.f14282n = i2;
        Handler handler = this.f14279k;
        RunnableC0883a runnableC0883a = this.f14281m;
        handler.removeCallbacks(runnableC0883a);
        handler.postDelayed(runnableC0883a, 1000L);
    }

    @Override // f1.AbstractC0881C
    public void onUpdateMemberRoutes(List<String> list) {
        if (list == null || list.isEmpty()) {
            Log.w("MR2Provider", "onUpdateMemberRoutes: Ignoring null or empty routeIds.");
            return;
        }
        String str = list.get(0);
        C0913t c0913t = this.f14284p;
        MediaRoute2Info a7 = c0913t.a(str);
        if (a7 != null) {
            c0913t.f14301i.transferTo(a7);
            return;
        }
        Log.w("MR2Provider", "onUpdateMemberRoutes: Specified route not found. routeId=" + str);
    }

    @Override // f1.F
    public void onUpdateVolume(int i2) {
        int volumeMax;
        MediaRouter2.RoutingController routingController = this.f14275g;
        if (routingController == null) {
            return;
        }
        int i7 = this.f14282n;
        if (i7 < 0) {
            i7 = routingController.getVolume();
        }
        int i8 = i7 + i2;
        volumeMax = this.f14275g.getVolumeMax();
        int max = Math.max(0, Math.min(i8, volumeMax));
        this.f14282n = max;
        this.f14275g.setVolume(max);
        Handler handler = this.f14279k;
        RunnableC0883a runnableC0883a = this.f14281m;
        handler.removeCallbacks(runnableC0883a);
        handler.postDelayed(runnableC0883a, 1000L);
    }
}
