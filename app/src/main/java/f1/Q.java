package f1;

import android.os.Message;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class Q {

    /* renamed from: a, reason: collision with root package name */
    public final F f14168a;

    /* renamed from: b, reason: collision with root package name */
    public final int f14169b;

    /* renamed from: c, reason: collision with root package name */
    public final U f14170c;

    /* renamed from: d, reason: collision with root package name */
    public final U f14171d;

    /* renamed from: e, reason: collision with root package name */
    public final U f14172e;

    /* renamed from: f, reason: collision with root package name */
    public final ArrayList f14173f;

    /* renamed from: g, reason: collision with root package name */
    public final WeakReference f14174g;

    /* renamed from: h, reason: collision with root package name */
    public V3.F f14175h = null;

    /* renamed from: i, reason: collision with root package name */
    public boolean f14176i = false;

    /* renamed from: j, reason: collision with root package name */
    public boolean f14177j = false;

    public Q(C0903k c0903k, U u6, F f3, int i2, U u7, Collection collection) {
        this.f14174g = new WeakReference(c0903k);
        this.f14171d = u6;
        this.f14168a = f3;
        this.f14169b = i2;
        this.f14170c = c0903k.f14256s;
        this.f14172e = u7;
        this.f14173f = collection != null ? new ArrayList(collection) : null;
        c0903k.f14250m.postDelayed(new RunnableC0883a(this, 2), 15000L);
    }

    public final void a() {
        if (this.f14176i || this.f14177j) {
            return;
        }
        this.f14177j = true;
        F f3 = this.f14168a;
        if (f3 != null) {
            f3.onUnselect(0);
            f3.onRelease();
        }
    }

    public final void b() {
        V3.F f3;
        X.a();
        if (this.f14176i || this.f14177j) {
            return;
        }
        WeakReference weakReference = this.f14174g;
        C0903k c0903k = (C0903k) weakReference.get();
        if (c0903k == null || c0903k.f14234B != this || ((f3 = this.f14175h) != null && f3.isCancelled())) {
            a();
            return;
        }
        this.f14176i = true;
        c0903k.f14234B = null;
        C0903k c0903k2 = (C0903k) weakReference.get();
        int i2 = this.f14169b;
        U u6 = this.f14170c;
        if (c0903k2 != null && c0903k2.f14256s == u6) {
            Message obtainMessage = c0903k2.f14250m.obtainMessage(263, u6);
            obtainMessage.arg1 = i2;
            obtainMessage.sendToTarget();
            F f7 = c0903k2.f14257t;
            if (f7 != null) {
                f7.onUnselect(i2);
                c0903k2.f14257t.onRelease();
            }
            HashMap hashMap = c0903k2.f14260w;
            if (!hashMap.isEmpty()) {
                for (F f8 : hashMap.values()) {
                    f8.onUnselect(i2);
                    f8.onRelease();
                }
                hashMap.clear();
            }
            c0903k2.f14257t = null;
        }
        C0903k c0903k3 = (C0903k) weakReference.get();
        if (c0903k3 == null) {
            return;
        }
        U u7 = this.f14171d;
        c0903k3.f14256s = u7;
        c0903k3.f14257t = this.f14168a;
        HandlerC0889d handlerC0889d = c0903k3.f14250m;
        U u8 = this.f14172e;
        if (u8 == null) {
            Message obtainMessage2 = handlerC0889d.obtainMessage(262, new L.d(u6, u7));
            obtainMessage2.arg1 = i2;
            obtainMessage2.sendToTarget();
        } else {
            Message obtainMessage3 = handlerC0889d.obtainMessage(264, new L.d(u8, u7));
            obtainMessage3.arg1 = i2;
            obtainMessage3.sendToTarget();
        }
        c0903k3.f14260w.clear();
        c0903k3.g();
        c0903k3.l();
        ArrayList arrayList = this.f14173f;
        if (arrayList != null) {
            c0903k3.f14256s.c(arrayList);
        }
    }
}
