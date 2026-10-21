package e6;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

/* renamed from: e6.c, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0861c {
    public C0861c(kotlin.jvm.internal.g gVar) {
    }

    public static final boolean access$cancelScheduledTimeout(C0861c c0861c, C0865g c0865g) {
        boolean z6;
        C0865g c0865g2;
        C0865g c0865g3;
        C0865g c0865g4;
        c0861c.getClass();
        ReentrantLock lock = C0865g.Companion.getLock();
        lock.lock();
        try {
            z6 = c0865g.inQueue;
            if (!z6) {
                return false;
            }
            c0865g.inQueue = false;
            for (c0865g2 = C0865g.head; c0865g2 != null; c0865g2 = c0865g2.next) {
                c0865g3 = c0865g2.next;
                if (c0865g3 == c0865g) {
                    c0865g4 = c0865g.next;
                    c0865g2.next = c0865g4;
                    c0865g.next = null;
                    return false;
                }
            }
            lock.unlock();
            return true;
        } finally {
            lock.unlock();
        }
    }

    /* JADX WARN: Incorrect condition in loop: B:14:0x0069 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void access$scheduleTimeout(e6.C0861c r4, e6.C0865g r5, long r6, boolean r8) {
        /*
            r4.getClass()
            e6.c r4 = e6.C0865g.Companion
            java.util.concurrent.locks.ReentrantLock r4 = r4.getLock()
            r4.lock()
            boolean r0 = e6.C0865g.access$getInQueue$p(r5)     // Catch: java.lang.Throwable -> L2d
            if (r0 != 0) goto La6
            r0 = 1
            e6.C0865g.access$setInQueue$p(r5, r0)     // Catch: java.lang.Throwable -> L2d
            e6.g r0 = e6.C0865g.access$getHead$cp()     // Catch: java.lang.Throwable -> L2d
            if (r0 != 0) goto L30
            e6.g r0 = new e6.g     // Catch: java.lang.Throwable -> L2d
            r0.<init>()     // Catch: java.lang.Throwable -> L2d
            e6.C0865g.access$setHead$cp(r0)     // Catch: java.lang.Throwable -> L2d
            e6.d r0 = new e6.d     // Catch: java.lang.Throwable -> L2d
            r0.<init>()     // Catch: java.lang.Throwable -> L2d
            r0.start()     // Catch: java.lang.Throwable -> L2d
            goto L30
        L2d:
            r5 = move-exception
            goto Lae
        L30:
            long r0 = java.lang.System.nanoTime()     // Catch: java.lang.Throwable -> L2d
            r2 = 0
            int r2 = (r6 > r2 ? 1 : (r6 == r2 ? 0 : -1))
            if (r2 == 0) goto L4a
            if (r8 == 0) goto L4a
            long r2 = r5.deadlineNanoTime()     // Catch: java.lang.Throwable -> L2d
            long r2 = r2 - r0
            long r6 = java.lang.Math.min(r6, r2)     // Catch: java.lang.Throwable -> L2d
            long r6 = r6 + r0
            e6.C0865g.access$setTimeoutAt$p(r5, r6)     // Catch: java.lang.Throwable -> L2d
            goto L5a
        L4a:
            if (r2 == 0) goto L51
            long r6 = r6 + r0
            e6.C0865g.access$setTimeoutAt$p(r5, r6)     // Catch: java.lang.Throwable -> L2d
            goto L5a
        L51:
            if (r8 == 0) goto La0
            long r6 = r5.deadlineNanoTime()     // Catch: java.lang.Throwable -> L2d
            e6.C0865g.access$setTimeoutAt$p(r5, r6)     // Catch: java.lang.Throwable -> L2d
        L5a:
            long r6 = e6.C0865g.access$remainingNanos(r5, r0)     // Catch: java.lang.Throwable -> L2d
            e6.g r8 = e6.C0865g.access$getHead$cp()     // Catch: java.lang.Throwable -> L2d
            kotlin.jvm.internal.j.checkNotNull(r8)     // Catch: java.lang.Throwable -> L2d
        L65:
            e6.g r2 = e6.C0865g.access$getNext$p(r8)     // Catch: java.lang.Throwable -> L2d
            if (r2 == 0) goto L83
            e6.g r2 = e6.C0865g.access$getNext$p(r8)     // Catch: java.lang.Throwable -> L2d
            kotlin.jvm.internal.j.checkNotNull(r2)     // Catch: java.lang.Throwable -> L2d
            long r2 = e6.C0865g.access$remainingNanos(r2, r0)     // Catch: java.lang.Throwable -> L2d
            int r2 = (r6 > r2 ? 1 : (r6 == r2 ? 0 : -1))
            if (r2 >= 0) goto L7b
            goto L83
        L7b:
            e6.g r8 = e6.C0865g.access$getNext$p(r8)     // Catch: java.lang.Throwable -> L2d
            kotlin.jvm.internal.j.checkNotNull(r8)     // Catch: java.lang.Throwable -> L2d
            goto L65
        L83:
            e6.g r6 = e6.C0865g.access$getNext$p(r8)     // Catch: java.lang.Throwable -> L2d
            e6.C0865g.access$setNext$p(r5, r6)     // Catch: java.lang.Throwable -> L2d
            e6.C0865g.access$setNext$p(r8, r5)     // Catch: java.lang.Throwable -> L2d
            e6.g r5 = e6.C0865g.access$getHead$cp()     // Catch: java.lang.Throwable -> L2d
            if (r8 != r5) goto L9c
            e6.c r5 = e6.C0865g.Companion     // Catch: java.lang.Throwable -> L2d
            java.util.concurrent.locks.Condition r5 = r5.getCondition()     // Catch: java.lang.Throwable -> L2d
            r5.signal()     // Catch: java.lang.Throwable -> L2d
        L9c:
            r4.unlock()
            return
        La0:
            java.lang.AssertionError r5 = new java.lang.AssertionError     // Catch: java.lang.Throwable -> L2d
            r5.<init>()     // Catch: java.lang.Throwable -> L2d
            throw r5     // Catch: java.lang.Throwable -> L2d
        La6:
            java.lang.String r5 = "Unbalanced enter/exit"
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L2d
            r6.<init>(r5)     // Catch: java.lang.Throwable -> L2d
            throw r6     // Catch: java.lang.Throwable -> L2d
        Lae:
            r4.unlock()
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: e6.C0861c.access$scheduleTimeout(e6.c, e6.g, long, boolean):void");
    }

    public final C0865g awaitTimeout$okio() throws InterruptedException {
        C0865g c0865g;
        C0865g c0865g2;
        C0865g c0865g3;
        C0865g c0865g4;
        long j7;
        C0865g c0865g5;
        C0865g c0865g6;
        long j8;
        C0865g c0865g7;
        c0865g = C0865g.head;
        kotlin.jvm.internal.j.checkNotNull(c0865g);
        c0865g2 = c0865g.next;
        if (c0865g2 != null) {
            long access$remainingNanos = C0865g.access$remainingNanos(c0865g2, System.nanoTime());
            if (access$remainingNanos > 0) {
                getCondition().await(access$remainingNanos, TimeUnit.NANOSECONDS);
                return null;
            }
            c0865g3 = C0865g.head;
            kotlin.jvm.internal.j.checkNotNull(c0865g3);
            c0865g4 = c0865g2.next;
            c0865g3.next = c0865g4;
            c0865g2.next = null;
            return c0865g2;
        }
        long nanoTime = System.nanoTime();
        Condition condition = getCondition();
        j7 = C0865g.IDLE_TIMEOUT_MILLIS;
        condition.await(j7, TimeUnit.MILLISECONDS);
        c0865g5 = C0865g.head;
        kotlin.jvm.internal.j.checkNotNull(c0865g5);
        c0865g6 = c0865g5.next;
        if (c0865g6 == null) {
            long nanoTime2 = System.nanoTime() - nanoTime;
            j8 = C0865g.IDLE_TIMEOUT_NANOS;
            if (nanoTime2 >= j8) {
                c0865g7 = C0865g.head;
                return c0865g7;
            }
        }
        return null;
    }

    public final Condition getCondition() {
        Condition condition;
        condition = C0865g.condition;
        return condition;
    }

    public final ReentrantLock getLock() {
        ReentrantLock reentrantLock;
        reentrantLock = C0865g.lock;
        return reentrantLock;
    }
}
