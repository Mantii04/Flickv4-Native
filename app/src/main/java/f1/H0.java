package f1;

import android.content.Context;
import android.content.IntentFilter;
import android.media.MediaRouter;
import androidx.mediarouter.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* loaded from: classes.dex */
public abstract class H0 extends L0 implements Z, InterfaceC0890d0 {

    /* renamed from: s, reason: collision with root package name */
    public static final ArrayList f14145s;

    /* renamed from: t, reason: collision with root package name */
    public static final ArrayList f14146t;

    /* renamed from: i, reason: collision with root package name */
    public final K0 f14147i;

    /* renamed from: j, reason: collision with root package name */
    public final MediaRouter f14148j;

    /* renamed from: k, reason: collision with root package name */
    public final MediaRouter.Callback f14149k;

    /* renamed from: l, reason: collision with root package name */
    public final MediaRouter.VolumeCallback f14150l;

    /* renamed from: m, reason: collision with root package name */
    public final MediaRouter.RouteCategory f14151m;

    /* renamed from: n, reason: collision with root package name */
    public int f14152n;

    /* renamed from: o, reason: collision with root package name */
    public boolean f14153o;

    /* renamed from: p, reason: collision with root package name */
    public boolean f14154p;

    /* renamed from: q, reason: collision with root package name */
    public final ArrayList f14155q;

    /* renamed from: r, reason: collision with root package name */
    public final ArrayList f14156r;

    static {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addCategory("android.media.intent.category.LIVE_AUDIO");
        ArrayList arrayList = new ArrayList();
        f14145s = arrayList;
        arrayList.add(intentFilter);
        IntentFilter intentFilter2 = new IntentFilter();
        intentFilter2.addCategory("android.media.intent.category.LIVE_VIDEO");
        ArrayList arrayList2 = new ArrayList();
        f14146t = arrayList2;
        arrayList2.add(intentFilter2);
    }

    public H0(Context context, K0 k02) {
        super(context);
        this.f14155q = new ArrayList();
        this.f14156r = new ArrayList();
        this.f14147i = k02;
        MediaRouter mediaRouter = AbstractC0894f0.getMediaRouter(context);
        this.f14148j = mediaRouter;
        this.f14149k = createCallback();
        this.f14150l = createVolumeCallback();
        this.f14151m = AbstractC0894f0.createRouteCategory(mediaRouter, context.getResources().getString(R.string.mr_user_route_category_name), false);
        b();
    }

    public final boolean a(MediaRouter.RouteInfo routeInfo) {
        String str;
        if (getUserRouteRecord(routeInfo) != null || findSystemRouteRecord(routeInfo) >= 0) {
            return false;
        }
        String format = getDefaultRoute() == routeInfo ? "DEFAULT_ROUTE" : String.format(Locale.US, "ROUTE_%08x", Integer.valueOf(getRouteName(routeInfo).hashCode()));
        if (findSystemRouteRecordByDescriptorId(format) >= 0) {
            int i2 = 2;
            while (true) {
                Locale locale = Locale.US;
                str = format + "_" + i2;
                if (findSystemRouteRecordByDescriptorId(str) < 0) {
                    break;
                }
                i2++;
            }
            format = str;
        }
        F0 f02 = new F0(routeInfo, format);
        updateSystemRouteDescriptor(f02);
        this.f14155q.add(f02);
        return true;
    }

    public final void b() {
        updateCallback();
        Iterator<MediaRouter.RouteInfo> it = AbstractC0894f0.getRoutes(this.f14148j).iterator();
        boolean z6 = false;
        while (it.hasNext()) {
            z6 |= a(it.next());
        }
        if (z6) {
            publishRoutes();
        }
    }

    public abstract MediaRouter.Callback createCallback();

    public MediaRouter.VolumeCallback createVolumeCallback() {
        return AbstractC0894f0.createVolumeCallback(this);
    }

