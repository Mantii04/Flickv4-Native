package n2;

import android.util.Log;
import com.bumptech.glide.load.DataSource;
import java.util.Collections;
import l2.InterfaceC1220a;
import p2.InterfaceC1492c;
import r2.C1561U;

/* loaded from: classes.dex */
public final class T implements InterfaceC1405j, InterfaceC1404i {

    /* renamed from: b, reason: collision with root package name */
    public final C1406k f18931b;

    /* renamed from: e, reason: collision with root package name */
    public final com.bumptech.glide.load.engine.a f18932e;

    /* renamed from: f, reason: collision with root package name */
    public volatile int f18933f;

    /* renamed from: j, reason: collision with root package name */
    public volatile C1401f f18934j;

    /* renamed from: m, reason: collision with root package name */
    public volatile Object f18935m;

    /* renamed from: n, reason: collision with root package name */
    public volatile C1561U f18936n;

    /* renamed from: p, reason: collision with root package name */
    public volatile C1402g f18937p;

    public T(C1406k c1406k, com.bumptech.glide.load.engine.a aVar) {
        this.f18931b = c1406k;
        this.f18932e = aVar;
    }

    public final boolean a(Object obj) {
        Throwable th;
        long logTime = G2.m.getLogTime();
        boolean z6 = false;
        try {
            com.bumptech.glide.load.data.g rewinder = this.f18931b.f18964c.getRegistry().getRewinder(obj);
            Object rewindAndGet = rewinder.rewindAndGet();
            InterfaceC1220a sourceEncoder = this.f18931b.f18964c.getRegistry().getSourceEncoder(rewindAndGet);
            C1403h c1403h = new C1403h(sourceEncoder, rewindAndGet, this.f18931b.f18970i);
            l2.m mVar = this.f18936n.f19756a;
            C1406k c1406k = this.f18931b;
            C1402g c1402g = new C1402g(mVar, c1406k.f18975n);
            InterfaceC1492c diskCache = c1406k.f18969h.getDiskCache();
            diskCache.put(c1402g, c1403h);
            if (Log.isLoggable("SourceGenerator", 2)) {
                Log.v("SourceGenerator", "Finished encoding source to cache, key: " + c1402g + ", data: " + obj + ", encoder: " + sourceEncoder + ", duration: " + G2.m.getElapsedMillis(logTime));
            }
            if (diskCache.get(c1402g) != null) {
                this.f18937p = c1402g;
                this.f18934j = new C1401f(Collections.singletonList(this.f18936n.f19756a), this.f18931b, this);
                this.f18936n.f19758c.cleanup();
                return true;
            }
            if (Log.isLoggable("SourceGenerator", 3)) {
                Log.d("SourceGenerator", "Attempt to write: " + this.f18937p + ", data: " + obj + " to the disk cache failed, maybe the disk cache is disabled? Trying to decode the data directly...");
            }
            try {
                this.f18932e.onDataFetcherReady(this.f18936n.f19756a, rewinder.rewindAndGet(), this.f18936n.f19758c, this.f18936n.f19758c.getDataSource(), this.f18936n.f19756a);
                return false;
            } catch (Throwable th2) {
                th = th2;
                z6 = true;
                if (z6) {
                    throw th;
                }
                this.f18936n.f19758c.cleanup();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @Override // n2.InterfaceC1405j
    public void cancel() {
        C1561U c1561u = this.f18936n;
        if (c1561u != null) {
            c1561u.f19758c.cancel();
        }
    }

    @Override // n2.InterfaceC1404i
    public void onDataFetcherFailed(l2.m mVar, Exception exc, com.bumptech.glide.load.data.e eVar, DataSource dataSource) {
        this.f18932e.onDataFetcherFailed(mVar, exc, eVar, this.f18936n.f19758c.getDataSource());
    }

    @Override // n2.InterfaceC1404i
    public void onDataFetcherReady(l2.m mVar, Object obj, com.bumptech.glide.load.data.e eVar, DataSource dataSource, l2.m mVar2) {
        this.f18932e.onDataFetcherReady(mVar, obj, eVar, this.f18936n.f19758c.getDataSource(), mVar);
    }

    @Override // n2.InterfaceC1404i
    public void reschedule() {
        throw new UnsupportedOperationException();
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x000e, code lost:
    
        if (a(r0) == false) goto L16;
     */
    @Override // n2.InterfaceC1405j
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean startNext() {
        /*
            r6 = this;
            java.lang.Object r0 = r6.f18935m
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L20
            java.lang.Object r0 = r6.f18935m
            r6.f18935m = r1
            boolean r0 = r6.a(r0)     // Catch: java.io.IOException -> L11
            if (r0 != 0) goto L20
            goto L2c
        L11:
            r0 = move-exception
            java.lang.String r3 = "SourceGenerator"
            r4 = 3
            boolean r4 = android.util.Log.isLoggable(r3, r4)
            if (r4 == 0) goto L20
            java.lang.String r4 = "Failed to properly rewind or write data to cache"
            android.util.Log.d(r3, r4, r0)
        L20:
            n2.f r0 = r6.f18934j
            if (r0 == 0) goto L2d
            n2.f r0 = r6.f18934j
            boolean r0 = r0.startNext()
            if (r0 == 0) goto L2d
        L2c:
            return r2
        L2d:
            r6.f18934j = r1
            r6.f18936n = r1
            r0 = 0
        L32:
            if (r0 != 0) goto L9a
            int r1 = r6.f18933f
            n2.k r3 = r6.f18931b
            java.util.ArrayList r3 = r3.b()
            int r3 = r3.size()
            if (r1 >= r3) goto L9a
            n2.k r1 = r6.f18931b
            java.util.ArrayList r1 = r1.b()
            int r3 = r6.f18933f
            int r4 = r3 + 1
            r6.f18933f = r4
            java.lang.Object r1 = r1.get(r3)
            r2.U r1 = (r2.C1561U) r1
            r6.f18936n = r1
            r2.U r1 = r6.f18936n
            if (r1 == 0) goto L32
            n2.k r1 = r6.f18931b
            n2.u r1 = r1.f18977p
            r2.U r3 = r6.f18936n
            com.bumptech.glide.load.data.e r3 = r3.f19758c
            com.bumptech.glide.load.DataSource r3 = r3.getDataSource()
            boolean r1 = r1.isDataCacheable(r3)
            if (r1 != 0) goto L86
            n2.k r1 = r6.f18931b
            r2.U r3 = r6.f18936n
            com.bumptech.glide.load.data.e r3 = r3.f19758c
            java.lang.Class r3 = r3.getDataClass()
            com.bumptech.glide.h r4 = r1.f18964c
            com.bumptech.glide.j r4 = r4.getRegistry()
            java.lang.Class r5 = r1.f18968g
            java.lang.Class r1 = r1.f18972k
            n2.J r1 = r4.getLoadPath(r3, r5, r1)
            if (r1 == 0) goto L32
        L86:
            r2.U r0 = r6.f18936n
            r2.U r1 = r6.f18936n
            com.bumptech.glide.load.data.e r1 = r1.f19758c
            n2.k r3 = r6.f18931b
            com.bumptech.glide.Priority r3 = r3.f18976o
            n2.S r4 = new n2.S
            r4.<init>(r6, r0)
            r1.loadData(r3, r4)
            r0 = r2
            goto L32
        L9a:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: n2.T.startNext():boolean");
    }
}
