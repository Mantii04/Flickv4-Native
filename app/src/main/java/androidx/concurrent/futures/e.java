package androidx.concurrent.futures;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes.dex */
public final class e extends a {

    /* renamed from: a, reason: collision with root package name */
    public final AtomicReferenceFieldUpdater f5208a;

    /* renamed from: b, reason: collision with root package name */
    public final AtomicReferenceFieldUpdater f5209b;

    /* renamed from: c, reason: collision with root package name */
    public final AtomicReferenceFieldUpdater f5210c;

    /* renamed from: d, reason: collision with root package name */
    public final AtomicReferenceFieldUpdater f5211d;

    /* renamed from: e, reason: collision with root package name */
    public final AtomicReferenceFieldUpdater f5212e;

    public e(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater5) {
        this.f5208a = atomicReferenceFieldUpdater;
        this.f5209b = atomicReferenceFieldUpdater2;
        this.f5210c = atomicReferenceFieldUpdater3;
        this.f5211d = atomicReferenceFieldUpdater4;
        this.f5212e = atomicReferenceFieldUpdater5;
    }

    @Override // androidx.concurrent.futures.a
    public final boolean a(i iVar, d dVar, d dVar2) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        do {
            atomicReferenceFieldUpdater = this.f5211d;
            if (atomicReferenceFieldUpdater.compareAndSet(iVar, dVar, dVar2)) {
                return true;
            }
        } while (atomicReferenceFieldUpdater.get(iVar) == dVar);
        return false;
    }

    @Override // androidx.concurrent.futures.a
    public final boolean b(i iVar, Object obj, Object obj2) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        do {
            atomicReferenceFieldUpdater = this.f5212e;
            if (atomicReferenceFieldUpdater.compareAndSet(iVar, obj, obj2)) {
                return true;
            }
        } while (atomicReferenceFieldUpdater.get(iVar) == obj);
        return false;
    }

    @Override // androidx.concurrent.futures.a
    public final boolean c(i iVar, h hVar, h hVar2) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        do {
            atomicReferenceFieldUpdater = this.f5210c;
            if (atomicReferenceFieldUpdater.compareAndSet(iVar, hVar, hVar2)) {
                return true;
            }
        } while (atomicReferenceFieldUpdater.get(iVar) == hVar);
        return false;
    }

    @Override // androidx.concurrent.futures.a
    public final void d(h hVar, h hVar2) {
        this.f5209b.lazySet(hVar, hVar2);
    }

    @Override // androidx.concurrent.futures.a
    public final void e(h hVar, Thread thread) {
        this.f5208a.lazySet(hVar, thread);
    }
}
