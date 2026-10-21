package kotlinx.coroutines.sync;

import A.i;
import H5.l;
import R5.InterfaceC0285m;
import R5.S0;
import W5.AbstractC0357d;
import W5.D;
import W5.E;
import W5.G;
import a6.d;
import a6.e;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.internal.j;
import u5.C1711j;

/* loaded from: classes2.dex */
public class SemaphoreImpl {

    /* renamed from: c, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f17635c = AtomicReferenceFieldUpdater.newUpdater(SemaphoreImpl.class, Object.class, "head");

    /* renamed from: d, reason: collision with root package name */
    public static final AtomicLongFieldUpdater f17636d = AtomicLongFieldUpdater.newUpdater(SemaphoreImpl.class, "deqIdx");

    /* renamed from: e, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f17637e = AtomicReferenceFieldUpdater.newUpdater(SemaphoreImpl.class, Object.class, "tail");

    /* renamed from: f, reason: collision with root package name */
    public static final AtomicLongFieldUpdater f17638f = AtomicLongFieldUpdater.newUpdater(SemaphoreImpl.class, "enqIdx");

    /* renamed from: g, reason: collision with root package name */
    public static final AtomicIntegerFieldUpdater f17639g = AtomicIntegerFieldUpdater.newUpdater(SemaphoreImpl.class, "_availablePermits");
    private volatile int _availablePermits;

    /* renamed from: a, reason: collision with root package name */
    public final int f17640a;

    /* renamed from: b, reason: collision with root package name */
    public final l f17641b;
    private volatile long deqIdx;
    private volatile long enqIdx;
    private volatile Object head;
    private volatile Object tail;

