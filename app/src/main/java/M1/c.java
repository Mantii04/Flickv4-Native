package M1;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes.dex */
public final class c extends com.bumptech.glide.e {

    /* renamed from: a, reason: collision with root package name */
    public final AtomicReferenceFieldUpdater f2093a;

    /* renamed from: b, reason: collision with root package name */
    public final AtomicReferenceFieldUpdater f2094b;

    /* renamed from: c, reason: collision with root package name */
    public final AtomicReferenceFieldUpdater f2095c;

    /* renamed from: d, reason: collision with root package name */
    public final AtomicReferenceFieldUpdater f2096d;

    /* renamed from: e, reason: collision with root package name */
    public final AtomicReferenceFieldUpdater f2097e;

    public c(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater5) {
        this.f2093a = atomicReferenceFieldUpdater;
        this.f2094b = atomicReferenceFieldUpdater2;
        this.f2095c = atomicReferenceFieldUpdater3;
        this.f2096d = atomicReferenceFieldUpdater4;
        this.f2097e = atomicReferenceFieldUpdater5;
    }

    @Override // com.bumptech.glide.e
    public final boolean a(androidx.work.impl.utils.futures.b bVar, b bVar2, b bVar3) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        do {
            atomicReferenceFieldUpdater = this.f2096d;
            if (atomicReferenceFieldUpdater.compareAndSet(bVar, bVar2, bVar3)) {
                return true;
            }
        } while (atomicReferenceFieldUpdater.get(bVar) == bVar2);
        return false;
    }

    @Override // com.bumptech.glide.e
    public final boolean b(androidx.work.impl.utils.futures.b bVar, Object obj, Object obj2) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        do {
            atomicReferenceFieldUpdater = this.f2097e;
            if (atomicReferenceFieldUpdater.compareAndSet(bVar, obj, obj2)) {
                return true;
            }
        } while (atomicReferenceFieldUpdater.get(bVar) == obj);
        return false;
    }

    @Override // com.bumptech.glide.e
    public final boolean c(androidx.work.impl.utils.futures.b bVar, f fVar, f fVar2) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        do {
            atomicReferenceFieldUpdater = this.f2095c;
            if (atomicReferenceFieldUpdater.compareAndSet(bVar, fVar, fVar2)) {
                return true;
            }
        } while (atomicReferenceFieldUpdater.get(bVar) == fVar);
        return false;
    }

    @Override // com.bumptech.glide.e
    public final void j(f fVar, f fVar2) {
        this.f2094b.lazySet(fVar, fVar2);
    }

    @Override // com.bumptech.glide.e
    public final void k(f fVar, Thread thread) {
        this.f2093a.lazySet(fVar, thread);
    }
}
