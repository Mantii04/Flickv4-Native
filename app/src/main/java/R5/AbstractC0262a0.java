package R5;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import y5.InterfaceC1952k;

/* renamed from: R5.a0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0262a0 extends AbstractC0264b0 implements P {

    /* renamed from: n, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f3169n = AtomicReferenceFieldUpdater.newUpdater(AbstractC0262a0.class, Object.class, "_queue");

    /* renamed from: p, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f3170p = AtomicReferenceFieldUpdater.newUpdater(AbstractC0262a0.class, Object.class, "_delayed");

    /* renamed from: q, reason: collision with root package name */
    public static final AtomicIntegerFieldUpdater f3171q = AtomicIntegerFieldUpdater.newUpdater(AbstractC0262a0.class, "_isCompleted");
    private volatile Object _delayed;
    private volatile int _isCompleted = 0;
    private volatile Object _queue;

    @Override // R5.E
    public final void dispatch(InterfaceC1952k interfaceC1952k, Runnable runnable) {
        enqueue(runnable);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0072, code lost:
    
        unpark();
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0075, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void enqueue(java.lang.Runnable r6) {
        /*
            r5 = this;
        L0:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r0 = R5.AbstractC0262a0.f3169n
            java.lang.Object r1 = r0.get(r5)
            java.util.concurrent.atomic.AtomicIntegerFieldUpdater r2 = R5.AbstractC0262a0.f3171q
            int r2 = r2.get(r5)
            if (r2 == 0) goto Lf
            goto L51
        Lf:
            if (r1 != 0) goto L20
        L11:
            r1 = 0
            boolean r1 = r0.compareAndSet(r5, r1, r6)
            if (r1 == 0) goto L19
            goto L72
        L19:
            java.lang.Object r1 = r0.get(r5)
            if (r1 == 0) goto L11
            goto L0
        L20:
            boolean r2 = r1 instanceof W5.u
            r3 = 1
            if (r2 == 0) goto L4b
            java.lang.String r2 = "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeTaskQueueCore<java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }>{ kotlinx.coroutines.EventLoop_commonKt.Queue<java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }> }"
            kotlin.jvm.internal.j.checkNotNull(r1, r2)
            r2 = r1
            W5.u r2 = (W5.u) r2
            int r4 = r2.addLast(r6)
            if (r4 == 0) goto L72
            if (r4 == r3) goto L39
            r0 = 2
            if (r4 == r0) goto L51
            goto L0
        L39:
            W5.u r2 = r2.next()
        L3d:
            boolean r3 = r0.compareAndSet(r5, r1, r2)
            if (r3 == 0) goto L44
            goto L0
        L44:
            java.lang.Object r3 = r0.get(r5)
            if (r3 == r1) goto L3d
            goto L0
        L4b:
            W5.G r2 = R5.AbstractC0268d0.access$getCLOSED_EMPTY$p()
            if (r1 != r2) goto L57
        L51:
            R5.L r0 = R5.L.f3150r
            r0.enqueue(r6)
            return
        L57:
            W5.u r2 = new W5.u
            r4 = 8
            r2.<init>(r4, r3)
            java.lang.String r3 = "null cannot be cast to non-null type java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }"
            kotlin.jvm.internal.j.checkNotNull(r1, r3)
            r3 = r1
            java.lang.Runnable r3 = (java.lang.Runnable) r3
            r2.addLast(r3)
            r2.addLast(r6)
        L6c:
            boolean r3 = r0.compareAndSet(r5, r1, r2)
            if (r3 == 0) goto L76
        L72:
            r5.unpark()
            return
        L76:
            java.lang.Object r3 = r0.get(r5)
            if (r3 == r1) goto L6c
            goto L0
        */
        throw new UnsupportedOperationException("Method not decompiled: R5.AbstractC0262a0.enqueue(java.lang.Runnable):void");
    }

    @Override // R5.Y
    public long getNextTime() {
        W5.G g7;
        if (super.getNextTime() == 0) {
            return 0L;
        }
        Object obj = f3169n.get(this);
        if (obj != null) {
            if (!(obj instanceof W5.u)) {
                g7 = AbstractC0268d0.f3173a;
                return obj == g7 ? Long.MAX_VALUE : 0L;
            }
            if (!((W5.u) obj).isEmpty()) {
                return 0L;
            }
        }
        return Long.MAX_VALUE;
    }

    public boolean isEmpty() {
        W5.G g7;
        if (!isUnconfinedQueueEmpty()) {
            return false;
        }
        Object obj = f3169n.get(this);
        if (obj == null) {
            return true;
        }
        if (obj instanceof W5.u) {
            return ((W5.u) obj).isEmpty();
        }
        g7 = AbstractC0268d0.f3173a;
        return obj == g7;
    }

    @Override // R5.Y
    public long processNextEvent() {
        Runnable runnable;
        W5.G g7;
        if (processUnconfinedEvent()) {
            return 0L;
        }
        loop0: while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f3169n;
            Object obj = atomicReferenceFieldUpdater.get(this);
            runnable = null;
            if (obj == null) {
                break;
            }
            if (!(obj instanceof W5.u)) {
                g7 = AbstractC0268d0.f3173a;
                if (obj != g7) {
                    while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, null)) {
                        if (atomicReferenceFieldUpdater.get(this) != obj) {
                            break;
                        }
                    }
                    kotlin.jvm.internal.j.checkNotNull(obj, "null cannot be cast to non-null type java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }");
                    runnable = (Runnable) obj;
                    break loop0;
                }
                break;
            }
            kotlin.jvm.internal.j.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeTaskQueueCore<java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }>{ kotlinx.coroutines.EventLoop_commonKt.Queue<java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }> }");
            W5.u uVar = (W5.u) obj;
            Object removeFirstOrNull = uVar.removeFirstOrNull();
            if (removeFirstOrNull != W5.u.f4214h) {
                runnable = (Runnable) removeFirstOrNull;
                break;
            }
            W5.u next = uVar.next();
            while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, next) && atomicReferenceFieldUpdater.get(this) == obj) {
            }
        }
        if (runnable == null) {
            return getNextTime();
        }
        runnable.run();
        return 0L;
    }

    public final void resetAll() {
        f3169n.set(this, null);
        f3170p.set(this, null);
    }

    @Override // R5.Y
    public void shutdown() {
        W5.G g7;
        W5.G g8;
        O0.f3153a.resetEventLoop$kotlinx_coroutines_core();
        f3171q.set(this, 1);
        loop0: while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f3169n;
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj != null) {
                if (!(obj instanceof W5.u)) {
                    g8 = AbstractC0268d0.f3173a;
                    if (obj != g8) {
                        W5.u uVar = new W5.u(8, true);
                        kotlin.jvm.internal.j.checkNotNull(obj, "null cannot be cast to non-null type java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }");
                        uVar.addLast((Runnable) obj);
                        while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, uVar)) {
                            if (atomicReferenceFieldUpdater.get(this) != obj) {
                                break;
                            }
                        }
                        break loop0;
                    }
                    break;
                }
                ((W5.u) obj).close();
                break;
            }
            g7 = AbstractC0268d0.f3173a;
            while (!atomicReferenceFieldUpdater.compareAndSet(this, null, g7)) {
                if (atomicReferenceFieldUpdater.get(this) != null) {
                    break;
                }
            }
            break loop0;
        }
        while (processNextEvent() <= 0) {
        }
        AbstractC0265c.getTimeSource();
        System.nanoTime();
    }
}
