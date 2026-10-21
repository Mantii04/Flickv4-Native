package V3;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* renamed from: V3.c, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0342c extends com.bumptech.glide.f {

    /* renamed from: b, reason: collision with root package name */
    public final AtomicReferenceFieldUpdater f3994b;

    /* renamed from: c, reason: collision with root package name */
    public final AtomicReferenceFieldUpdater f3995c;

    /* renamed from: d, reason: collision with root package name */
    public final AtomicReferenceFieldUpdater f3996d;

    /* renamed from: e, reason: collision with root package name */
    public final AtomicReferenceFieldUpdater f3997e;

    /* renamed from: f, reason: collision with root package name */
    public final AtomicReferenceFieldUpdater f3998f;

    public C0342c(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater5) {
        this.f3994b = atomicReferenceFieldUpdater;
        this.f3995c = atomicReferenceFieldUpdater2;
        this.f3996d = atomicReferenceFieldUpdater3;
        this.f3997e = atomicReferenceFieldUpdater4;
        this.f3998f = atomicReferenceFieldUpdater5;
    }

    @Override // com.bumptech.glide.f
    public final boolean a(com.google.common.util.concurrent.b bVar, C0341b c0341b, C0341b c0341b2) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        do {
            atomicReferenceFieldUpdater = this.f3997e;
            if (atomicReferenceFieldUpdater.compareAndSet(bVar, c0341b, c0341b2)) {
                return true;
            }
        } while (atomicReferenceFieldUpdater.get(bVar) == c0341b);
        return false;
    }

    @Override // com.bumptech.glide.f
    public final boolean b(com.google.common.util.concurrent.b bVar, Object obj, Object obj2) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        do {
            atomicReferenceFieldUpdater = this.f3998f;
            if (atomicReferenceFieldUpdater.compareAndSet(bVar, obj, obj2)) {
                return true;
            }
        } while (atomicReferenceFieldUpdater.get(bVar) == obj);
        return false;
    }

    @Override // com.bumptech.glide.f
    public final boolean c(com.google.common.util.concurrent.b bVar, C0352m c0352m, C0352m c0352m2) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        do {
            atomicReferenceFieldUpdater = this.f3996d;
            if (atomicReferenceFieldUpdater.compareAndSet(bVar, c0352m, c0352m2)) {
                return true;
            }
        } while (atomicReferenceFieldUpdater.get(bVar) == c0352m);
        return false;
    }

    @Override // com.bumptech.glide.f
    public final C0341b d(com.google.common.util.concurrent.b bVar) {
        return (C0341b) this.f3997e.getAndSet(bVar, C0341b.f3990d);
    }

    @Override // com.bumptech.glide.f
    public final C0352m e(com.google.common.util.concurrent.b bVar) {
        return (C0352m) this.f3996d.getAndSet(bVar, C0352m.f4007c);
    }

    @Override // com.bumptech.glide.f
    public final void h(C0352m c0352m, C0352m c0352m2) {
        this.f3995c.lazySet(c0352m, c0352m2);
    }

    @Override // com.bumptech.glide.f
    public final void i(C0352m c0352m, Thread thread) {
        this.f3994b.lazySet(c0352m, thread);
    }
}
