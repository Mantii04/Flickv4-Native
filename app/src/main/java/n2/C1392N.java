package n2;

import com.bumptech.glide.load.DataSource;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import o2.InterfaceC1428b;
import r2.C1561U;
import r2.InterfaceC1562V;

/* renamed from: n2.N, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1392N implements InterfaceC1405j, com.bumptech.glide.load.data.d {

    /* renamed from: b, reason: collision with root package name */
    public final com.bumptech.glide.load.engine.a f18908b;

    /* renamed from: e, reason: collision with root package name */
    public final C1406k f18909e;

    /* renamed from: f, reason: collision with root package name */
    public int f18910f;

    /* renamed from: j, reason: collision with root package name */
    public int f18911j = -1;

    /* renamed from: m, reason: collision with root package name */
    public l2.m f18912m;

    /* renamed from: n, reason: collision with root package name */
    public List f18913n;

    /* renamed from: p, reason: collision with root package name */
    public int f18914p;

    /* renamed from: q, reason: collision with root package name */
    public volatile C1561U f18915q;

    /* renamed from: r, reason: collision with root package name */
    public File f18916r;

    /* renamed from: s, reason: collision with root package name */
    public C1393O f18917s;

    public C1392N(C1406k c1406k, com.bumptech.glide.load.engine.a aVar) {
        this.f18909e = c1406k;
        this.f18908b = aVar;
    }

    @Override // n2.InterfaceC1405j
    public void cancel() {
        C1561U c1561u = this.f18915q;
        if (c1561u != null) {
            c1561u.f19758c.cancel();
        }
    }

    @Override // com.bumptech.glide.load.data.d
    public void onDataReady(Object obj) {
        this.f18908b.onDataFetcherReady(this.f18912m, obj, this.f18915q.f19758c, DataSource.f9182j, this.f18917s);
    }

    @Override // com.bumptech.glide.load.data.d
    public void onLoadFailed(Exception exc) {
        this.f18908b.onDataFetcherFailed(this.f18917s, exc, this.f18915q.f19758c, DataSource.f9182j);
    }

    @Override // n2.InterfaceC1405j
    public boolean startNext() {
        H2.i.beginSection("ResourceCacheGenerator.startNext");
        try {
            ArrayList a7 = this.f18909e.a();
            if (a7.isEmpty()) {
                H2.i.endSection();
                return false;
            }
            C1406k c1406k = this.f18909e;
            List<Class<?>> registeredResourceClasses = c1406k.f18964c.getRegistry().getRegisteredResourceClasses(c1406k.f18965d.getClass(), c1406k.f18968g, c1406k.f18972k);
            if (registeredResourceClasses.isEmpty()) {
                if (File.class.equals(this.f18909e.f18972k)) {
                    H2.i.endSection();
                    return false;
                }
                throw new IllegalStateException("Failed to find any load path from " + this.f18909e.f18965d.getClass() + " to " + this.f18909e.f18972k);
            }
            while (true) {
                List list = this.f18913n;
                if (list != null) {
                    if (this.f18914p < list.size()) {
                        this.f18915q = null;
                        boolean z6 = false;
                        while (!z6) {
                            if (!(this.f18914p < this.f18913n.size())) {
                                break;
                            }
                            List list2 = this.f18913n;
                            int i2 = this.f18914p;
                            this.f18914p = i2 + 1;
                            InterfaceC1562V interfaceC1562V = (InterfaceC1562V) list2.get(i2);
                            File file = this.f18916r;
                            C1406k c1406k2 = this.f18909e;
                            this.f18915q = interfaceC1562V.buildLoadData(file, c1406k2.f18966e, c1406k2.f18967f, c1406k2.f18970i);
                            if (this.f18915q != null) {
                                C1406k c1406k3 = this.f18909e;
                                if (c1406k3.f18964c.getRegistry().getLoadPath(this.f18915q.f19758c.getDataClass(), c1406k3.f18968g, c1406k3.f18972k) != null) {
                                    this.f18915q.f19758c.loadData(this.f18909e.f18976o, this);
                                    z6 = true;
                                }
                            }
                        }
                        H2.i.endSection();
                        return z6;
                    }
                }
                int i7 = this.f18911j + 1;
                this.f18911j = i7;
                if (i7 >= registeredResourceClasses.size()) {
                    int i8 = this.f18910f + 1;
                    this.f18910f = i8;
                    if (i8 >= a7.size()) {
                        H2.i.endSection();
                        return false;
                    }
                    this.f18911j = 0;
                }
                l2.m mVar = (l2.m) a7.get(this.f18910f);
                Class<?> cls = registeredResourceClasses.get(this.f18911j);
                l2.t c7 = this.f18909e.c(cls);
                InterfaceC1428b arrayPool = this.f18909e.f18964c.getArrayPool();
                C1406k c1406k4 = this.f18909e;
                this.f18917s = new C1393O(arrayPool, mVar, c1406k4.f18975n, c1406k4.f18966e, c1406k4.f18967f, c7, cls, c1406k4.f18970i);
                File file2 = c1406k4.f18969h.getDiskCache().get(this.f18917s);
                this.f18916r = file2;
                if (file2 != null) {
                    this.f18912m = mVar;
                    this.f18913n = this.f18909e.f18964c.getRegistry().getModelLoaders(file2);
                    this.f18914p = 0;
                }
            }
        } catch (Throwable th) {
            H2.i.endSection();
            throw th;
        }
    }
}
