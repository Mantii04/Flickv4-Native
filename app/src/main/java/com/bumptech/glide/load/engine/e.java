package com.bumptech.glide.load.engine;

import C2.g;
import G2.i;
import G2.r;
import H2.f;
import H2.k;
import com.bumptech.glide.load.DataSource;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;
import n2.C1380B;
import n2.C1381C;
import n2.C1382D;
import n2.C1383E;
import n2.C1385G;
import n2.InterfaceC1391M;
import q2.h;

/* loaded from: classes.dex */
public final class e implements f {

    /* renamed from: I, reason: collision with root package name */
    public static final C1380B f9285I = new C1380B();

    /* renamed from: A, reason: collision with root package name */
    public DataSource f9286A;

    /* renamed from: B, reason: collision with root package name */
    public boolean f9287B;

    /* renamed from: C, reason: collision with root package name */
    public GlideException f9288C;

    /* renamed from: D, reason: collision with root package name */
    public boolean f9289D;

    /* renamed from: E, reason: collision with root package name */
    public C1385G f9290E;

    /* renamed from: F, reason: collision with root package name */
    public a f9291F;

    /* renamed from: G, reason: collision with root package name */
    public volatile boolean f9292G;

    /* renamed from: H, reason: collision with root package name */
    public boolean f9293H;

    /* renamed from: b, reason: collision with root package name */
    public final C1382D f9294b;

    /* renamed from: e, reason: collision with root package name */
    public final k f9295e;

    /* renamed from: f, reason: collision with root package name */
    public final b f9296f;

    /* renamed from: j, reason: collision with root package name */
    public final L.e f9297j;

    /* renamed from: m, reason: collision with root package name */
    public final C1380B f9298m;

    /* renamed from: n, reason: collision with root package name */
    public final b f9299n;

    /* renamed from: p, reason: collision with root package name */
    public final h f9300p;

    /* renamed from: q, reason: collision with root package name */
    public final h f9301q;

    /* renamed from: r, reason: collision with root package name */
    public final h f9302r;

    /* renamed from: s, reason: collision with root package name */
    public final h f9303s;

    /* renamed from: t, reason: collision with root package name */
    public final AtomicInteger f9304t;

    /* renamed from: u, reason: collision with root package name */
    public C1383E f9305u;

    /* renamed from: v, reason: collision with root package name */
    public boolean f9306v;

    /* renamed from: w, reason: collision with root package name */
    public boolean f9307w;

    /* renamed from: x, reason: collision with root package name */
    public boolean f9308x;

    /* renamed from: y, reason: collision with root package name */
    public boolean f9309y;

    /* renamed from: z, reason: collision with root package name */
    public InterfaceC1391M f9310z;

    public e(h hVar, h hVar2, h hVar3, h hVar4, b bVar, b bVar2, L.e eVar) {
        C1380B c1380b = f9285I;
        this.f9294b = new C1382D(new ArrayList(2));
        this.f9295e = k.newInstance();
        this.f9304t = new AtomicInteger();
        this.f9300p = hVar;
        this.f9301q = hVar2;
        this.f9302r = hVar3;
        this.f9303s = hVar4;
        this.f9299n = bVar;
        this.f9296f = bVar2;
        this.f9297j = eVar;
        this.f9298m = c1380b;
    }

