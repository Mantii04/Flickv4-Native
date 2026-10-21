package n2;

import com.bumptech.glide.load.DataSource;
import java.io.File;
import java.util.List;
import r2.C1561U;

/* renamed from: n2.f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1401f implements InterfaceC1405j, com.bumptech.glide.load.data.d {

    /* renamed from: b, reason: collision with root package name */
    public final List f18948b;

    /* renamed from: e, reason: collision with root package name */
    public final C1406k f18949e;

    /* renamed from: f, reason: collision with root package name */
    public final InterfaceC1404i f18950f;

    /* renamed from: j, reason: collision with root package name */
    public int f18951j = -1;

    /* renamed from: m, reason: collision with root package name */
    public l2.m f18952m;

    /* renamed from: n, reason: collision with root package name */
    public List f18953n;

    /* renamed from: p, reason: collision with root package name */
    public int f18954p;

    /* renamed from: q, reason: collision with root package name */
    public volatile C1561U f18955q;

    /* renamed from: r, reason: collision with root package name */
    public File f18956r;

    public C1401f(List list, C1406k c1406k, InterfaceC1404i interfaceC1404i) {
        this.f18948b = list;
        this.f18949e = c1406k;
        this.f18950f = interfaceC1404i;
    }

    @Override // n2.InterfaceC1405j
    public void cancel() {
        C1561U c1561u = this.f18955q;
        if (c1561u != null) {
            c1561u.f19758c.cancel();
        }
    }

    @Override // com.bumptech.glide.load.data.d
    public void onDataReady(Object obj) {
        this.f18950f.onDataFetcherReady(this.f18952m, obj, this.f18955q.f19758c, DataSource.f9181f, this.f18952m);
    }

    @Override // com.bumptech.glide.load.data.d
    public void onLoadFailed(Exception exc) {
        this.f18950f.onDataFetcherFailed(this.f18952m, exc, this.f18955q.f19758c, DataSource.f9181f);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x001a, code lost:
    
        r8.f18955q = null;
        r0 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x001e, code lost:
    
        if (r0 != false) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0028, code lost:
    
        if (r8.f18954p >= r8.f18953n.size()) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x002a, code lost:
    
        r3 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x002d, code lost:
    
        if (r3 == false) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x002f, code lost:
    
        r3 = r8.f18953n;
        r4 = r8.f18954p;
        r8.f18954p = r4 + 1;
        r3 = (r2.InterfaceC1562V) r3.get(r4);
        r4 = r8.f18956r;
        r5 = r8.f18949e;
        r8.f18955q = r3.buildLoadData(r4, r5.f18966e, r5.f18967f, r5.f18970i);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x004f, code lost:
    
        if (r8.f18955q == null) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0051, code lost:
    
        r3 = r8.f18949e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0069, code lost:
    
        if (r3.f18964c.getRegistry().getLoadPath(r8.f18955q.f19758c.getDataClass(), r3.f18968g, r3.f18972k) == null) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x006b, code lost:
    
        r3 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x006e, code lost:
    
        if (r3 == false) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0070, code lost:
    
        r8.f18955q.f19758c.loadData(r8.f18949e.f18976o, r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x007b, code lost:
    
        r0 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x006d, code lost:
    
        r3 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0082, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x002c, code lost:
    
        r3 = false;
     */
    @Override // n2.InterfaceC1405j
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean startNext() {
        /*
            r8 = this;
            java.lang.String r0 = "DataCacheGenerator.startNext"
            H2.i.beginSection(r0)
        L5:
            java.util.List r0 = r8.f18953n     // Catch: java.lang.Throwable -> L7d
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L83
            int r3 = r8.f18954p     // Catch: java.lang.Throwable -> L7d
            int r0 = r0.size()     // Catch: java.lang.Throwable -> L7d
            if (r3 >= r0) goto L15
            r0 = r2
            goto L16
        L15:
            r0 = r1
        L16:
            if (r0 != 0) goto L1a
            goto L83
        L1a:
            r0 = 0
            r8.f18955q = r0     // Catch: java.lang.Throwable -> L7d
            r0 = r1
        L1e:
            if (r0 != 0) goto L7f
            int r3 = r8.f18954p     // Catch: java.lang.Throwable -> L7d
            java.util.List r4 = r8.f18953n     // Catch: java.lang.Throwable -> L7d
            int r4 = r4.size()     // Catch: java.lang.Throwable -> L7d
            if (r3 >= r4) goto L2c
            r3 = r2
            goto L2d
        L2c:
            r3 = r1
        L2d:
            if (r3 == 0) goto L7f
            java.util.List r3 = r8.f18953n     // Catch: java.lang.Throwable -> L7d
            int r4 = r8.f18954p     // Catch: java.lang.Throwable -> L7d
            int r5 = r4 + 1
            r8.f18954p = r5     // Catch: java.lang.Throwable -> L7d
            java.lang.Object r3 = r3.get(r4)     // Catch: java.lang.Throwable -> L7d
            r2.V r3 = (r2.InterfaceC1562V) r3     // Catch: java.lang.Throwable -> L7d
            java.io.File r4 = r8.f18956r     // Catch: java.lang.Throwable -> L7d
            n2.k r5 = r8.f18949e     // Catch: java.lang.Throwable -> L7d
            int r6 = r5.f18966e     // Catch: java.lang.Throwable -> L7d
            int r7 = r5.f18967f     // Catch: java.lang.Throwable -> L7d
            l2.q r5 = r5.f18970i     // Catch: java.lang.Throwable -> L7d
            r2.U r3 = r3.buildLoadData(r4, r6, r7, r5)     // Catch: java.lang.Throwable -> L7d
            r8.f18955q = r3     // Catch: java.lang.Throwable -> L7d
            r2.U r3 = r8.f18955q     // Catch: java.lang.Throwable -> L7d
            if (r3 == 0) goto L1e
            n2.k r3 = r8.f18949e     // Catch: java.lang.Throwable -> L7d
            r2.U r4 = r8.f18955q     // Catch: java.lang.Throwable -> L7d
            com.bumptech.glide.load.data.e r4 = r4.f19758c     // Catch: java.lang.Throwable -> L7d
            java.lang.Class r4 = r4.getDataClass()     // Catch: java.lang.Throwable -> L7d
            com.bumptech.glide.h r5 = r3.f18964c     // Catch: java.lang.Throwable -> L7d
            com.bumptech.glide.j r5 = r5.getRegistry()     // Catch: java.lang.Throwable -> L7d
            java.lang.Class r6 = r3.f18968g     // Catch: java.lang.Throwable -> L7d
            java.lang.Class r3 = r3.f18972k     // Catch: java.lang.Throwable -> L7d
            n2.J r3 = r5.getLoadPath(r4, r6, r3)     // Catch: java.lang.Throwable -> L7d
            if (r3 == 0) goto L6d
            r3 = r2
            goto L6e
        L6d:
            r3 = r1
        L6e:
            if (r3 == 0) goto L1e
            r2.U r0 = r8.f18955q     // Catch: java.lang.Throwable -> L7d
            com.bumptech.glide.load.data.e r0 = r0.f19758c     // Catch: java.lang.Throwable -> L7d
            n2.k r3 = r8.f18949e     // Catch: java.lang.Throwable -> L7d
            com.bumptech.glide.Priority r3 = r3.f18976o     // Catch: java.lang.Throwable -> L7d
            r0.loadData(r3, r8)     // Catch: java.lang.Throwable -> L7d
            r0 = r2
            goto L1e
        L7d:
            r0 = move-exception
            goto Lc9
        L7f:
            H2.i.endSection()
            return r0
        L83:
            int r0 = r8.f18951j     // Catch: java.lang.Throwable -> L7d
            int r0 = r0 + r2
            r8.f18951j = r0     // Catch: java.lang.Throwable -> L7d
            java.util.List r2 = r8.f18948b     // Catch: java.lang.Throwable -> L7d
            int r2 = r2.size()     // Catch: java.lang.Throwable -> L7d
            if (r0 < r2) goto L94
            H2.i.endSection()
            return r1
        L94:
            java.util.List r0 = r8.f18948b     // Catch: java.lang.Throwable -> L7d
            int r2 = r8.f18951j     // Catch: java.lang.Throwable -> L7d
            java.lang.Object r0 = r0.get(r2)     // Catch: java.lang.Throwable -> L7d
            l2.m r0 = (l2.m) r0     // Catch: java.lang.Throwable -> L7d
            n2.g r2 = new n2.g     // Catch: java.lang.Throwable -> L7d
            n2.k r3 = r8.f18949e     // Catch: java.lang.Throwable -> L7d
            l2.m r4 = r3.f18975n     // Catch: java.lang.Throwable -> L7d
            r2.<init>(r0, r4)     // Catch: java.lang.Throwable -> L7d
            n2.z r3 = r3.f18969h     // Catch: java.lang.Throwable -> L7d
            p2.c r3 = r3.getDiskCache()     // Catch: java.lang.Throwable -> L7d
            java.io.File r2 = r3.get(r2)     // Catch: java.lang.Throwable -> L7d
            r8.f18956r = r2     // Catch: java.lang.Throwable -> L7d
            if (r2 == 0) goto L5
            r8.f18952m = r0     // Catch: java.lang.Throwable -> L7d
            n2.k r0 = r8.f18949e     // Catch: java.lang.Throwable -> L7d
            com.bumptech.glide.h r0 = r0.f18964c     // Catch: java.lang.Throwable -> L7d
            com.bumptech.glide.j r0 = r0.getRegistry()     // Catch: java.lang.Throwable -> L7d
            java.util.List r0 = r0.getModelLoaders(r2)     // Catch: java.lang.Throwable -> L7d
            r8.f18953n = r0     // Catch: java.lang.Throwable -> L7d
            r8.f18954p = r1     // Catch: java.lang.Throwable -> L7d
            goto L5
        Lc9:
            H2.i.endSection()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: n2.C1401f.startNext():boolean");
    }
}
