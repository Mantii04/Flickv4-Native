package androidx.concurrent.futures;

/* loaded from: classes.dex */
public final class g extends a {
    @Override // androidx.concurrent.futures.a
    public final boolean a(i iVar, d dVar, d dVar2) {
        synchronized (iVar) {
            try {
                if (iVar.listeners != dVar) {
                    return false;
                }
                iVar.listeners = dVar2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.concurrent.futures.a
    public final boolean b(i iVar, Object obj, Object obj2) {
        synchronized (iVar) {
            try {
                if (iVar.value != obj) {
                    return false;
                }
                iVar.value = obj2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.concurrent.futures.a
    public final boolean c(i iVar, h hVar, h hVar2) {
        synchronized (iVar) {
            try {
                if (iVar.waiters != hVar) {
                    return false;
                }
                iVar.waiters = hVar2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.concurrent.futures.a
    public final void d(h hVar, h hVar2) {
        hVar.f5217b = hVar2;
    }

    @Override // androidx.concurrent.futures.a
    public final void e(h hVar, Thread thread) {
        hVar.f5216a = thread;
    }
}
