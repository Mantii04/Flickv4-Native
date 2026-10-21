package V3;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes2.dex */
public final class o extends r {

    /* renamed from: a, reason: collision with root package name */
    public final AtomicIntegerFieldUpdater f4010a;

    public o(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicIntegerFieldUpdater atomicIntegerFieldUpdater) {
        this.f4010a = atomicIntegerFieldUpdater;
    }

    @Override // V3.r
    public final int c(com.google.common.util.concurrent.c cVar) {
        return this.f4010a.decrementAndGet(cVar);
    }
}