    public final synchronized void a(g gVar, Executor executor) {
        try {
            this.f9295e.throwIfRecycled();
            C1382D c1382d = this.f9294b;
            c1382d.getClass();
            c1382d.f18881b.add(new C1381C(gVar, executor));
            if (this.f9287B) {
                c(1);
                executor.execute(new d(this, gVar));
            } else if (this.f9289D) {
                c(1);
                executor.execute(new c(this, gVar));
            } else {
                r.checkArgument(!this.f9292G, "Cannot add callbacks to a cancelled EngineJob");
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void b() {
        C1385G c1385g;
        synchronized (this) {
            try {
                this.f9295e.throwIfRecycled();
                r.checkArgument(d(), "Not yet complete!");
                int decrementAndGet = this.f9304t.decrementAndGet();
                r.checkArgument(decrementAndGet >= 0, "Can't decrement below 0");
                if (decrementAndGet == 0) {
                    c1385g = this.f9290E;
                    g();
                } else {
                    c1385g = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (c1385g != null) {
            c1385g.b();
        }
    }

    public final synchronized void c(int i2) {
        C1385G c1385g;
        r.checkArgument(d(), "Not yet complete!");
        if (this.f9304t.getAndAdd(i2) == 0 && (c1385g = this.f9290E) != null) {
            c1385g.a();
        }
    }

    public final boolean d() {
        return this.f9289D || this.f9287B || this.f9292G;
    }

    public final void e() {
        synchronized (this) {
            try {
                this.f9295e.throwIfRecycled();
                if (this.f9292G) {
                    g();
                    return;
                }
                if (this.f9294b.f18881b.isEmpty()) {
                    throw new IllegalStateException("Received an exception without any callbacks to notify");
                }
                if (this.f9289D) {
                    throw new IllegalStateException("Already failed once");
                }
                this.f9289D = true;
                C1383E c1383e = this.f9305u;
                C1382D c1382d = this.f9294b;
                c1382d.getClass();
                ArrayList arrayList = new ArrayList(c1382d.f18881b);
                C1382D c1382d2 = new C1382D(arrayList);
                c(arrayList.size() + 1);
                this.f9299n.onEngineJobComplete(this, c1383e, null);
                Iterator<C1381C> it = c1382d2.iterator();
                while (it.hasNext()) {
                    C1381C next = it.next();
                    next.f18880b.execute(new c(this, next.f18879a));
                }
                b();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void f() {
        synchronized (this) {
            try {
                this.f9295e.throwIfRecycled();
                if (this.f9292G) {
                    this.f9310z.recycle();
                    g();
                    return;
                }
                if (this.f9294b.f18881b.isEmpty()) {
                    throw new IllegalStateException("Received a resource without any callbacks to notify");
                }
                if (this.f9287B) {
                    throw new IllegalStateException("Already have resource");
                }
                this.f9290E = this.f9298m.build(this.f9310z, this.f9306v, this.f9305u, this.f9296f);
                this.f9287B = true;
                C1382D c1382d = this.f9294b;
                c1382d.getClass();
                ArrayList arrayList = new ArrayList(c1382d.f18881b);
                C1382D c1382d2 = new C1382D(arrayList);
                c(arrayList.size() + 1);
                this.f9299n.onEngineJobComplete(this, this.f9305u, this.f9290E);
                Iterator<C1381C> it = c1382d2.iterator();
                while (it.hasNext()) {
                    C1381C next = it.next();
                    next.f18880b.execute(new d(this, next.f18879a));
                }
                b();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final synchronized void g() {
        if (this.f9305u == null) {
            throw new IllegalArgumentException();
        }
        this.f9294b.f18881b.clear();
        this.f9305u = null;
        this.f9290E = null;
        this.f9310z = null;
        this.f9289D = false;
        this.f9292G = false;
        this.f9287B = false;
        this.f9293H = false;
        this.f9291F.i();
        this.f9291F = null;
        this.f9288C = null;
        this.f9286A = null;
        this.f9297j.release(this);
    }

    @Override // H2.f
    public k getVerifier() {
        return this.f9295e;
    }

    public final synchronized void h(g gVar) {
        try {
            this.f9295e.throwIfRecycled();
            C1382D c1382d = this.f9294b;
            c1382d.getClass();
            c1382d.f18881b.remove(new C1381C(gVar, i.directExecutor()));
            if (this.f9294b.f18881b.isEmpty()) {
                if (!d()) {
                    this.f9292G = true;
                    this.f9291F.cancel();
                    this.f9299n.onEngineJobCancelled(this, this.f9305u);
                }
                if (!this.f9287B) {
                    if (this.f9289D) {
                    }
                }
                if (this.f9304t.get() == 0) {
                    g();
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public void onLoadFailed(GlideException glideException) {
        synchronized (this) {
            this.f9288C = glideException;
        }
        e();
    }

    public void onResourceReady(InterfaceC1391M interfaceC1391M, DataSource dataSource, boolean z6) {
        synchronized (this) {
            this.f9310z = interfaceC1391M;
            this.f9286A = dataSource;
            this.f9293H = z6;
        }
        f();
    }

    public void reschedule(a aVar) {
        (this.f9307w ? this.f9302r : this.f9308x ? this.f9303s : this.f9301q).execute(aVar);
    }

    public synchronized void start(a aVar) {
        h hVar;
        this.f9291F = aVar;
        DecodeJob$Stage f3 = aVar.f(DecodeJob$Stage.f9228b);
        if (f3 != DecodeJob$Stage.f9229e && f3 != DecodeJob$Stage.f9230f) {
            hVar = this.f9307w ? this.f9302r : this.f9308x ? this.f9303s : this.f9301q;
            hVar.execute(aVar);
        }
        hVar = this.f9300p;
        hVar.execute(aVar);
    }
}
