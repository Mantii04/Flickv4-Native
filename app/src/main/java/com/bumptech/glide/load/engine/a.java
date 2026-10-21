package com.bumptech.glide.load.engine;

import A.i;
import H2.f;
import H2.k;
import android.os.Build;
import android.util.Log;
import com.bumptech.glide.Priority;
import com.bumptech.glide.h;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.data.g;
import e.s0;
import java.util.ArrayList;
import l2.m;
import l2.p;
import l2.q;
import n2.C1383E;
import n2.C1388J;
import n2.C1392N;
import n2.C1401f;
import n2.C1406k;
import n2.C1407l;
import n2.C1408m;
import n2.InterfaceC1391M;
import n2.InterfaceC1404i;
import n2.InterfaceC1405j;
import n2.T;
import n2.u;
import n2.z;
import u2.C1696x;

/* loaded from: classes.dex */
public final class a implements InterfaceC1404i, Runnable, Comparable, f {

    /* renamed from: A, reason: collision with root package name */
    public DecodeJob$Stage f9241A;

    /* renamed from: B, reason: collision with root package name */
    public DecodeJob$RunReason f9242B;

    /* renamed from: C, reason: collision with root package name */
    public long f9243C;

    /* renamed from: D, reason: collision with root package name */
    public boolean f9244D;

    /* renamed from: E, reason: collision with root package name */
    public Object f9245E;

    /* renamed from: F, reason: collision with root package name */
    public Thread f9246F;

    /* renamed from: G, reason: collision with root package name */
    public m f9247G;

    /* renamed from: H, reason: collision with root package name */
    public m f9248H;

    /* renamed from: I, reason: collision with root package name */
    public Object f9249I;

    /* renamed from: J, reason: collision with root package name */
    public DataSource f9250J;

    /* renamed from: K, reason: collision with root package name */
    public com.bumptech.glide.load.data.e f9251K;

    /* renamed from: L, reason: collision with root package name */
    public volatile InterfaceC1405j f9252L;

    /* renamed from: M, reason: collision with root package name */
    public volatile boolean f9253M;

    /* renamed from: N, reason: collision with root package name */
    public volatile boolean f9254N;

    /* renamed from: O, reason: collision with root package name */
    public boolean f9255O;

    /* renamed from: j, reason: collision with root package name */
    public final z f9259j;

    /* renamed from: m, reason: collision with root package name */
    public final L.e f9260m;

    /* renamed from: q, reason: collision with root package name */
    public h f9263q;

    /* renamed from: r, reason: collision with root package name */
    public m f9264r;

    /* renamed from: s, reason: collision with root package name */
    public Priority f9265s;

    /* renamed from: t, reason: collision with root package name */
    public C1383E f9266t;

    /* renamed from: u, reason: collision with root package name */
    public int f9267u;

    /* renamed from: v, reason: collision with root package name */
    public int f9268v;

    /* renamed from: w, reason: collision with root package name */
    public u f9269w;

    /* renamed from: x, reason: collision with root package name */
    public q f9270x;

    /* renamed from: y, reason: collision with root package name */
    public e f9271y;

    /* renamed from: z, reason: collision with root package name */
    public int f9272z;

    /* renamed from: b, reason: collision with root package name */
    public final C1406k f9256b = new C1406k();

    /* renamed from: e, reason: collision with root package name */
    public final ArrayList f9257e = new ArrayList();

    /* renamed from: f, reason: collision with root package name */
    public final k f9258f = k.newInstance();

    /* renamed from: n, reason: collision with root package name */
    public final s0 f9261n = new s0();

    /* renamed from: p, reason: collision with root package name */
    public final C1408m f9262p = new C1408m();

    public a(z zVar, L.e eVar) {
        this.f9259j = zVar;
        this.f9260m = eVar;
    }

    public final InterfaceC1391M b(Object obj, DataSource dataSource) {
        Class<?> cls = obj.getClass();
        C1406k c1406k = this.f9256b;
        C1388J loadPath = c1406k.f18964c.getRegistry().getLoadPath(cls, c1406k.f18968g, c1406k.f18972k);
        q qVar = this.f9270x;
        if (Build.VERSION.SDK_INT >= 26) {
            boolean z6 = dataSource == DataSource.f9182j || c1406k.f18979r;
            p pVar = C1696x.f20307i;
            Boolean bool = (Boolean) qVar.get(pVar);
            if (bool == null || (bool.booleanValue() && !z6)) {
                qVar = new q();
                qVar.putAll(this.f9270x);
                qVar.set(pVar, Boolean.valueOf(z6));
            }
        }
        q qVar2 = qVar;
        g rewinder = this.f9263q.getRegistry().getRewinder(obj);
        try {
            return loadPath.load(rewinder, qVar2, this.f9267u, this.f9268v, new C1407l(this, dataSource));
        } finally {
            rewinder.cleanup();
        }
    }

