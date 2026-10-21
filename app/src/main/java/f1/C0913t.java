package f1;

import M.l1;
import android.content.Context;
import android.media.MediaRoute2Info;
import android.media.MediaRouter2;
import android.media.MediaRouter2$RouteCallback;
import android.media.RouteDiscoveryPreference;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.Log;
import androidx.mediarouter.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* renamed from: f1.t, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0913t extends G {

    /* renamed from: r, reason: collision with root package name */
    public static final /* synthetic */ int f14300r = 0;

    /* renamed from: i, reason: collision with root package name */
    public final MediaRouter2 f14301i;

    /* renamed from: j, reason: collision with root package name */
    public final C0897h f14302j;

    /* renamed from: k, reason: collision with root package name */
    public final ArrayMap f14303k;

    /* renamed from: l, reason: collision with root package name */
    public final MediaRouter2$RouteCallback f14304l;

    /* renamed from: m, reason: collision with root package name */
    public final C0912s f14305m;

    /* renamed from: n, reason: collision with root package name */
    public final C0905l f14306n;

    /* renamed from: o, reason: collision with root package name */
    public final androidx.media3.common.util.e f14307o;

    /* renamed from: p, reason: collision with root package name */
    public ArrayList f14308p;

    /* renamed from: q, reason: collision with root package name */
    public final ArrayMap f14309q;

    static {
        Log.isLoggable("MR2Provider", 3);
    }

    public C0913t(Context context, C0897h c0897h) {
        super(context);
        MediaRouter2 mediaRouter2;
        this.f14303k = new ArrayMap();
        this.f14305m = new C0912s(this);
        this.f14306n = new C0905l(this);
        this.f14308p = new ArrayList();
        this.f14309q = new ArrayMap();
        mediaRouter2 = MediaRouter2.getInstance(context);
        this.f14301i = mediaRouter2;
        this.f14302j = c0897h;
        this.f14307o = new androidx.media3.common.util.e(new Handler(Looper.getMainLooper()));
        if (Build.VERSION.SDK_INT >= 34) {
            this.f14304l = new r(this);
        } else {
            this.f14304l = new C0911q(this);
        }
    }

    public final MediaRoute2Info a(String str) {
        String id;
        if (str == null) {
            return null;
        }
        Iterator it = this.f14308p.iterator();
        while (it.hasNext()) {
            MediaRoute2Info c7 = l1.c(it.next());
            id = c7.getId();
            if (TextUtils.equals(id, str)) {
                return c7;
            }
        }
        return null;
    }

    public final void b(MediaRouter2.RoutingController routingController) {
        List selectedRoutes;
        Bundle controlHints;
        C0914u c0914u;
        int volume;
        int volumeMax;
        int volumeHandling;
        List selectableRoutes;
        List deselectableRoutes;
        String id;
        C0909o c0909o = (C0909o) this.f14303k.get(routingController);
        if (c0909o == null) {
            Log.w("MR2Provider", "setDynamicRouteDescriptors: No matching routeController found. routingController=" + routingController);
            return;
        }
        selectedRoutes = routingController.getSelectedRoutes();
        if (selectedRoutes.isEmpty()) {
            Log.w("MR2Provider", "setDynamicRouteDescriptors: No selected routes. This may happen when the selected routes become invalid.routingController=" + routingController);
            return;
        }
        ArrayList a7 = W.a(selectedRoutes);
        C0915v mediaRouteDescriptor = W.toMediaRouteDescriptor(l1.c(selectedRoutes.get(0)));
        controlHints = routingController.getControlHints();
        String string = getContext().getString(R.string.mr_dialog_default_group_name);
        C0915v c0915v = null;
        if (controlHints != null) {
            try {
                String string2 = controlHints.getString("androidx.mediarouter.media.KEY_SESSION_NAME");
                if (!TextUtils.isEmpty(string2)) {
                    string = string2;
                }
                Bundle bundle = controlHints.getBundle("androidx.mediarouter.media.KEY_GROUP_ROUTE");
                if (bundle != null) {
                    c0915v = C0915v.fromBundle(bundle);
                }
            } catch (Exception e3) {
                Log.w("MR2Provider", "Exception while unparceling control hints.", e3);
            }
        }
        if (c0915v == null) {
            id = routingController.getId();
            c0914u = new C0914u(id, string).setConnectionState(2).setPlaybackType(1);
        } else {
            c0914u = new C0914u(c0915v);
        }
        volume = routingController.getVolume();
        C0914u volume2 = c0914u.setVolume(volume);
        volumeMax = routingController.getVolumeMax();
        C0914u volumeMax2 = volume2.setVolumeMax(volumeMax);
        volumeHandling = routingController.getVolumeHandling();
        C0915v build = volumeMax2.setVolumeHandling(volumeHandling).clearControlFilters().addControlFilters(mediaRouteDescriptor.getControlFilters()).clearGroupMemberIds().addGroupMemberIds(a7).build();
        selectableRoutes = routingController.getSelectableRoutes();
        ArrayList a8 = W.a(selectableRoutes);
        deselectableRoutes = routingController.getDeselectableRoutes();
        ArrayList a9 = W.a(deselectableRoutes);
        I descriptor = getDescriptor();
        if (descriptor == null) {
            Log.w("MR2Provider", "setDynamicRouteDescriptors: providerDescriptor is not set.");
            return;
        }
        ArrayList arrayList = new ArrayList();
        List<C0915v> routes = descriptor.getRoutes();
        if (!routes.isEmpty()) {
            for (C0915v c0915v2 : routes) {
                String id2 = c0915v2.getId();
                arrayList.add(new C0879A(c0915v2).setSelectionState(a7.contains(id2) ? 3 : 1).setIsGroupable(a8.contains(id2)).setIsUnselectable(a9.contains(id2)).setIsTransferable(true).build());
            }
        }
        c0909o.f14283o = build;
        c0909o.notifyDynamicRoutesChanged(build, arrayList);
    }

    @Override // f1.G
    public AbstractC0881C onCreateDynamicGroupRouteController(String str) {
        Iterator it = this.f14303k.entrySet().iterator();
        while (it.hasNext()) {
            C0909o c0909o = (C0909o) ((Map.Entry) it.next()).getValue();
            if (TextUtils.equals(str, c0909o.f14274f)) {
                return c0909o;
            }
        }
        return null;
    }

    @Override // f1.G
    public F onCreateRouteController(String str) {
        return new C0910p((String) this.f14309q.get(str), null);
    }

    @Override // f1.G
    public void onDiscoveryRequestChanged(C0916w c0916w) {
        RouteDiscoveryPreference build;
        MediaRouter2$RouteCallback mediaRouter2$RouteCallback = this.f14304l;
        int i2 = X.f14206c == null ? 0 : X.b().f14263z;
        C0905l c0905l = this.f14306n;
        C0912s c0912s = this.f14305m;
        if (i2 <= 0) {
            this.f14301i.unregisterRouteCallback(mediaRouter2$RouteCallback);
            this.f14301i.unregisterTransferCallback(c0912s);
            this.f14301i.unregisterControllerCallback(c0905l);
            return;
        }
        C0906l0 c0906l0 = X.b().f14253p;
        boolean isTransferToLocalEnabled = c0906l0 == null ? false : c0906l0.isTransferToLocalEnabled();
        if (c0916w == null) {
            c0916w = new C0916w(L.f14160c, false);
        }
        List<String> controlCategories = c0916w.getSelector().getControlCategories();
        if (!isTransferToLocalEnabled) {
            controlCategories.remove("android.media.intent.category.LIVE_AUDIO");
        } else if (!controlCategories.contains("android.media.intent.category.LIVE_AUDIO")) {
            controlCategories.add("android.media.intent.category.LIVE_AUDIO");
        }
        C0916w c0916w2 = new C0916w(new K().addControlCategories(controlCategories).build(), c0916w.isActiveScan());
        MediaRouter2 mediaRouter2 = this.f14301i;
        if (c0916w2.isValid()) {
            boolean isActiveScan = c0916w2.isActiveScan();
            ArrayList arrayList = new ArrayList();
            for (String str : c0916w2.getSelector().getControlCategories()) {
                str.getClass();
                switch (str) {
                    case "android.media.intent.category.REMOTE_PLAYBACK":
                        str = "android.media.route.feature.REMOTE_PLAYBACK";
                        break;
                    case "android.media.intent.category.LIVE_AUDIO":
                        str = "android.media.route.feature.LIVE_AUDIO";
                        break;
                    case "android.media.intent.category.LIVE_VIDEO":
                        str = "android.media.route.feature.LIVE_VIDEO";
                        break;
                }
                arrayList.add(str);
            }
            build = AbstractC0907m.e(arrayList, isActiveScan).build();
        } else {
            l1.n();
            build = AbstractC0907m.d(new ArrayList()).build();
        }
        androidx.media3.common.util.e eVar = this.f14307o;
        mediaRouter2.registerRouteCallback(eVar, mediaRouter2$RouteCallback, build);
        this.f14301i.registerTransferCallback(eVar, c0912s);
        this.f14301i.registerControllerCallback(eVar, c0905l);
    }

    public void refreshRoutes() {
        List routes;
        Bundle extras;
        String id;
        boolean isSystemRoute;
        ArrayList arrayList = new ArrayList();
        ArraySet arraySet = new ArraySet();
        routes = this.f14301i.getRoutes();
        Iterator it = routes.iterator();
        while (it.hasNext()) {
            MediaRoute2Info c7 = l1.c(it.next());
            if (c7 != null && !arraySet.contains(c7)) {
                isSystemRoute = c7.isSystemRoute();
                if (!isSystemRoute) {
                    arraySet.add(c7);
                    arrayList.add(c7);
                }
            }
        }
        if (arrayList.equals(this.f14308p)) {
            return;
        }
        this.f14308p = arrayList;
        ArrayMap arrayMap = this.f14309q;
        arrayMap.clear();
        Iterator it2 = this.f14308p.iterator();
        while (it2.hasNext()) {
            MediaRoute2Info c8 = l1.c(it2.next());
            extras = c8.getExtras();
            if (extras == null || extras.getString("androidx.mediarouter.media.KEY_ORIGINAL_ROUTE_ID") == null) {
                Log.w("MR2Provider", "Cannot find the original route Id. route=" + c8);
            } else {
                id = c8.getId();
                arrayMap.put(id, extras.getString("androidx.mediarouter.media.KEY_ORIGINAL_ROUTE_ID"));
            }
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it3 = this.f14308p.iterator();
        while (it3.hasNext()) {
            MediaRoute2Info c9 = l1.c(it3.next());
            C0915v mediaRouteDescriptor = W.toMediaRouteDescriptor(c9);
            if (c9 != null) {
                arrayList2.add(mediaRouteDescriptor);
            }
        }
        setDescriptor(new H().setSupportsDynamicGroupRoute(true).addRoutes(arrayList2).build());
    }

    public void transferTo(String str) {
        MediaRoute2Info a7 = a(str);
        if (a7 != null) {
            this.f14301i.transferTo(a7);
            return;
        }
        Log.w("MR2Provider", "transferTo: Specified route not found. routeId=" + str);
    }

    @Override // f1.G
    public F onCreateRouteController(String str, String str2) {
        String str3 = (String) this.f14309q.get(str);
        for (C0909o c0909o : this.f14303k.values()) {
            if (TextUtils.equals(str2, c0909o.getGroupRouteId())) {
                return new C0910p(str3, c0909o);
            }
        }
        Log.w("MR2Provider", "Could not find the matching GroupRouteController. routeId=" + str + ", routeGroupId=" + str2);
        return new C0910p(str3, null);
    }
}
