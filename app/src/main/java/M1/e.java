package M1;

/* loaded from: classes.dex */
public final class e extends com.bumptech.glide.e {
    @Override // com.bumptech.glide.e
    public final boolean a(androidx.work.impl.utils.futures.b bVar, b bVar2, b bVar3) {
        synchronized (bVar) {
            try {
                if (bVar.f8321e != bVar2) {
                    return false;
                }
                bVar.f8321e = bVar3;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.bumptech.glide.e
    public final boolean b(androidx.work.impl.utils.futures.b bVar, Object obj, Object obj2) {
        synchronized (bVar) {
            try {
                if (bVar.f8320b != obj) {
                    return false;
                }
                bVar.f8320b = obj2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.bumptech.glide.e
    public final boolean c(androidx.work.impl.utils.futures.b bVar, f fVar, f fVar2) {
        synchronized (bVar) {
            try {
                if (bVar.f8322f != fVar) {
                    return false;
                }
                bVar.f8322f = fVar2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.bumptech.glide.e
    public final void j(f fVar, f fVar2) {
        fVar.f2102b = fVar2;
    }

    @Override // com.bumptech.glide.e
    public final void k(f fVar, Thread thread) {
        fVar.f2101a = thread;
    }
}