    public void cancel() {
        this.f9254N = true;
        InterfaceC1405j interfaceC1405j = this.f9252L;
        if (interfaceC1405j != null) {
            interfaceC1405j.cancel();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0101  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void d() {
        /*
            Method dump skipped, instructions count: 261
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.engine.a.d():void");
    }

    public final InterfaceC1405j e() {
        int ordinal = this.f9241A.ordinal();
        C1406k c1406k = this.f9256b;
        if (ordinal == 1) {
            return new C1392N(c1406k, this);
        }
        if (ordinal == 2) {
            return new C1401f(c1406k.a(), c1406k, this);
        }
        if (ordinal == 3) {
            return new T(c1406k, this);
        }
        if (ordinal == 5) {
            return null;
        }
        throw new IllegalStateException("Unrecognized stage: " + this.f9241A);
    }

    public final DecodeJob$Stage f(DecodeJob$Stage decodeJob$Stage) {
        int ordinal = decodeJob$Stage.ordinal();
        if (ordinal == 0) {
            boolean decodeCachedResource = this.f9269w.decodeCachedResource();
            DecodeJob$Stage decodeJob$Stage2 = DecodeJob$Stage.f9229e;
            return decodeCachedResource ? decodeJob$Stage2 : f(decodeJob$Stage2);
        }
        if (ordinal == 1) {
            boolean decodeCachedData = this.f9269w.decodeCachedData();
            DecodeJob$Stage decodeJob$Stage3 = DecodeJob$Stage.f9230f;
            return decodeCachedData ? decodeJob$Stage3 : f(decodeJob$Stage3);
        }
        DecodeJob$Stage decodeJob$Stage4 = DecodeJob$Stage.f9233n;
        if (ordinal == 2) {
            return this.f9244D ? decodeJob$Stage4 : DecodeJob$Stage.f9231j;
        }
        if (ordinal == 3 || ordinal == 5) {
            return decodeJob$Stage4;
        }
        throw new IllegalArgumentException("Unrecognized stage: " + decodeJob$Stage);
    }

    public final void g(long j7, String str, String str2) {
        StringBuilder s6 = i.s(str, " in ");
        s6.append(G2.m.getElapsedMillis(j7));
        s6.append(", load key: ");
        s6.append(this.f9266t);
        s6.append(str2 != null ? ", ".concat(str2) : "");
        s6.append(", thread: ");
        s6.append(Thread.currentThread().getName());
        Log.v("DecodeJob", s6.toString());
    }

    @Override // H2.f
    public k getVerifier() {
        return this.f9258f;
    }

    public final void h() {
        boolean a7;
        m();
        this.f9271y.onLoadFailed(new GlideException("Failed to load resource", new ArrayList(this.f9257e)));
        C1408m c1408m = this.f9262p;
        synchronized (c1408m) {
            c1408m.f18984c = true;
            a7 = c1408m.a();
        }
        if (a7) {
            j();
        }
    }

    public final void i() {
        boolean a7;
        C1408m c1408m = this.f9262p;
        synchronized (c1408m) {
            c1408m.f18982a = true;
            a7 = c1408m.a();
        }
        if (a7) {
            j();
        }
    }

    public final void j() {
        C1408m c1408m = this.f9262p;
        synchronized (c1408m) {
            c1408m.f18983b = false;
            c1408m.f18982a = false;
            c1408m.f18984c = false;
        }
        s0 s0Var = this.f9261n;
        s0Var.f13865a = null;
        s0Var.f13866b = null;
        s0Var.f13867c = null;
        C1406k c1406k = this.f9256b;
        c1406k.f18964c = null;
        c1406k.f18965d = null;
        c1406k.f18975n = null;
        c1406k.f18968g = null;
        c1406k.f18972k = null;
        c1406k.f18970i = null;
        c1406k.f18976o = null;
        c1406k.f18971j = null;
        c1406k.f18977p = null;
        c1406k.f18962a.clear();
        c1406k.f18973l = false;
        c1406k.f18963b.clear();
        c1406k.f18974m = false;
        this.f9253M = false;
        this.f9263q = null;
        this.f9264r = null;
        this.f9270x = null;
        this.f9265s = null;
        this.f9266t = null;
        this.f9271y = null;
        this.f9241A = null;
        this.f9252L = null;
        this.f9246F = null;
        this.f9247G = null;
        this.f9249I = null;
        this.f9250J = null;
        this.f9251K = null;
        this.f9243C = 0L;
        this.f9254N = false;
        this.f9245E = null;
        this.f9257e.clear();
        this.f9260m.release(this);
    }

    public final void k() {
        this.f9246F = Thread.currentThread();
        this.f9243C = G2.m.getLogTime();
        boolean z6 = false;
        while (!this.f9254N && this.f9252L != null && !(z6 = this.f9252L.startNext())) {
            this.f9241A = f(this.f9241A);
            this.f9252L = e();
            if (this.f9241A == DecodeJob$Stage.f9231j) {
                this.f9242B = DecodeJob$RunReason.f9225e;
                this.f9271y.reschedule(this);
                return;
            }
        }
        if ((this.f9241A == DecodeJob$Stage.f9233n || this.f9254N) && !z6) {
            h();
        }
    }

    public final void l() {
        int ordinal = this.f9242B.ordinal();
        if (ordinal == 0) {
            this.f9241A = f(DecodeJob$Stage.f9228b);
            this.f9252L = e();
            k();
        } else if (ordinal == 1) {
            k();
        } else if (ordinal == 2) {
            d();
        } else {
            throw new IllegalStateException("Unrecognized run reason: " + this.f9242B);
        }
    }

    public final void m() {
        this.f9258f.throwIfRecycled();
        if (this.f9253M) {
            throw new IllegalStateException("Already notified", this.f9257e.isEmpty() ? null : (Throwable) b.c.h(1, this.f9257e));
        }
        this.f9253M = true;
    }

    @Override // n2.InterfaceC1404i
    public void onDataFetcherFailed(m mVar, Exception exc, com.bumptech.glide.load.data.e eVar, DataSource dataSource) {
        eVar.cleanup();
        GlideException glideException = new GlideException("Fetching data failed", exc);
        Class<Object> dataClass = eVar.getDataClass();
        glideException.f9237e = mVar;
        glideException.f9238f = dataSource;
        glideException.f9239j = dataClass;
        this.f9257e.add(glideException);
        if (Thread.currentThread() == this.f9246F) {
            k();
        } else {
            this.f9242B = DecodeJob$RunReason.f9225e;
            this.f9271y.reschedule(this);
        }
    }

    @Override // n2.InterfaceC1404i
    public void onDataFetcherReady(m mVar, Object obj, com.bumptech.glide.load.data.e eVar, DataSource dataSource, m mVar2) {
        this.f9247G = mVar;
        this.f9249I = obj;
        this.f9251K = eVar;
        this.f9250J = dataSource;
        this.f9248H = mVar2;
        this.f9255O = mVar != this.f9256b.a().get(0);
        if (Thread.currentThread() != this.f9246F) {
            this.f9242B = DecodeJob$RunReason.f9226f;
            this.f9271y.reschedule(this);
        } else {
            H2.i.beginSection("DecodeJob.decodeFromRetrievedData");
            try {
                d();
            } finally {
                H2.i.endSection();
            }
        }
    }

    @Override // n2.InterfaceC1404i
    public void reschedule() {
        this.f9242B = DecodeJob$RunReason.f9225e;
        this.f9271y.reschedule(this);
    }

    @Override // java.lang.Runnable
    public void run() {
        H2.i.beginSectionFormat("DecodeJob#run(reason=%s, model=%s)", this.f9242B, this.f9245E);
        com.bumptech.glide.load.data.e eVar = this.f9251K;
        try {
            try {
                try {
                    if (this.f9254N) {
                        h();
                        if (eVar != null) {
                            eVar.cleanup();
                        }
                        H2.i.endSection();
                        return;
                    }
                    l();
                    if (eVar != null) {
                        eVar.cleanup();
                    }
                    H2.i.endSection();
                } catch (CallbackException e3) {
                    throw e3;
                }
            } catch (Throwable th) {
                if (Log.isLoggable("DecodeJob", 3)) {
                    Log.d("DecodeJob", "DecodeJob threw unexpectedly, isCancelled: " + this.f9254N + ", stage: " + this.f9241A, th);
                }
                if (this.f9241A != DecodeJob$Stage.f9232m) {
                    this.f9257e.add(th);
                    h();
                }
                if (!this.f9254N) {
                    throw th;
                }
                throw th;
            }
        } catch (Throwable th2) {
            if (eVar != null) {
                eVar.cleanup();
            }
            H2.i.endSection();
            throw th2;
        }
    }

    @Override // java.lang.Comparable
    public int compareTo(a aVar) {
        int ordinal = this.f9265s.ordinal() - aVar.f9265s.ordinal();
        return ordinal == 0 ? this.f9272z - aVar.f9272z : ordinal;
    }
}
