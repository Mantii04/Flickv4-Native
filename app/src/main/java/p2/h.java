package p2;

import android.util.Log;
import j2.C1042c;
import j2.C1044e;
import j2.C1045f;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import n2.C1403h;

/* loaded from: classes.dex */
public final class h implements InterfaceC1492c {

    /* renamed from: b, reason: collision with root package name */
    public final File f19456b;

    /* renamed from: c, reason: collision with root package name */
    public final long f19457c;

    /* renamed from: e, reason: collision with root package name */
    public C1045f f19459e;

    /* renamed from: d, reason: collision with root package name */
    public final C.k f19458d = new C.k(12);

    /* renamed from: a, reason: collision with root package name */
    public final t f19455a = new t();

    @Deprecated
    public h(File file, long j7) {
        this.f19456b = file;
        this.f19457c = j7;
    }

    public static InterfaceC1492c create(File file, long j7) {
        return new h(file, j7);
    }

    public final synchronized C1045f a() {
        try {
            if (this.f19459e == null) {
                this.f19459e = C1045f.open(this.f19456b, 1, 1, this.f19457c);
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f19459e;
    }

    @Override // p2.InterfaceC1492c
    public File get(l2.m mVar) {
        String safeKey = this.f19455a.getSafeKey(mVar);
        if (Log.isLoggable("DiskLruCacheWrapper", 2)) {
            Log.v("DiskLruCacheWrapper", "Get: Obtained: " + safeKey + " for for Key: " + mVar);
        }
        try {
            C1044e c1044e = a().get(safeKey);
            if (c1044e != null) {
                return c1044e.getFile(0);
            }
            return null;
        } catch (IOException e3) {
            if (!Log.isLoggable("DiskLruCacheWrapper", 5)) {
                return null;
            }
            Log.w("DiskLruCacheWrapper", "Unable to get from disk cache", e3);
            return null;
        }
    }

    @Override // p2.InterfaceC1492c
    public void put(l2.m mVar, InterfaceC1491b interfaceC1491b) {
        C1494e c1494e;
        C1045f a7;
        String safeKey = this.f19455a.getSafeKey(mVar);
        C.k kVar = this.f19458d;
        synchronized (kVar) {
            try {
                c1494e = (C1494e) ((HashMap) kVar.f325a).get(safeKey);
                if (c1494e == null) {
                    c1494e = ((L0.f) kVar.f326b).a();
                    ((HashMap) kVar.f325a).put(safeKey, c1494e);
                }
                c1494e.f19452b++;
            } finally {
            }
        }
        c1494e.f19451a.lock();
        try {
            if (Log.isLoggable("DiskLruCacheWrapper", 2)) {
                Log.v("DiskLruCacheWrapper", "Put: Obtained: " + safeKey + " for for Key: " + mVar);
            }
            try {
                a7 = a();
            } catch (IOException e3) {
                if (Log.isLoggable("DiskLruCacheWrapper", 5)) {
                    Log.w("DiskLruCacheWrapper", "Unable to put to disk cache", e3);
                }
            }
            if (a7.get(safeKey) != null) {
                return;
            }
            C1042c edit = a7.edit(safeKey);
            if (edit == null) {
                throw new IllegalStateException("Had two simultaneous puts for: " + safeKey);
            }
            try {
                if (((C1403h) interfaceC1491b).write(edit.getFile(0))) {
                    edit.commit();
                }
                edit.abortUnlessCommitted();
            } catch (Throwable th) {
                edit.abortUnlessCommitted();
                throw th;
            }
        } finally {
            this.f19458d.u(safeKey);
        }
    }
}
