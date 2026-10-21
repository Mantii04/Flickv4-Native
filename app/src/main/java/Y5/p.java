package Y5;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.internal.Ref$ObjectRef;

/* loaded from: classes2.dex */
public final class p {

    /* renamed from: b, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f4436b = AtomicReferenceFieldUpdater.newUpdater(p.class, Object.class, "lastScheduledTask");

    /* renamed from: c, reason: collision with root package name */
    public static final AtomicIntegerFieldUpdater f4437c = AtomicIntegerFieldUpdater.newUpdater(p.class, "producerIndex");

    /* renamed from: d, reason: collision with root package name */
    public static final AtomicIntegerFieldUpdater f4438d = AtomicIntegerFieldUpdater.newUpdater(p.class, "consumerIndex");

    /* renamed from: e, reason: collision with root package name */
    public static final AtomicIntegerFieldUpdater f4439e = AtomicIntegerFieldUpdater.newUpdater(p.class, "blockingTasksInBuffer");

    /* renamed from: a, reason: collision with root package name */
    public final AtomicReferenceArray f4440a = new AtomicReferenceArray(128);
    private volatile int blockingTasksInBuffer;
    private volatile int consumerIndex;
    private volatile Object lastScheduledTask;
    private volatile int producerIndex;

    public final j a(j jVar) {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f4437c;
        if (atomicIntegerFieldUpdater.get(this) - f4438d.get(this) == 127) {
            return jVar;
        }
        if (((l) jVar.f4424e).getTaskMode() == 1) {
            f4439e.incrementAndGet(this);
        }
        int i2 = atomicIntegerFieldUpdater.get(this) & 127;
        while (true) {
            AtomicReferenceArray atomicReferenceArray = this.f4440a;
            if (atomicReferenceArray.get(i2) == null) {
                atomicReferenceArray.lazySet(i2, jVar);
                atomicIntegerFieldUpdater.incrementAndGet(this);
                return null;
            }
            Thread.yield();
        }
    }

    public final j add(j jVar, boolean z6) {
        if (z6) {
            return a(jVar);
        }
        j jVar2 = (j) f4436b.getAndSet(this, jVar);
        if (jVar2 == null) {
            return null;
        }
        return a(jVar2);
    }

    public final j b() {
        j jVar;
        while (true) {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f4438d;
            int i2 = atomicIntegerFieldUpdater.get(this);
            if (i2 - f4437c.get(this) == 0) {
                return null;
            }
            int i7 = i2 & 127;
            if (atomicIntegerFieldUpdater.compareAndSet(this, i2, i2 + 1) && (jVar = (j) this.f4440a.getAndSet(i7, null)) != null) {
                if (((l) jVar.f4424e).getTaskMode() == 1) {
                    f4439e.decrementAndGet(this);
                }
                return jVar;
            }
        }
    }

    public final j c(int i2, boolean z6) {
        int i7 = i2 & 127;
        AtomicReferenceArray atomicReferenceArray = this.f4440a;
        j jVar = (j) atomicReferenceArray.get(i7);
        if (jVar != null) {
            if ((((l) jVar.f4424e).getTaskMode() == 1) == z6) {
                while (!atomicReferenceArray.compareAndSet(i7, jVar, null)) {
                    if (atomicReferenceArray.get(i7) != jVar) {
                    }
                }
                if (z6) {
                    f4439e.decrementAndGet(this);
                }
                return jVar;
            }
        }
        return null;
    }

    public final int getSize$kotlinx_coroutines_core() {
        Object obj = f4436b.get(this);
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f4438d;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater2 = f4437c;
        return obj != null ? (atomicIntegerFieldUpdater2.get(this) - atomicIntegerFieldUpdater.get(this)) + 1 : atomicIntegerFieldUpdater2.get(this) - atomicIntegerFieldUpdater.get(this);
    }

