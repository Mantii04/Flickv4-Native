package V3;

/* renamed from: V3.e, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0344e extends com.bumptech.glide.f {
    @Override // com.bumptech.glide.f
    public final boolean a(com.google.common.util.concurrent.b bVar, C0341b c0341b, C0341b c0341b2) {
        synchronized (bVar) {
            try {
                if (bVar.f13207e != c0341b) {
                    return false;
                }
                bVar.f13207e = c0341b2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.bumptech.glide.f
    public final boolean b(com.google.common.util.concurrent.b bVar, Object obj, Object obj2) {
        synchronized (bVar) {
            try {
                if (bVar.f13206b != obj) {
                    return false;
                }
                bVar.f13206b = obj2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.bumptech.glide.f
    public final boolean c(com.google.common.util.concurrent.b bVar, C0352m c0352m, C0352m c0352m2) {
        synchronized (bVar) {
            try {
                if (bVar.f13208f != c0352m) {
                    return false;
                }
                bVar.f13208f = c0352m2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.bumptech.glide.f
    public final C0341b d(com.google.common.util.concurrent.b bVar) {
        C0341b c0341b;
        C0341b c0341b2 = C0341b.f3990d;
        synchronized (bVar) {
            c0341b = bVar.f13207e;
            if (c0341b != c0341b2) {
                bVar.f13207e = c0341b2;
            }
        }
        return c0341b;
    }

    @Override // com.bumptech.glide.f
    public final C0352m e(com.google.common.util.concurrent.b bVar) {
        C0352m c0352m;
        C0352m c0352m2 = C0352m.f4007c;
        synchronized (bVar) {
            c0352m = bVar.f13208f;
            if (c0352m != c0352m2) {
                bVar.f13208f = c0352m2;
            }
        }
        return c0352m;
    }

    @Override // com.bumptech.glide.f
    public final void h(C0352m c0352m, C0352m c0352m2) {
        c0352m.f4009b = c0352m2;
    }

    @Override // com.bumptech.glide.f
    public final void i(C0352m c0352m, Thread thread) {
        c0352m.f4008a = thread;
    }
}
