package f1;

import android.app.ActivityManager;
import android.content.Context;
import android.media.MediaRouter2;
import android.os.Build;
import android.os.Message;
import android.support.v4.media.session.MediaSessionCompat;
import android.util.Log;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Executor;
import z.AbstractC1959e;

/* renamed from: f1.k, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0903k implements K0 {

    /* renamed from: F, reason: collision with root package name */
    public static final /* synthetic */ int f14232F = 0;

    /* renamed from: A, reason: collision with root package name */
    public P f14233A;

    /* renamed from: B, reason: collision with root package name */
    public Q f14234B;

    /* renamed from: C, reason: collision with root package name */
    public C0895g f14235C;

    /* renamed from: D, reason: collision with root package name */
    public MediaSessionCompat f14236D;

    /* renamed from: E, reason: collision with root package name */
    public final C0887c f14237E;

    /* renamed from: a, reason: collision with root package name */
    public final Context f14238a;

    /* renamed from: b, reason: collision with root package name */
    public final L0 f14239b;

    /* renamed from: c, reason: collision with root package name */
    public final B0 f14240c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f14241d;

    /* renamed from: e, reason: collision with root package name */
    public C0913t f14242e;

    /* renamed from: n, reason: collision with root package name */
    public final boolean f14251n;

    /* renamed from: o, reason: collision with root package name */
    public final Y f14252o;

    /* renamed from: p, reason: collision with root package name */
    public C0906l0 f14253p;

    /* renamed from: q, reason: collision with root package name */
    public U f14254q;

    /* renamed from: r, reason: collision with root package name */
    public U f14255r;

    /* renamed from: s, reason: collision with root package name */
    public U f14256s;

    /* renamed from: t, reason: collision with root package name */
    public F f14257t;

    /* renamed from: u, reason: collision with root package name */
    public U f14258u;

    /* renamed from: v, reason: collision with root package name */
    public AbstractC0881C f14259v;

    /* renamed from: x, reason: collision with root package name */
    public C0916w f14261x;

    /* renamed from: y, reason: collision with root package name */
    public C0916w f14262y;

    /* renamed from: z, reason: collision with root package name */
    public int f14263z;

    /* renamed from: f, reason: collision with root package name */
    public final ArrayList f14243f = new ArrayList();

    /* renamed from: g, reason: collision with root package name */
    public final ArrayList f14244g = new ArrayList();

    /* renamed from: h, reason: collision with root package name */
    public final HashMap f14245h = new HashMap();

    /* renamed from: i, reason: collision with root package name */
    public final ArrayList f14246i = new ArrayList();

    /* renamed from: j, reason: collision with root package name */
    public final ArrayList f14247j = new ArrayList();

    /* renamed from: k, reason: collision with root package name */
    public final C0 f14248k = new C0();

    /* renamed from: l, reason: collision with root package name */
    public final C0899i f14249l = new C0899i(this);

    /* renamed from: m, reason: collision with root package name */
    public final HandlerC0889d f14250m = new HandlerC0889d(this);

    /* renamed from: w, reason: collision with root package name */
    public final HashMap f14260w = new HashMap();

    static {
        Log.isLoggable("GlobalMediaRouter", 3);
    }

    public C0903k(Context context) {
        new C0885b(this);
        this.f14237E = new C0887c(this);
        this.f14238a = context;
        this.f14251n = AbstractC1959e.isLowRamDevice((ActivityManager) context.getSystemService("activity"));
        int i2 = Build.VERSION.SDK_INT;
        boolean z6 = i2 >= 30 && m0.isDeclared(context);
        this.f14241d = z6;
        this.f14242e = (i2 < 30 || !z6) ? null : new C0913t(context, new C0897h(this));
        L0 obtain = L0.obtain(context, this);
        this.f14239b = obtain;
        this.f14252o = new Y(new RunnableC0883a(this, 0));
        a(obtain, true);
        G g7 = this.f14242e;
        if (g7 != null) {
            a(g7, true);
        }
        B0 b02 = new B0(context, this);
        this.f14240c = b02;
        b02.start();
    }

    public final void a(G g7, boolean z6) {
        if (d(g7) == null) {
            S s6 = new S(g7, z6);
            this.f14246i.add(s6);
            this.f14250m.b(513, s6);
            m(s6, g7.getDescriptor());
            g7.setCallback(this.f14249l);
            g7.setDiscoveryRequest(this.f14261x);
        }
    }

    public void addProvider(G g7) {
        a(g7, false);
    }

    public final String b(S s6, String str) {
        String flattenToShortString = s6.getComponentName().flattenToShortString();
        boolean z6 = s6.f14180c;
        String C6 = z6 ? str : A.i.C(flattenToShortString, ":", str);
        HashMap hashMap = this.f14245h;
        if (!z6) {
            ArrayList arrayList = this.f14244g;
            int size = arrayList.size();
            int i2 = 0;
            while (true) {
                if (i2 >= size) {
                    i2 = -1;
                    break;
                }
                if (((U) arrayList.get(i2)).f14186c.equals(C6)) {
                    break;
                }
                i2++;
            }
            if (i2 >= 0) {
                Log.w("GlobalMediaRouter", b.c.m("Either ", str, " isn't unique in ", flattenToShortString, " or we're trying to assign a unique ID for an already added route"));
                int i7 = 2;
                while (true) {
                    Locale locale = Locale.US;
                    String str2 = C6 + "_" + i7;
                    int size2 = arrayList.size();
                    int i8 = 0;
                    while (true) {
                        if (i8 >= size2) {
                            i8 = -1;
                            break;
                        }
                        if (((U) arrayList.get(i8)).f14186c.equals(str2)) {
                            break;
                        }
                        i8++;
                    }
                    if (i8 < 0) {
                        hashMap.put(new L.d(flattenToShortString, str), str2);
                        return str2;
                    }
                    i7++;
                }
            }
        }
        hashMap.put(new L.d(flattenToShortString, str), C6);
        return C6;
    }

    public final U c() {
        Iterator it = this.f14244g.iterator();
        while (it.hasNext()) {
            U u6 = (U) it.next();
            if (u6 != this.f14254q && u6.getProviderInstance() == this.f14239b && u6.supportsControlCategory("android.media.intent.category.LIVE_AUDIO") && !u6.supportsControlCategory("android.media.intent.category.LIVE_VIDEO") && u6.a()) {
                return u6;
            }
        }
        return this.f14254q;
    }

    public final S d(G g7) {
        Iterator it = this.f14246i.iterator();
        while (it.hasNext()) {
            S s6 = (S) it.next();
            if (s6.f14178a == g7) {
                return s6;
            }
        }
        return null;
    }

    public final U e() {
        U u6 = this.f14256s;
        if (u6 != null) {
            return u6;
        }
        throw new IllegalStateException("There is no currently selected route.  The media router has not yet been fully initialized.");
    }

    public final boolean f() {
        if (!this.f14241d) {
            return false;
        }
        C0906l0 c0906l0 = this.f14253p;
        return c0906l0 == null || c0906l0.isMediaTransferReceiverEnabled();
    }

    public final void g() {
        if (this.f14256s.isGroup()) {
            List<U> memberRoutes = this.f14256s.getMemberRoutes();
            HashSet hashSet = new HashSet();
            Iterator<U> it = memberRoutes.iterator();
            while (it.hasNext()) {
                hashSet.add(it.next().f14186c);
            }
            HashMap hashMap = this.f14260w;
            Iterator it2 = hashMap.entrySet().iterator();
            while (it2.hasNext()) {
                Map.Entry entry = (Map.Entry) it2.next();
                if (!hashSet.contains(entry.getKey())) {
                    F f3 = (F) entry.getValue();
                    f3.onUnselect(0);
                    f3.onRelease();
                    it2.remove();
                }
            }
            for (U u6 : memberRoutes) {
                if (!hashMap.containsKey(u6.f14186c)) {
                    F onCreateRouteController = u6.getProviderInstance().onCreateRouteController(u6.f14185b, this.f14256s.f14185b);
                    onCreateRouteController.onSelect();
                    hashMap.put(u6.f14186c, onCreateRouteController);
                }
            }
        }
    }

    public final void h(C0903k c0903k, U u6, F f3, int i2, U u7, Collection collection) {
        P p6;
        Q q6 = this.f14234B;
        if (q6 != null) {
            q6.a();
            this.f14234B = null;
        }
        Q q7 = new Q(c0903k, u6, f3, i2, u7, collection);
        this.f14234B = q7;
        if (q7.f14169b != 3 || (p6 = this.f14233A) == null) {
            q7.b();
            return;
        }
        V3.F onPrepareTransfer = p6.onPrepareTransfer(this.f14256s, q7.f14171d);
        if (onPrepareTransfer == null) {
            this.f14234B.b();
            return;
        }
        Q q8 = this.f14234B;
        C0903k c0903k2 = (C0903k) q8.f14174g.get();
        if (c0903k2 == null || c0903k2.f14234B != q8) {
            Log.w("AxMediaRouter", "Router is released. Cancel transfer");
            q8.a();
        } else {
            if (q8.f14175h != null) {
                throw new IllegalStateException("future is already set");
            }
            q8.f14175h = onPrepareTransfer;
            RunnableC0883a runnableC0883a = new RunnableC0883a(q8, 2);
            HandlerC0889d handlerC0889d = c0903k2.f14250m;
            Objects.requireNonNull(handlerC0889d);
            onPrepareTransfer.addListener(runnableC0883a, new androidx.media3.common.p(handlerC0889d, 1));
        }
    }

    public final void i(U u6, int i2) {
        if (!this.f14244g.contains(u6)) {
            Log.w("GlobalMediaRouter", "Ignoring attempt to select removed route: " + u6);
        } else {
            if (!u6.f14190g) {
                Log.w("GlobalMediaRouter", "Ignoring attempt to select disabled route: " + u6);
                return;
            }
            if (Build.VERSION.SDK_INT >= 30) {
                G providerInstance = u6.getProviderInstance();
                C0913t c0913t = this.f14242e;
                if (providerInstance == c0913t && this.f14256s != u6) {
                    c0913t.transferTo(u6.f14185b);
                    return;
                }
            }
            j(u6, i2);
        }
    }

    public final void j(U u6, int i2) {
        I i7;
        if (this.f14256s == u6) {
            return;
        }
        if (this.f14258u != null) {
            this.f14258u = null;
            AbstractC0881C abstractC0881C = this.f14259v;
            if (abstractC0881C != null) {
                abstractC0881C.onUnselect(3);
                this.f14259v.onRelease();
                this.f14259v = null;
            }
        }
        if (f() && (i7 = u6.getProvider().f14182e) != null && i7.supportsDynamicGroupRoute()) {
            AbstractC0881C onCreateDynamicGroupRouteController = u6.getProviderInstance().onCreateDynamicGroupRouteController(u6.f14185b);
            if (onCreateDynamicGroupRouteController != null) {
                Executor mainExecutor = A.h.getMainExecutor(this.f14238a);
                C0887c c0887c = this.f14237E;
                synchronized (onCreateDynamicGroupRouteController.f14117a) {
                    try {
                        if (mainExecutor == null) {
                            throw new NullPointerException("Executor shouldn't be null");
                        }
                        if (c0887c == null) {
                            throw new NullPointerException("Listener shouldn't be null");
                        }
                        onCreateDynamicGroupRouteController.f14118b = mainExecutor;
                        onCreateDynamicGroupRouteController.f14119c = c0887c;
                        ArrayList arrayList = onCreateDynamicGroupRouteController.f14121e;
                        if (arrayList != null && !arrayList.isEmpty()) {
                            C0915v c0915v = onCreateDynamicGroupRouteController.f14120d;
                            ArrayList arrayList2 = onCreateDynamicGroupRouteController.f14121e;
                            onCreateDynamicGroupRouteController.f14120d = null;
                            onCreateDynamicGroupRouteController.f14121e = null;
                            onCreateDynamicGroupRouteController.f14118b.execute(new RunnableC0918y(onCreateDynamicGroupRouteController, c0887c, c0915v, arrayList2));
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                this.f14258u = u6;
                this.f14259v = onCreateDynamicGroupRouteController;
                onCreateDynamicGroupRouteController.onSelect();
                return;
            }
            Log.w("GlobalMediaRouter", "setSelectedRouteInternal: Failed to create dynamic group route controller. route=" + u6);
        }
        F onCreateRouteController = u6.getProviderInstance().onCreateRouteController(u6.f14185b);
        if (onCreateRouteController != null) {
            onCreateRouteController.onSelect();
        }
        if (this.f14256s != null) {
            h(this, u6, onCreateRouteController, i2, null, null);
            return;
        }
        this.f14256s = u6;
        this.f14257t = onCreateRouteController;
        Message obtainMessage = this.f14250m.obtainMessage(262, new L.d(null, u6));
        obtainMessage.arg1 = i2;
        obtainMessage.sendToTarget();
    }

    public final void k() {
        boolean z6;
        C0916w c0916w;
        K k7 = new K();
        this.f14252o.reset();
        ArrayList arrayList = this.f14243f;
        int size = arrayList.size();
        int i2 = 0;
        boolean z7 = false;
        while (true) {
            size--;
            z6 = this.f14251n;
            if (size < 0) {
                break;
            }
            X x6 = (X) ((WeakReference) arrayList.get(size)).get();
            if (x6 == null) {
                arrayList.remove(size);
            } else {
                ArrayList arrayList2 = x6.f14208b;
                int size2 = arrayList2.size();
                i2 += size2;
                int i7 = 0;
                while (i7 < size2) {
                    N n7 = (N) arrayList2.get(i7);
                    k7.addSelector(n7.f14165c);
                    boolean z8 = (n7.f14166d & 1) != 0;
                    int i8 = i2;
                    this.f14252o.requestActiveScan(z8, n7.f14167e);
                    if (z8) {
                        z7 = true;
                    }
                    int i9 = n7.f14166d;
                    if ((i9 & 4) != 0 && !z6) {
                        z7 = true;
                    }
                    if ((i9 & 8) != 0) {
                        z7 = true;
                    }
                    i7++;
                    i2 = i8;
                }
            }
        }
        boolean finalizeActiveScanAndScheduleSuppressActiveScanRunnable = this.f14252o.finalizeActiveScanAndScheduleSuppressActiveScanRunnable();
        this.f14263z = i2;
        L build = z7 ? k7.build() : L.f14160c;
        L build2 = k7.build();
        if (f() && ((c0916w = this.f14262y) == null || !c0916w.getSelector().equals(build2) || this.f14262y.isActiveScan() != finalizeActiveScanAndScheduleSuppressActiveScanRunnable)) {
            if (!build2.isEmpty() || finalizeActiveScanAndScheduleSuppressActiveScanRunnable) {
                this.f14262y = new C0916w(build2, finalizeActiveScanAndScheduleSuppressActiveScanRunnable);
            } else if (this.f14262y != null) {
                this.f14262y = null;
            }
            this.f14242e.setDiscoveryRequest(this.f14262y);
        }
        C0916w c0916w2 = this.f14261x;
        if (c0916w2 != null && c0916w2.getSelector().equals(build) && this.f14261x.isActiveScan() == finalizeActiveScanAndScheduleSuppressActiveScanRunnable) {
            return;
        }
        if (!build.isEmpty() || finalizeActiveScanAndScheduleSuppressActiveScanRunnable) {
            this.f14261x = new C0916w(build, finalizeActiveScanAndScheduleSuppressActiveScanRunnable);
        } else if (this.f14261x == null) {
            return;
        } else {
            this.f14261x = null;
        }
        if (z7 && !finalizeActiveScanAndScheduleSuppressActiveScanRunnable && z6) {
            Log.i("GlobalMediaRouter", "Forcing passive route discovery on a low-RAM device, system performance may be affected.  Please consider using CALLBACK_FLAG_REQUEST_DISCOVERY instead of CALLBACK_FLAG_FORCE_DISCOVERY.");
        }
        Iterator it = this.f14246i.iterator();
        while (it.hasNext()) {
            G g7 = ((S) it.next()).f14178a;
            if (g7 != this.f14242e) {
                g7.setDiscoveryRequest(this.f14261x);
            }
        }
    }

    public final void l() {
        MediaRouter2.RoutingController routingController;
        U u6 = this.f14256s;
        if (u6 == null) {
            C0895g c0895g = this.f14235C;
            if (c0895g != null) {
                c0895g.a();
                return;
            }
            return;
        }
        int volume = u6.getVolume();
        C0 c02 = this.f14248k;
        c02.f14122a = volume;
        c02.f14123b = this.f14256s.getVolumeMax();
        c02.f14124c = this.f14256s.getVolumeHandling();
        c02.f14125d = this.f14256s.getPlaybackStream();
        this.f14256s.getPlaybackType();
        if (f() && this.f14256s.getProviderInstance() == this.f14242e) {
            F f3 = this.f14257t;
            int i2 = C0913t.f14300r;
            c02.f14126e = ((f3 instanceof C0909o) && (routingController = ((C0909o) f3).f14275g) != null) ? routingController.getId() : null;
        } else {
            c02.f14126e = null;
        }
        Iterator it = this.f14247j.iterator();
        if (it.hasNext()) {
            ((AbstractC0901j) it.next()).getClass();
            throw null;
        }
        C0895g c0895g2 = this.f14235C;
        if (c0895g2 != null) {
            U u7 = this.f14256s;
            U u8 = this.f14254q;
            if (u8 == null) {
                throw new IllegalStateException("There is no default route.  The media router has not yet been fully initialized.");
            }
            if (u7 == u8 || u7 == this.f14255r) {
                c0895g2.a();
                return;
            }
            int i7 = c02.f14124c == 1 ? 2 : 0;
            int i8 = c02.f14123b;
            int i9 = c02.f14122a;
            String str = c02.f14126e;
            MediaSessionCompat mediaSessionCompat = c0895g2.f14227a;
            C0893f c0893f = c0895g2.f14228b;
            if (c0893f != null && i7 == 0 && i8 == 0) {
                c0893f.setCurrentVolume(i9);
                return;
            }
            C0893f c0893f2 = new C0893f(c0895g2, i7, i8, i9, str);
            c0895g2.f14228b = c0893f2;
            mediaSessionCompat.setPlaybackToRemote(c0893f2);
        }
    }

    public final void m(S s6, I i2) {
        boolean z6;
        int i7;
        if (s6.f14182e != i2) {
            s6.f14182e = i2;
            ArrayList arrayList = this.f14244g;
            ArrayList arrayList2 = s6.f14179b;
            HandlerC0889d handlerC0889d = this.f14250m;
            if (i2 == null || !(i2.isValid() || i2 == this.f14239b.getDescriptor())) {
                Log.w("GlobalMediaRouter", "Ignoring invalid provider descriptor: " + i2);
                z6 = false;
                i7 = 0;
            } else {
                List<C0915v> routes = i2.getRoutes();
                ArrayList arrayList3 = new ArrayList();
                ArrayList arrayList4 = new ArrayList();
                int i8 = 0;
                boolean z7 = false;
                for (C0915v c0915v : routes) {
                    if (c0915v == null || !c0915v.isValid()) {
                        Log.w("GlobalMediaRouter", "Ignoring invalid system route descriptor: " + c0915v);
                    } else {
                        String id = c0915v.getId();
                        int size = arrayList2.size();
                        int i9 = 0;
                        while (true) {
                            if (i9 >= size) {
                                i9 = -1;
                                break;
                            } else if (((U) arrayList2.get(i9)).f14185b.equals(id)) {
                                break;
                            } else {
                                i9++;
                            }
                        }
                        if (i9 < 0) {
                            U u6 = new U(s6, id, b(s6, id));
                            int i10 = i8 + 1;
                            arrayList2.add(i8, u6);
                            arrayList.add(u6);
                            if (c0915v.getGroupMemberIds().size() > 0) {
                                arrayList3.add(new L.d(u6, c0915v));
                            } else {
                                u6.b(c0915v);
                                handlerC0889d.b(257, u6);
                            }
                            i8 = i10;
                        } else if (i9 < i8) {
                            Log.w("GlobalMediaRouter", "Ignoring route descriptor with duplicate id: " + c0915v);
                        } else {
                            U u7 = (U) arrayList2.get(i9);
                            int i11 = i8 + 1;
                            Collections.swap(arrayList2, i9, i8);
                            if (c0915v.getGroupMemberIds().size() > 0) {
                                arrayList4.add(new L.d(u7, c0915v));
                            } else if (n(u7, c0915v) != 0 && u7 == this.f14256s) {
                                i8 = i11;
                                z7 = true;
                            }
                            i8 = i11;
                        }
                    }
                }
                Iterator it = arrayList3.iterator();
                while (it.hasNext()) {
                    L.d dVar = (L.d) it.next();
                    U u8 = (U) dVar.f1820a;
                    u8.b((C0915v) dVar.f1821b);
                    handlerC0889d.b(257, u8);
                }
                Iterator it2 = arrayList4.iterator();
                boolean z8 = z7;
                while (it2.hasNext()) {
                    L.d dVar2 = (L.d) it2.next();
                    U u9 = (U) dVar2.f1820a;
                    if (n(u9, (C0915v) dVar2.f1821b) != 0 && u9 == this.f14256s) {
                        z8 = true;
                    }
                }
                z6 = z8;
                i7 = i8;
            }
            for (int size2 = arrayList2.size() - 1; size2 >= i7; size2--) {
                U u10 = (U) arrayList2.get(size2);
                u10.b(null);
                arrayList.remove(u10);
            }
            o(z6);
            for (int size3 = arrayList2.size() - 1; size3 >= i7; size3--) {
                handlerC0889d.b(258, (U) arrayList2.remove(size3));
            }
            handlerC0889d.b(515, s6);
        }
    }

    public final int n(U u6, C0915v c0915v) {
        int b7 = u6.b(c0915v);
        if (b7 != 0) {
            int i2 = b7 & 1;
            HandlerC0889d handlerC0889d = this.f14250m;
            if (i2 != 0) {
                handlerC0889d.b(259, u6);
            }
            if ((b7 & 2) != 0) {
                handlerC0889d.b(260, u6);
            }
            if ((b7 & 4) != 0) {
                handlerC0889d.b(261, u6);
            }
        }
        return b7;
    }

    public final void o(boolean z6) {
        U u6 = this.f14254q;
        if (u6 != null && !u6.a()) {
            Log.i("GlobalMediaRouter", "Clearing the default route because it is no longer selectable: " + this.f14254q);
            this.f14254q = null;
        }
        U u7 = this.f14254q;
        ArrayList arrayList = this.f14244g;
        if (u7 == null && !arrayList.isEmpty()) {
            Iterator it = arrayList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                U u8 = (U) it.next();
                if (u8.getProviderInstance() == this.f14239b && u8.f14185b.equals("DEFAULT_ROUTE") && u8.a()) {
                    this.f14254q = u8;
                    Log.i("GlobalMediaRouter", "Found default route: " + this.f14254q);
                    break;
                }
            }
        }
        U u9 = this.f14255r;
        if (u9 != null && !u9.a()) {
            Log.i("GlobalMediaRouter", "Clearing the bluetooth route because it is no longer selectable: " + this.f14255r);
            this.f14255r = null;
        }
        if (this.f14255r == null && !arrayList.isEmpty()) {
            Iterator it2 = arrayList.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                U u10 = (U) it2.next();
                if (u10.getProviderInstance() == this.f14239b && u10.supportsControlCategory("android.media.intent.category.LIVE_AUDIO") && !u10.supportsControlCategory("android.media.intent.category.LIVE_VIDEO") && u10.a()) {
                    this.f14255r = u10;
                    Log.i("GlobalMediaRouter", "Found bluetooth route: " + this.f14255r);
                    break;
                }
            }
        }
        U u11 = this.f14256s;
        if (u11 == null || !u11.isEnabled()) {
            Log.i("GlobalMediaRouter", "Unselecting the current route because it is no longer selectable: " + this.f14256s);
            j(c(), 0);
            return;
        }
        if (z6) {
            g();
            l();
        }
    }

    public void onSystemRouteSelectedByDescriptorId(String str) {
        U u6;
        this.f14250m.removeMessages(262);
        S d7 = d(this.f14239b);
        if (d7 != null) {
            Iterator it = d7.f14179b.iterator();
            while (true) {
                if (!it.hasNext()) {
                    u6 = null;
                    break;
                } else {
                    u6 = (U) it.next();
                    if (u6.f14185b.equals(str)) {
                        break;
                    }
                }
            }
            if (u6 != null) {
                u6.select();
            }
        }
    }

    public void releaseProviderController(x0 x0Var, F f3) {
        if (this.f14257t == f3) {
            i(c(), 2);
        }
    }

    public void removeProvider(G g7) {
        S d7 = d(g7);
        if (d7 != null) {
            g7.setCallback(null);
            g7.setDiscoveryRequest(null);
            m(d7, null);
            this.f14250m.b(514, d7);
            this.f14246i.remove(d7);
        }
    }
}