    public final void offloadAllWorkTo(f fVar) {
        j jVar = (j) f4436b.getAndSet(this, null);
        if (jVar != null) {
            fVar.addLast(jVar);
        }
        while (true) {
            j b7 = b();
            if (b7 == null) {
                return;
            } else {
                fVar.addLast(b7);
            }
        }
    }

    public final j poll() {
        j jVar = (j) f4436b.getAndSet(this, null);
        return jVar == null ? b() : jVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0025, code lost:
    
        r0 = Y5.p.f4438d.get(r5);
        r1 = Y5.p.f4437c.get(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0031, code lost:
    
        if (r0 == r1) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0039, code lost:
    
        if (Y5.p.f4439e.get(r5) != 0) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x003c, code lost:
    
        r1 = r1 - 1;
        r4 = c(r1, true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0042, code lost:
    
        if (r4 == null) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0044, code lost:
    
        return r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0045, code lost:
    
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final Y5.j pollBlocking() {
        /*
            r5 = this;
        L0:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r0 = Y5.p.f4436b
            java.lang.Object r1 = r0.get(r5)
            Y5.j r1 = (Y5.j) r1
            r2 = 1
            r3 = 0
            if (r1 != 0) goto Ld
            goto L25
        Ld:
            Y5.k r4 = r1.f4424e
            Y5.l r4 = (Y5.l) r4
            int r4 = r4.getTaskMode()
            if (r4 != r2) goto L25
        L17:
            boolean r2 = r0.compareAndSet(r5, r1, r3)
            if (r2 == 0) goto L1e
            return r1
        L1e:
            java.lang.Object r2 = r0.get(r5)
            if (r2 == r1) goto L17
            goto L0
        L25:
            java.util.concurrent.atomic.AtomicIntegerFieldUpdater r0 = Y5.p.f4438d
            int r0 = r0.get(r5)
            java.util.concurrent.atomic.AtomicIntegerFieldUpdater r1 = Y5.p.f4437c
            int r1 = r1.get(r5)
        L31:
            if (r0 == r1) goto L45
            java.util.concurrent.atomic.AtomicIntegerFieldUpdater r4 = Y5.p.f4439e
            int r4 = r4.get(r5)
            if (r4 != 0) goto L3c
            goto L45
        L3c:
            int r1 = r1 + (-1)
            Y5.j r4 = r5.c(r1, r2)
            if (r4 == 0) goto L31
            return r4
        L45:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: Y5.p.pollBlocking():Y5.j");
    }

    public final long trySteal(int i2, Ref$ObjectRef<j> ref$ObjectRef) {
        j jVar;
        if (i2 == 3) {
            jVar = b();
        } else {
            int i7 = f4438d.get(this);
            int i8 = f4437c.get(this);
            boolean z6 = i2 == 1;
            while (i7 != i8 && (!z6 || f4439e.get(this) != 0)) {
                int i9 = i7 + 1;
                jVar = c(i7, z6);
                if (jVar != null) {
                    break;
                }
                i7 = i9;
            }
            jVar = null;
        }
        if (jVar != null) {
            ref$ObjectRef.f17447b = jVar;
            return -1L;
        }
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f4436b;
            j jVar2 = (j) atomicReferenceFieldUpdater.get(this);
            if (jVar2 == null) {
                return -2L;
            }
            if (((((l) jVar2.f4424e).getTaskMode() == 1 ? 1 : 2) & i2) == 0) {
                return -2L;
            }
            long nanoTime = n.f4432f.nanoTime() - jVar2.f4423b;
            long j7 = n.f4428b;
            if (nanoTime < j7) {
                return j7 - nanoTime;
            }
            while (!atomicReferenceFieldUpdater.compareAndSet(this, jVar2, null)) {
                if (atomicReferenceFieldUpdater.get(this) != jVar2) {
                    break;
                }
            }
            ref$ObjectRef.f17447b = jVar2;
            return -1L;
        }
    }
}
