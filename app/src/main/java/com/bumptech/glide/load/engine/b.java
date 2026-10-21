package com.bumptech.glide.load.engine;

import A.i;
import C.k;
import C2.g;
import G2.r;
import android.util.Log;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import l2.q;
import l2.t;
import n2.C1379A;
import n2.C1383E;
import n2.C1385G;
import n2.C1395Q;
import n2.C1399d;
import n2.C1400e;
import n2.C1406k;
import n2.InterfaceC1384F;
import n2.InterfaceC1391M;
import n2.u;
import n2.w;
import n2.y;
import n2.z;
import p2.InterfaceC1490a;
import p2.l;
import p2.m;
import q2.h;

/* loaded from: classes.dex */
public final class b implements l, InterfaceC1384F {

    /* renamed from: h, reason: collision with root package name */
    public static final boolean f9273h = Log.isLoggable("Engine", 2);

    /* renamed from: a, reason: collision with root package name */
    public final k f9274a;

    /* renamed from: b, reason: collision with root package name */
    public final J3.b f9275b;

    /* renamed from: c, reason: collision with root package name */
    public final m f9276c;

    /* renamed from: d, reason: collision with root package name */
    public final y f9277d;

    /* renamed from: e, reason: collision with root package name */
    public final C1395Q f9278e;

    /* renamed from: f, reason: collision with root package name */
    public final w f9279f;

    /* renamed from: g, reason: collision with root package name */
    public final C1400e f9280g;

    public b(m mVar, InterfaceC1490a interfaceC1490a, h hVar, h hVar2, h hVar3, h hVar4, boolean z6) {
        this.f9276c = mVar;
        z zVar = new z(interfaceC1490a);
        C1400e c1400e = new C1400e(z6);
        this.f9280g = c1400e;
        synchronized (this) {
            try {
                try {
                    synchronized (c1400e) {
                        try {
                            c1400e.f18947e = this;
                        } catch (Throwable th) {
                            th = th;
                            while (true) {
                                try {
                                    throw th;
                                } catch (Throwable th2) {
                                    th = th2;
                                }
                            }
                        }
                    }
                    this.f9275b = new J3.b();
                    this.f9274a = new k(10);
                    this.f9277d = new y(hVar, hVar2, hVar3, hVar4, this, this);
                    this.f9279f = new w(zVar);
                    this.f9278e = new C1395Q();
                    ((p2.k) mVar).setResourceRemovedListener(this);
                } catch (Throwable th3) {
                    th = th3;
                    throw th;
                }
            } catch (Throwable th4) {
                th = th4;
                throw th;
            }
        }
    }