    public SemaphoreImpl(int i2, int i7) {
        this.f17640a = i2;
        if (i2 <= 0) {
            throw new IllegalArgumentException(i.f(i2, "Semaphore should have at least 1 permit, but had ").toString());
        }
        if (i7 < 0 || i7 > i2) {
            throw new IllegalArgumentException(i.f(i2, "The number of acquired permits should be in 0..").toString());
        }
        e eVar = new e(0L, null, 2);
        this.head = eVar;
        this.tail = eVar;
        this._availablePermits = i2 - i7;
        this.f17641b = new l() { // from class: kotlinx.coroutines.sync.SemaphoreImpl$onCancellationRelease$1
            {
                super(1);
            }

            @Override // H5.l
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((Throwable) obj);
                return C1711j.f20329a;
            }

            public final void invoke(Throwable th) {
                SemaphoreImpl.this.release();
            }
        };
    }

    public final void acquire(InterfaceC0285m interfaceC0285m) {
        int i2;
        Object findSegmentInternal;
        long j7;
        int i7;
        G g7;
        G g8;
        e eVar;
        while (true) {
            int andDecrement = f17639g.getAndDecrement(this);
            if (andDecrement <= this.f17640a) {
                l lVar = this.f17641b;
                C1711j c1711j = C1711j.f20329a;
                if (andDecrement > 0) {
                    interfaceC0285m.resume(c1711j, lVar);
                    return;
                }
                j.checkNotNull(interfaceC0285m, "null cannot be cast to non-null type kotlinx.coroutines.Waiter");
                S0 s02 = (S0) interfaceC0285m;
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f17637e;
                e eVar2 = (e) atomicReferenceFieldUpdater.get(this);
                long andIncrement = f17638f.getAndIncrement(this);
                SemaphoreImpl$addAcquireToQueue$createNewSegment$1 semaphoreImpl$addAcquireToQueue$createNewSegment$1 = SemaphoreImpl$addAcquireToQueue$createNewSegment$1.f17642b;
                i2 = d.f4832f;
                long j8 = andIncrement / i2;
                while (true) {
                    findSegmentInternal = AbstractC0357d.findSegmentInternal(eVar2, j8, semaphoreImpl$addAcquireToQueue$createNewSegment$1);
                    if (!E.m46isClosedimpl(findSegmentInternal)) {
                        D m45getSegmentimpl = E.m45getSegmentimpl(findSegmentInternal);
                        while (true) {
                            D d7 = (D) atomicReferenceFieldUpdater.get(this);
                            eVar = eVar2;
                            j7 = andIncrement;
                            if (d7.f4177f >= m45getSegmentimpl.f4177f) {
                                break;
                            }
                            if (!m45getSegmentimpl.tryIncPointers$kotlinx_coroutines_core()) {
                                break;
                            }
                            while (!atomicReferenceFieldUpdater.compareAndSet(this, d7, m45getSegmentimpl)) {
                                if (atomicReferenceFieldUpdater.get(this) != d7) {
                                    if (m45getSegmentimpl.decPointers$kotlinx_coroutines_core()) {
                                        m45getSegmentimpl.remove();
                                    }
                                    eVar2 = eVar;
                                    andIncrement = j7;
                                }
                            }
                            if (d7.decPointers$kotlinx_coroutines_core()) {
                                d7.remove();
                            }
                        }
                    } else {
                        j7 = andIncrement;
                        break;
                    }
                    eVar2 = eVar;
                    andIncrement = j7;
                }
                e eVar3 = (e) E.m45getSegmentimpl(findSegmentInternal);
                i7 = d.f4832f;
                int i8 = (int) (j7 % i7);
                AtomicReferenceArray acquirers = eVar3.getAcquirers();
                while (!acquirers.compareAndSet(i8, null, s02)) {
                    if (acquirers.get(i8) != null) {
                        g7 = d.f4828b;
                        g8 = d.f4829c;
                        AtomicReferenceArray acquirers2 = eVar3.getAcquirers();
                        while (!acquirers2.compareAndSet(i8, g7, g8)) {
                            if (acquirers2.get(i8) != g7) {
                                break;
                            }
                        }
                        if (s02 instanceof InterfaceC0285m) {
                            j.checkNotNull(s02, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>");
                            ((InterfaceC0285m) s02).resume(c1711j, lVar);
                            return;
                        } else {
                            throw new IllegalStateException(("unexpected: " + s02).toString());
                        }
                    }
                }
                s02.invokeOnCancellation(eVar3, i8);
                return;
            }
        }
    }

    public int getAvailablePermits() {
        return Math.max(f17639g.get(this), 0);
    }

    public void release() {
        int i2;
        int i7;
        Object findSegmentInternal;
        boolean z6;
        int i8;
        G g7;
        G g8;
        int i9;
        G g9;
        G g10;
        G g11;
        do {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f17639g;
            int andIncrement = atomicIntegerFieldUpdater.getAndIncrement(this);
            int i10 = this.f17640a;
            if (andIncrement >= i10) {
                do {
                    i2 = atomicIntegerFieldUpdater.get(this);
                    if (i2 <= i10) {
                        break;
                    }
                } while (!atomicIntegerFieldUpdater.compareAndSet(this, i2, i10));
                throw new IllegalStateException(("The number of released permits cannot be greater than " + i10).toString());
            }
            if (andIncrement >= 0) {
                return;
            }
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f17635c;
            e eVar = (e) atomicReferenceFieldUpdater.get(this);
            long andIncrement2 = f17636d.getAndIncrement(this);
            i7 = d.f4832f;
            long j7 = andIncrement2 / i7;
            SemaphoreImpl$tryResumeNextFromQueue$createNewSegment$1 semaphoreImpl$tryResumeNextFromQueue$createNewSegment$1 = SemaphoreImpl$tryResumeNextFromQueue$createNewSegment$1.f17644b;
            while (true) {
                findSegmentInternal = AbstractC0357d.findSegmentInternal(eVar, j7, semaphoreImpl$tryResumeNextFromQueue$createNewSegment$1);
                if (E.m46isClosedimpl(findSegmentInternal)) {
                    break;
                }
                D m45getSegmentimpl = E.m45getSegmentimpl(findSegmentInternal);
                while (true) {
                    D d7 = (D) atomicReferenceFieldUpdater.get(this);
                    if (d7.f4177f >= m45getSegmentimpl.f4177f) {
                        break;
                    }
                    if (!m45getSegmentimpl.tryIncPointers$kotlinx_coroutines_core()) {
                        break;
                    }
                    while (!atomicReferenceFieldUpdater.compareAndSet(this, d7, m45getSegmentimpl)) {
                        if (atomicReferenceFieldUpdater.get(this) != d7) {
                            if (m45getSegmentimpl.decPointers$kotlinx_coroutines_core()) {
                                m45getSegmentimpl.remove();
                            }
                        }
                    }
                    if (d7.decPointers$kotlinx_coroutines_core()) {
                        d7.remove();
                    }
                }
            }
            e eVar2 = (e) E.m45getSegmentimpl(findSegmentInternal);
            eVar2.cleanPrev();
            z6 = false;
            if (eVar2.f4177f <= j7) {
                i8 = d.f4832f;
                int i11 = (int) (andIncrement2 % i8);
                g7 = d.f4828b;
                Object andSet = eVar2.getAcquirers().getAndSet(i11, g7);
                if (andSet == null) {
                    i9 = d.f4827a;
                    for (int i12 = 0; i12 < i9; i12++) {
                        Object obj = eVar2.getAcquirers().get(i11);
                        g11 = d.f4829c;
                        if (obj == g11) {
                            z6 = true;
                            break;
                        }
                    }
                    g9 = d.f4828b;
                    g10 = d.f4830d;
                    AtomicReferenceArray acquirers = eVar2.getAcquirers();
                    while (true) {
                        if (!acquirers.compareAndSet(i11, g9, g10)) {
                            if (acquirers.get(i11) != g9) {
                                break;
                            }
                        } else {
                            z6 = true;
                            break;
                        }
                    }
                    z6 = !z6;
                } else {
                    g8 = d.f4831e;
                    if (andSet != g8) {
                        if (!(andSet instanceof InterfaceC0285m)) {
                            throw new IllegalStateException(("unexpected: " + andSet).toString());
                        }
                        j.checkNotNull(andSet, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>");
                        InterfaceC0285m interfaceC0285m = (InterfaceC0285m) andSet;
                        Object tryResume = interfaceC0285m.tryResume(C1711j.f20329a, null, this.f17641b);
                        if (tryResume != null) {
                            interfaceC0285m.completeResume(tryResume);
                            z6 = true;
                            break;
                            break;
                        }
                    }
                }
            }
        } while (!z6);
    }

    public boolean tryAcquire() {
        int i2;
        while (true) {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f17639g;
            int i7 = atomicIntegerFieldUpdater.get(this);
            int i8 = this.f17640a;
            if (i7 > i8) {
                do {
                    i2 = atomicIntegerFieldUpdater.get(this);
                    if (i2 > i8) {
                    }
                } while (!atomicIntegerFieldUpdater.compareAndSet(this, i2, i8));
            } else {
                if (i7 <= 0) {
                    return false;
                }
                if (atomicIntegerFieldUpdater.compareAndSet(this, i7, i7 - 1)) {
                    return true;
                }
            }
        }
    }
}