    public int findSystemRouteRecord(MediaRouter.RouteInfo routeInfo) {
        ArrayList arrayList = this.f14155q;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (((F0) arrayList.get(i2)).f14130a == routeInfo) {
                return i2;
            }
        }
        return -1;
    }

    public int findSystemRouteRecordByDescriptorId(String str) {
        ArrayList arrayList = this.f14155q;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (((F0) arrayList.get(i2)).f14131b.equals(str)) {
                return i2;
            }
        }
        return -1;
    }

    public int findUserRouteRecord(U u6) {
        ArrayList arrayList = this.f14156r;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (((G0) arrayList.get(i2)).f14141a == u6) {
                return i2;
            }
        }
        return -1;
    }

    public abstract Object getDefaultRoute();

    public String getRouteName(MediaRouter.RouteInfo routeInfo) {
        CharSequence name = AbstractC0886b0.getName(routeInfo, getContext());
        return name != null ? name.toString() : "";
    }

    public G0 getUserRouteRecord(MediaRouter.RouteInfo routeInfo) {
        Object tag = AbstractC0886b0.getTag(routeInfo);
        if (tag instanceof G0) {
            return (G0) tag;
        }
        return null;
    }

    public void onBuildSystemRouteDescriptor(F0 f02, C0914u c0914u) {
        int supportedTypes = AbstractC0886b0.getSupportedTypes(f02.f14130a);
        if ((supportedTypes & 1) != 0) {
            c0914u.addControlFilters(f14145s);
        }
        if ((supportedTypes & 2) != 0) {
            c0914u.addControlFilters(f14146t);
        }
        MediaRouter.RouteInfo routeInfo = f02.f14130a;
        c0914u.setPlaybackType(AbstractC0886b0.getPlaybackType(routeInfo));
        c0914u.setPlaybackStream(AbstractC0886b0.getPlaybackStream(routeInfo));
        c0914u.setVolume(AbstractC0886b0.getVolume(routeInfo));
        c0914u.setVolumeMax(AbstractC0886b0.getVolumeMax(routeInfo));
        c0914u.setVolumeHandling(AbstractC0886b0.getVolumeHandling(routeInfo));
    }

    @Override // f1.G
    public F onCreateRouteController(String str) {
        int findSystemRouteRecordByDescriptorId = findSystemRouteRecordByDescriptorId(str);
        if (findSystemRouteRecordByDescriptorId >= 0) {
            return new E0(((F0) this.f14155q.get(findSystemRouteRecordByDescriptorId)).f14130a);
        }
        return null;
    }

    @Override // f1.G
    public void onDiscoveryRequestChanged(C0916w c0916w) {
        boolean z6;
        int i2 = 0;
        if (c0916w != null) {
            List<String> controlCategories = c0916w.getSelector().getControlCategories();
            int size = controlCategories.size();
            int i7 = 0;
            while (i2 < size) {
                String str = controlCategories.get(i2);
                i7 = str.equals("android.media.intent.category.LIVE_AUDIO") ? i7 | 1 : str.equals("android.media.intent.category.LIVE_VIDEO") ? i7 | 2 : i7 | 8388608;
                i2++;
            }
            z6 = c0916w.isActiveScan();
            i2 = i7;
        } else {
            z6 = false;
        }
        if (this.f14152n == i2 && this.f14153o == z6) {
            return;
        }
        this.f14152n = i2;
        this.f14153o = z6;
        b();
    }

    public void onRouteAdded(MediaRouter.RouteInfo routeInfo) {
        if (a(routeInfo)) {
            publishRoutes();
        }
    }

    public void onRouteChanged(MediaRouter.RouteInfo routeInfo) {
        int findSystemRouteRecord;
        if (getUserRouteRecord(routeInfo) != null || (findSystemRouteRecord = findSystemRouteRecord(routeInfo)) < 0) {
            return;
        }
        updateSystemRouteDescriptor((F0) this.f14155q.get(findSystemRouteRecord));
        publishRoutes();
    }

    public void onRouteRemoved(MediaRouter.RouteInfo routeInfo) {
        int findSystemRouteRecord;
        if (getUserRouteRecord(routeInfo) != null || (findSystemRouteRecord = findSystemRouteRecord(routeInfo)) < 0) {
            return;
        }
        this.f14155q.remove(findSystemRouteRecord);
        publishRoutes();
    }

    public void onRouteSelected(int i2, MediaRouter.RouteInfo routeInfo) {
        if (routeInfo != AbstractC0894f0.getSelectedRoute(this.f14148j, 8388611)) {
            return;
        }
        G0 userRouteRecord = getUserRouteRecord(routeInfo);
        if (userRouteRecord != null) {
            userRouteRecord.f14141a.select();
            return;
        }
        int findSystemRouteRecord = findSystemRouteRecord(routeInfo);
        if (findSystemRouteRecord >= 0) {
            ((C0903k) this.f14147i).onSystemRouteSelectedByDescriptorId(((F0) this.f14155q.get(findSystemRouteRecord)).f14131b);
        }
    }

    public void onRouteVolumeChanged(MediaRouter.RouteInfo routeInfo) {
        int findSystemRouteRecord;
        if (getUserRouteRecord(routeInfo) != null || (findSystemRouteRecord = findSystemRouteRecord(routeInfo)) < 0) {
            return;
        }
        F0 f02 = (F0) this.f14155q.get(findSystemRouteRecord);
        int volume = AbstractC0886b0.getVolume(routeInfo);
        if (volume != f02.f14132c.getVolume()) {
            f02.f14132c = new C0914u(f02.f14132c).setVolume(volume).build();
            publishRoutes();
        }
    }

    @Override // f1.L0
    public void onSyncRouteAdded(U u6) {
        G providerInstance = u6.getProviderInstance();
        MediaRouter mediaRouter = this.f14148j;
        if (providerInstance == this) {
            int findSystemRouteRecord = findSystemRouteRecord(AbstractC0894f0.getSelectedRoute(mediaRouter, 8388611));
            if (findSystemRouteRecord < 0 || !((F0) this.f14155q.get(findSystemRouteRecord)).f14131b.equals(u6.f14185b)) {
                return;
            }
            u6.select();
            return;
        }
        MediaRouter.UserRouteInfo createUserRoute = AbstractC0894f0.createUserRoute(mediaRouter, this.f14151m);
        G0 g02 = new G0(u6, createUserRoute);
        AbstractC0886b0.setTag(createUserRoute, g02);
        AbstractC0888c0.setVolumeCallback(createUserRoute, this.f14150l);
        updateUserRouteProperties(g02);
        this.f14156r.add(g02);
        AbstractC0894f0.addUserRoute(mediaRouter, createUserRoute);
    }

    @Override // f1.L0
    public void onSyncRouteChanged(U u6) {
        int findUserRouteRecord;
        if (u6.getProviderInstance() == this || (findUserRouteRecord = findUserRouteRecord(u6)) < 0) {
            return;
        }
        updateUserRouteProperties((G0) this.f14156r.get(findUserRouteRecord));
    }

    @Override // f1.L0
    public void onSyncRouteRemoved(U u6) {
        int findUserRouteRecord;
        if (u6.getProviderInstance() == this || (findUserRouteRecord = findUserRouteRecord(u6)) < 0) {
            return;
        }
        G0 g02 = (G0) this.f14156r.remove(findUserRouteRecord);
        AbstractC0886b0.setTag(g02.f14142b, null);
        MediaRouter.UserRouteInfo userRouteInfo = g02.f14142b;
        AbstractC0888c0.setVolumeCallback(userRouteInfo, null);
        AbstractC0894f0.removeUserRoute(this.f14148j, userRouteInfo);
    }

    @Override // f1.L0
    public void onSyncRouteSelected(U u6) {
        if (u6.isSelected()) {
            if (u6.getProviderInstance() != this) {
                int findUserRouteRecord = findUserRouteRecord(u6);
                if (findUserRouteRecord >= 0) {
                    selectRoute(((G0) this.f14156r.get(findUserRouteRecord)).f14142b);
                    return;
                }
                return;
            }
            int findSystemRouteRecordByDescriptorId = findSystemRouteRecordByDescriptorId(u6.f14185b);
            if (findSystemRouteRecordByDescriptorId >= 0) {
                selectRoute(((F0) this.f14155q.get(findSystemRouteRecordByDescriptorId)).f14130a);
            }
        }
    }

    @Override // f1.InterfaceC0890d0
    public void onVolumeSetRequest(MediaRouter.RouteInfo routeInfo, int i2) {
        G0 userRouteRecord = getUserRouteRecord(routeInfo);
        if (userRouteRecord != null) {
            userRouteRecord.f14141a.requestSetVolume(i2);
        }
    }

    @Override // f1.InterfaceC0890d0
    public void onVolumeUpdateRequest(MediaRouter.RouteInfo routeInfo, int i2) {
        G0 userRouteRecord = getUserRouteRecord(routeInfo);
        if (userRouteRecord != null) {
            userRouteRecord.f14141a.requestUpdateVolume(i2);
        }
    }

    public void publishRoutes() {
        H h7 = new H();
        ArrayList arrayList = this.f14155q;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            h7.addRoute(((F0) arrayList.get(i2)).f14132c);
        }
        setDescriptor(h7.build());
    }

    public abstract void selectRoute(MediaRouter.RouteInfo routeInfo);

    public abstract void updateCallback();

    public void updateSystemRouteDescriptor(F0 f02) {
        C0914u c0914u = new C0914u(f02.f14131b, getRouteName(f02.f14130a));
        onBuildSystemRouteDescriptor(f02, c0914u);
        f02.f14132c = c0914u.build();
    }

    public void updateUserRouteProperties(G0 g02) {
        MediaRouter.UserRouteInfo userRouteInfo = g02.f14142b;
        U u6 = g02.f14141a;
        AbstractC0888c0.setName(userRouteInfo, u6.getName());
        int playbackType = u6.getPlaybackType();
        MediaRouter.UserRouteInfo userRouteInfo2 = g02.f14142b;
        AbstractC0888c0.setPlaybackType(userRouteInfo2, playbackType);
        AbstractC0888c0.setPlaybackStream(userRouteInfo2, u6.getPlaybackStream());
        AbstractC0888c0.setVolume(userRouteInfo2, u6.getVolume());
        AbstractC0888c0.setVolumeMax(userRouteInfo2, u6.getVolumeMax());
        AbstractC0888c0.setVolumeHandling(userRouteInfo2, u6.getVolumeHandling());
    }

    public void onRouteUngrouped(MediaRouter.RouteInfo routeInfo, MediaRouter.RouteGroup routeGroup) {
    }

    public void onRouteUnselected(int i2, MediaRouter.RouteInfo routeInfo) {
    }

    public void onRouteGrouped(MediaRouter.RouteInfo routeInfo, MediaRouter.RouteGroup routeGroup, int i2) {
    }
}