    public static void b(String str, long j7, C1383E c1383e) {
        StringBuilder s6 = i.s(str, " in ");
        s6.append(G2.m.getElapsedMillis(j7));
        s6.append("ms, key: ");
        s6.append(c1383e);
        Log.v("Engine", s6.toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final C1385G a(C1383E c1383e, boolean z6, long j7) {
        Throwable th;
        C1385G c1385g;
        b bVar;
        C1383E c1383e2;
        C1385G c1385g2;
        if (z6) {
            C1400e c1400e = this.f9280g;
            synchronized (c1400e) {
                try {
                    C1399d c1399d = (C1399d) c1400e.f18945c.get(c1383e);
                    if (c1399d == null) {
                        c1385g = null;
                    } else {
                        c1385g = (C1385G) c1399d.get();
                        if (c1385g == null) {
                            try {
                                c1400e.b(c1399d);
                            } catch (Throwable th2) {
                                th = th2;
                                while (true) {
                                    try {
                                        throw th;
                                    } catch (Throwable th3) {
                                        th = th3;
                                    }
                                    th = th3;
                                }
                            }
                        }
                    }
                    if (c1385g != null) {
                        c1385g.a();
                    }
                    if (c1385g != null) {
                        if (f9273h) {
                            b("Loaded resource from active resources", j7, c1383e);
                        }
                        return c1385g;
                    }
                    InterfaceC1391M remove = ((p2.k) this.f9276c).remove((l2.m) c1383e);
                    if (remove == null) {
                        bVar = this;
                        c1383e2 = c1383e;
                        c1385g2 = null;
                    } else if (remove instanceof C1385G) {
                        c1385g2 = (C1385G) remove;
                        bVar = this;
                        c1383e2 = c1383e;
                    } else {
                        bVar = this;
                        c1383e2 = c1383e;
                        c1385g2 = new C1385G(remove, true, true, c1383e2, bVar);
                    }
                    if (c1385g2 != null) {
                        c1385g2.a();
                        bVar.f9280g.a(c1383e2, c1385g2);
                    }
                    if (c1385g2 != null) {
                        if (f9273h) {
                            b("Loaded resource from cache", j7, c1383e2);
                        }
                        return c1385g2;
                    }
                } catch (Throwable th4) {
                    th = th4;
                }
            }
        }
        return null;
    }

    public final C1379A c(com.bumptech.glide.h hVar, Object obj, l2.m mVar, int i2, int i7, Class cls, Class cls2, Priority priority, u uVar, Map map, boolean z6, boolean z7, q qVar, boolean z8, boolean z9, boolean z10, boolean z11, g gVar, Executor executor, C1383E c1383e, long j7) {
        k kVar = this.f9274a;
        e eVar = (e) ((HashMap) (z11 ? kVar.f326b : kVar.f325a)).get(c1383e);
        if (eVar != null) {
            eVar.a(gVar, executor);
            if (f9273h) {
                b("Added to existing load", j7, c1383e);
            }
            return new C1379A(this, gVar, eVar);
        }
        e eVar2 = (e) r.checkNotNull((e) this.f9277d.f19005g.acquire());
        synchronized (eVar2) {
            eVar2.f9305u = c1383e;
            eVar2.f9306v = z8;
            eVar2.f9307w = z9;
            eVar2.f9308x = z10;
            eVar2.f9309y = z11;
        }
        w wVar = this.f9279f;
        a aVar = (a) r.checkNotNull((a) wVar.f18996b.acquire());
        int i8 = wVar.f18997c;
        wVar.f18997c = i8 + 1;
        C1406k c1406k = aVar.f9256b;
        c1406k.f18964c = hVar;
        c1406k.f18965d = obj;
        c1406k.f18975n = mVar;
        c1406k.f18966e = i2;
        c1406k.f18967f = i7;
        c1406k.f18977p = uVar;
        c1406k.f18968g = cls;
        c1406k.f18969h = aVar.f9259j;
        c1406k.f18972k = cls2;
        c1406k.f18976o = priority;
        c1406k.f18970i = qVar;
        c1406k.f18971j = map;
        c1406k.f18978q = z6;
        c1406k.f18979r = z7;
        aVar.f9263q = hVar;
        aVar.f9264r = mVar;
        aVar.f9265s = priority;
        aVar.f9266t = c1383e;
        aVar.f9267u = i2;
        aVar.f9268v = i7;
        aVar.f9269w = uVar;
        aVar.f9244D = z11;
        aVar.f9270x = qVar;
        aVar.f9271y = eVar2;
        aVar.f9272z = i8;
        aVar.f9242B = DecodeJob$RunReason.f9224b;
        aVar.f9245E = obj;
        k kVar2 = this.f9274a;
        kVar2.getClass();
        ((HashMap) (eVar2.f9309y ? kVar2.f326b : kVar2.f325a)).put(c1383e, eVar2);
        eVar2.a(gVar, executor);
        eVar2.start(aVar);
        if (f9273h) {
            b("Started new load", j7, c1383e);
        }
        return new C1379A(this, gVar, eVar2);
    }

    public <R> C1379A load(com.bumptech.glide.h hVar, Object obj, l2.m mVar, int i2, int i7, Class<?> cls, Class<R> cls2, Priority priority, u uVar, Map<Class<?>, t> map, boolean z6, boolean z7, q qVar, boolean z8, boolean z9, boolean z10, boolean z11, g gVar, Executor executor) {
        long logTime = f9273h ? G2.m.getLogTime() : 0L;
        this.f9275b.getClass();
        C1383E c1383e = new C1383E(obj, mVar, i2, i7, map, cls, cls2, qVar);
        synchronized (this) {
            try {
                C1385G a7 = a(c1383e, z8, logTime);
                if (a7 == null) {
                    return c(hVar, obj, mVar, i2, i7, cls, cls2, priority, uVar, map, z6, z7, qVar, z8, z9, z10, z11, gVar, executor, c1383e, logTime);
                }
                ((com.bumptech.glide.request.a) gVar).onResourceReady(a7, DataSource.f9183m, false);
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public synchronized void onEngineJobCancelled(e eVar, l2.m mVar) {
        k kVar = this.f9274a;
        kVar.getClass();
        HashMap hashMap = (HashMap) (eVar.f9309y ? kVar.f326b : kVar.f325a);
        if (eVar.equals(hashMap.get(mVar))) {
            hashMap.remove(mVar);
        }
    }

    public synchronized void onEngineJobComplete(e eVar, l2.m mVar, C1385G c1385g) {
        if (c1385g != null) {
            try {
                if (c1385g.f18891b) {
                    this.f9280g.a(mVar, c1385g);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        k kVar = this.f9274a;
        kVar.getClass();
        HashMap hashMap = (HashMap) (eVar.f9309y ? kVar.f326b : kVar.f325a);
        if (eVar.equals(hashMap.get(mVar))) {
            hashMap.remove(mVar);
        }
    }

    public void onResourceReleased(l2.m mVar, C1385G c1385g) {
        C1400e c1400e = this.f9280g;
        synchronized (c1400e) {
            C1399d c1399d = (C1399d) c1400e.f18945c.remove(mVar);
            if (c1399d != null) {
                c1399d.f18942c = null;
                c1399d.clear();
            }
        }
        if (c1385g.f18891b) {
            ((p2.k) this.f9276c).put(mVar, (InterfaceC1391M) c1385g);
        } else {
            this.f9278e.a(c1385g, false);
        }
    }

    public void onResourceRemoved(InterfaceC1391M interfaceC1391M) {
        this.f9278e.a(interfaceC1391M, true);
    }

    public void release(InterfaceC1391M interfaceC1391M) {
        if (!(interfaceC1391M instanceof C1385G)) {
            throw new IllegalArgumentException("Cannot release anything but an EngineResource");
        }
        ((C1385G) interfaceC1391M).b();
    }
}
