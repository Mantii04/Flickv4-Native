package f1;

import android.os.Handler;
import android.os.Message;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: f1.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class HandlerC0889d extends Handler {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f14219a = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f14220b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ C0903k f14221c;

    public HandlerC0889d(C0903k c0903k) {
        this.f14221c = c0903k;
    }

    public static void a(N n7, int i2, Object obj, int i7) {
        X x6 = n7.f14163a;
        int i8 = 65280 & i2;
        M m7 = n7.f14164b;
        if (i8 != 256) {
            if (i8 != 512) {
                if (i8 == 768 && i2 == 769) {
                    m7.onRouterParamsChanged(x6, (C0906l0) obj);
                }
                return;
            }
            S s6 = (S) obj;
            switch (i2) {
                case 513:
                    m7.onProviderAdded(x6, s6);
                    break;
                case 514:
                    m7.onProviderRemoved(x6, s6);
                    break;
                case 515:
                    m7.onProviderChanged(x6, s6);
                    break;
            }
        }
        U u6 = (i2 == 264 || i2 == 262) ? (U) ((L.d) obj).f1821b : (U) obj;
        U u7 = (i2 == 264 || i2 == 262) ? (U) ((L.d) obj).f1820a : null;
        if (u6 == null || !n7.filterRouteEvent(u6, i2, u7, i7)) {
            return;
        }
        switch (i2) {
            case 257:
                m7.onRouteAdded(x6, u6);
                break;
            case 258:
                m7.onRouteRemoved(x6, u6);
                break;
            case 259:
                m7.onRouteChanged(x6, u6);
                break;
            case 260:
                m7.onRouteVolumeChanged(x6, u6);
                break;
            case 261:
                m7.onRoutePresentationDisplayChanged(x6, u6);
                break;
            case 262:
                m7.onRouteSelected(x6, u6, i7, u6);
                break;
            case 263:
                m7.onRouteUnselected(x6, u6, i7);
                break;
            case 264:
                m7.onRouteSelected(x6, u6, i7, u7);
                break;
        }
    }

    public final void b(int i2, Object obj) {
        obtainMessage(i2, obj).sendToTarget();
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        ArrayList arrayList = this.f14219a;
        int i2 = message.what;
        Object obj = message.obj;
        int i7 = message.arg1;
        C0903k c0903k = this.f14221c;
        if (i2 == 259 && c0903k.e().getId().equals(((U) obj).getId())) {
            c0903k.o(true);
        }
        ArrayList arrayList2 = this.f14220b;
        if (i2 == 262) {
            U u6 = (U) ((L.d) obj).f1821b;
            c0903k.f14239b.onSyncRouteSelected(u6);
            if (c0903k.f14254q != null && u6.isDefaultOrBluetooth()) {
                Iterator it = arrayList2.iterator();
                while (it.hasNext()) {
                    c0903k.f14239b.onSyncRouteRemoved((U) it.next());
                }
                arrayList2.clear();
            }
        } else if (i2 != 264) {
            switch (i2) {
                case 257:
                    c0903k.f14239b.onSyncRouteAdded((U) obj);
                    break;
                case 258:
                    c0903k.f14239b.onSyncRouteRemoved((U) obj);
                    break;
                case 259:
                    c0903k.f14239b.onSyncRouteChanged((U) obj);
                    break;
            }
        } else {
            U u7 = (U) ((L.d) obj).f1821b;
            arrayList2.add(u7);
            c0903k.f14239b.onSyncRouteAdded(u7);
            c0903k.f14239b.onSyncRouteSelected(u7);
        }
        try {
            int size = c0903k.f14243f.size();
            while (true) {
                size--;
                if (size < 0) {
                    Iterator it2 = arrayList.iterator();
                    while (it2.hasNext()) {
                        a((N) it2.next(), i2, obj, i7);
                    }
                    arrayList.clear();
                    return;
                }
                ArrayList arrayList3 = c0903k.f14243f;
                X x6 = (X) ((WeakReference) arrayList3.get(size)).get();
                if (x6 == null) {
                    arrayList3.remove(size);
                } else {
                    arrayList.addAll(x6.f14208b);
                }
            }
        } catch (Throwable th) {
            arrayList.clear();
            throw th;
        }
    }
}
