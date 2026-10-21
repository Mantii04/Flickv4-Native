package f1;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.os.SystemClock;
import android.support.v4.media.session.MediaSessionCompat;
import android.util.Log;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class X {

    /* renamed from: c, reason: collision with root package name */
    public static C0903k f14206c;

    /* renamed from: a, reason: collision with root package name */
    public final Context f14207a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f14208b = new ArrayList();

    static {
        Log.isLoggable("AxMediaRouter", 3);
    }

    public X(Context context) {
        this.f14207a = context;
    }

    public static void a() {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            throw new IllegalStateException("The media router service must only be accessed on the application's main thread.");
        }
    }

    public static C0903k b() {
        C0903k c0903k = f14206c;
        if (c0903k != null) {
            return c0903k;
        }
        throw new IllegalStateException("getGlobalRouter cannot be called when sGlobal is null");
    }

    public static X getInstance(Context context) {
        if (context == null) {
            throw new IllegalArgumentException("context must not be null");
        }
        a();
        if (f14206c == null) {
            f14206c = new C0903k(context.getApplicationContext());
        }
        ArrayList arrayList = f14206c.f14243f;
        int size = arrayList.size();
        while (true) {
            size--;
            if (size < 0) {
                X x6 = new X(context);
                arrayList.add(new WeakReference(x6));
                return x6;
            }
            X x7 = (X) ((WeakReference) arrayList.get(size)).get();
            if (x7 == null) {
                arrayList.remove(size);
            } else if (x7.f14207a == context) {
                return x7;
            }
        }
    }

    public static boolean isGroupVolumeUxEnabled() {
        Bundle bundle;
        if (f14206c == null) {
            return false;
        }
        C0906l0 c0906l0 = b().f14253p;
        return c0906l0 == null || (bundle = c0906l0.f14271d) == null || bundle.getBoolean("androidx.mediarouter.media.MediaRouterParams.ENABLE_GROUP_VOLUME_UX", true);
    }

    public static boolean isMediaTransferEnabled() {
        if (f14206c == null) {
            return false;
        }
        return b().f();
    }

    public void addCallback(L l7, M m7) {
        addCallback(l7, m7, 0);
    }

    public void addMemberToDynamicGroup(U u6) {
        if (u6 == null) {
            throw new NullPointerException("route must not be null");
        }
        a();
        C0903k b7 = b();
        if (!(b7.f14257t instanceof AbstractC0881C)) {
            throw new IllegalStateException("There is no currently selected dynamic group route.");
        }
        T dynamicGroupState = b7.f14256s.getDynamicGroupState(u6);
        if (!b7.f14256s.getMemberRoutes().contains(u6) && dynamicGroupState != null && dynamicGroupState.isGroupable()) {
            ((AbstractC0881C) b7.f14257t).onAddMemberRoute(u6.f14185b);
            return;
        }
        Log.w("GlobalMediaRouter", "Ignoring attempt to add a non-groupable route to dynamic group : " + u6);
    }

    public U getBluetoothRoute() {
        a();
        return b().f14255r;
    }

    public U getDefaultRoute() {
        a();
        U u6 = b().f14254q;
        if (u6 != null) {
            return u6;
        }
        throw new IllegalStateException("There is no default route.  The media router has not yet been fully initialized.");
    }

    public MediaSessionCompat.Token getMediaSessionToken() {
        C0903k c0903k = f14206c;
        if (c0903k == null) {
            return null;
        }
        C0895g c0895g = c0903k.f14235C;
        if (c0895g != null) {
            MediaSessionCompat mediaSessionCompat = c0895g.f14227a;
            if (mediaSessionCompat != null) {
                return mediaSessionCompat.getSessionToken();
            }
        } else {
            MediaSessionCompat mediaSessionCompat2 = c0903k.f14236D;
            if (mediaSessionCompat2 != null) {
                return mediaSessionCompat2.getSessionToken();
            }
        }
        return null;
    }

    public C0906l0 getRouterParams() {
        a();
        return b().f14253p;
    }

    public List<U> getRoutes() {
        a();
        return b().f14244g;
    }

    public U getSelectedRoute() {
        a();
        return b().e();
    }

    public boolean isRouteAvailable(L l7, int i2) {
        if (l7 == null) {
            throw new IllegalArgumentException("selector must not be null");
        }
        a();
        C0903k b7 = b();
        b7.getClass();
        if (!l7.isEmpty()) {
            if ((i2 & 2) != 0 || !b7.f14251n) {
                C0906l0 c0906l0 = b7.f14253p;
                boolean z6 = c0906l0 != null && c0906l0.isOutputSwitcherEnabled() && b7.f();
                ArrayList arrayList = b7.f14244g;
                int size = arrayList.size();
                for (int i7 = 0; i7 < size; i7++) {
                    U u6 = (U) arrayList.get(i7);
                    if (((i2 & 1) != 0 && u6.isDefaultOrBluetooth()) || ((z6 && !u6.isDefaultOrBluetooth() && u6.getProviderInstance() != b7.f14242e) || !u6.matchesSelector(l7))) {
                    }
                }
            }
            return true;
        }
        return false;
    }

    public void removeCallback(M m7) {
        if (m7 == null) {
            throw new IllegalArgumentException("callback must not be null");
        }
        a();
        ArrayList arrayList = this.f14208b;
        int size = arrayList.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                i2 = -1;
                break;
            } else if (((N) arrayList.get(i2)).f14164b == m7) {
                break;
            } else {
                i2++;
            }
        }
        if (i2 >= 0) {
            arrayList.remove(i2);
            b().k();
        }
    }

    public void removeMemberFromDynamicGroup(U u6) {
        if (u6 == null) {
            throw new NullPointerException("route must not be null");
        }
        a();
        C0903k b7 = b();
        if (!(b7.f14257t instanceof AbstractC0881C)) {
            throw new IllegalStateException("There is no currently selected dynamic group route.");
        }
        T dynamicGroupState = b7.f14256s.getDynamicGroupState(u6);
        if (!b7.f14256s.getMemberRoutes().contains(u6) || dynamicGroupState == null || !dynamicGroupState.isUnselectable()) {
            Log.w("GlobalMediaRouter", "Ignoring attempt to remove a non-unselectable member route : " + u6);
        } else if (b7.f14256s.getMemberRoutes().size() <= 1) {
            Log.w("GlobalMediaRouter", "Ignoring attempt to remove the last member route.");
        } else {
            ((AbstractC0881C) b7.f14257t).onRemoveMemberRoute(u6.f14185b);
        }
    }

    public void selectRoute(U u6) {
        if (u6 == null) {
            throw new IllegalArgumentException("route must not be null");
        }
        a();
        b().i(u6, 3);
    }

    public void setMediaSessionCompat(MediaSessionCompat mediaSessionCompat) {
        a();
        C0903k b7 = b();
        b7.f14236D = mediaSessionCompat;
        C0895g c0895g = mediaSessionCompat != null ? new C0895g(b7, mediaSessionCompat) : null;
        C0895g c0895g2 = b7.f14235C;
        if (c0895g2 != null) {
            c0895g2.a();
        }
        b7.f14235C = c0895g;
        if (c0895g != null) {
            b7.l();
        }
    }

    public void setOnPrepareTransferListener(P p6) {
        a();
        b().f14233A = p6;
    }

    public void setRouterParams(C0906l0 c0906l0) {
        a();
        C0903k b7 = b();
        C0906l0 c0906l02 = b7.f14253p;
        b7.f14253p = c0906l0;
        if (b7.f()) {
            if (b7.f14242e == null) {
                C0913t c0913t = new C0913t(b7.f14238a, new C0897h(b7));
                b7.f14242e = c0913t;
                b7.a(c0913t, true);
                b7.k();
                b7.f14240c.rescan();
            }
            boolean z6 = false;
            boolean z7 = c0906l02 != null && c0906l02.isTransferToLocalEnabled();
            if (c0906l0 != null && c0906l0.isTransferToLocalEnabled()) {
                z6 = true;
            }
            if (z7 != z6) {
                C0913t c0913t2 = b7.f14242e;
                c0913t2.f14137e = b7.f14262y;
                if (!c0913t2.f14138f) {
                    c0913t2.f14138f = true;
                    c0913t2.f14135c.sendEmptyMessage(2);
                }
            }
        } else {
            C0913t c0913t3 = b7.f14242e;
            if (c0913t3 != null) {
                b7.removeProvider(c0913t3);
                b7.f14242e = null;
                b7.f14240c.rescan();
            }
        }
        b7.f14250m.b(769, c0906l0);
    }

    public void transferToRoute(U u6) {
        if (u6 == null) {
            throw new NullPointerException("route must not be null");
        }
        a();
        C0903k b7 = b();
        if (!(b7.f14257t instanceof AbstractC0881C)) {
            throw new IllegalStateException("There is no currently selected dynamic group route.");
        }
        T dynamicGroupState = b7.f14256s.getDynamicGroupState(u6);
        if (dynamicGroupState == null || !dynamicGroupState.isTransferable()) {
            Log.w("GlobalMediaRouter", "Ignoring attempt to transfer to a non-transferable route.");
        } else {
            ((AbstractC0881C) b7.f14257t).onUpdateMemberRoutes(Collections.singletonList(u6.f14185b));
        }
    }

    public void unselect(int i2) {
        if (i2 < 0 || i2 > 3) {
            throw new IllegalArgumentException("Unsupported reason to unselect route");
        }
        a();
        C0903k b7 = b();
        U c7 = b7.c();
        if (b7.e() != c7) {
            b7.i(c7, i2);
        }
    }

    public void addCallback(L l7, M m7, int i2) {
        N n7;
        if (l7 == null) {
            throw new IllegalArgumentException("selector must not be null");
        }
        if (m7 == null) {
            throw new IllegalArgumentException("callback must not be null");
        }
        a();
        ArrayList arrayList = this.f14208b;
        int size = arrayList.size();
        boolean z6 = false;
        int i7 = 0;
        while (true) {
            if (i7 >= size) {
                i7 = -1;
                break;
            } else if (((N) arrayList.get(i7)).f14164b == m7) {
                break;
            } else {
                i7++;
            }
        }
        if (i7 < 0) {
            n7 = new N(this, m7);
            arrayList.add(n7);
        } else {
            n7 = (N) arrayList.get(i7);
        }
        boolean z7 = true;
        if (i2 != n7.f14166d) {
            n7.f14166d = i2;
            z6 = true;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if ((i2 & 1) != 0) {
            z6 = true;
        }
        n7.f14167e = elapsedRealtime;
        if (n7.f14165c.contains(l7)) {
            z7 = z6;
        } else {
            n7.f14165c = new K(n7.f14165c).addSelector(l7).build();
        }
        if (z7) {
            b().k();
        }
    }
}
