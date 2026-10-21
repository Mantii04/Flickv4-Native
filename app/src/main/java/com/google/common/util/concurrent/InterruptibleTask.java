package com.google.common.util.concurrent;

import A.i;
import P3.v;
import V3.D;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.AbstractOwnableSynchronizer;
import java.util.concurrent.locks.LockSupport;

/* loaded from: classes2.dex */
abstract class InterruptibleTask<T> extends AtomicReference<Runnable> implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public static final D f13195b = new D();

    /* renamed from: e, reason: collision with root package name */
    public static final D f13196e = new D();

    public static final class Blocker extends AbstractOwnableSynchronizer implements Runnable {

        /* renamed from: b, reason: collision with root package name */
        public final InterruptibleTask f13197b;

        public Blocker(InterruptibleTask interruptibleTask) {
            this.f13197b = interruptibleTask;
        }

        public static void a(Blocker blocker, Thread thread) {
            blocker.setExclusiveOwnerThread(thread);
        }

        @Override // java.lang.Runnable
        public void run() {
        }

        public String toString() {
            return this.f13197b.toString();
        }
    }

    public abstract void a(Throwable th);

    public abstract void b(Object obj);

    public final void c() {
        D d7 = f13196e;
        D d8 = f13195b;
        Runnable runnable = get();
        if (runnable instanceof Thread) {
            Blocker blocker = new Blocker(this);
            Blocker.a(blocker, Thread.currentThread());
            if (compareAndSet(runnable, blocker)) {
                try {
                    ((Thread) runnable).interrupt();
                } finally {
                    if (getAndSet(d8) == d7) {
                        LockSupport.unpark((Thread) runnable);
                    }
                }
            }
        }
    }

    public abstract boolean d();

    public abstract Object e();

    public abstract String f();

    public final void g(Thread thread) {
        Runnable runnable = get();
        Blocker blocker = null;
        boolean z6 = false;
        int i2 = 0;
        while (true) {
            boolean z7 = runnable instanceof Blocker;
            D d7 = f13196e;
            if (!z7 && runnable != d7) {
                break;
            }
            if (z7) {
                blocker = (Blocker) runnable;
            }
            i2++;
            if (i2 <= 1000) {
                Thread.yield();
            } else if (runnable == d7 || compareAndSet(runnable, d7)) {
                z6 = Thread.interrupted() || z6;
                LockSupport.park(blocker);
            }
            runnable = get();
        }
        if (z6) {
            thread.interrupt();
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        Thread currentThread = Thread.currentThread();
        Object obj = null;
        if (compareAndSet(null, currentThread)) {
            boolean d7 = d();
            D d8 = f13195b;
            if (!d7) {
                try {
                    obj = e();
                } catch (Throwable th) {
                    try {
                        v.checkNotNull(th);
                        if (th instanceof InterruptedException) {
                            Thread.currentThread().interrupt();
                        }
                        if (!compareAndSet(currentThread, d8)) {
                            g(currentThread);
                        }
                        if (d7) {
                            return;
                        }
                        a(th);
                        return;
                    } finally {
                        if (!compareAndSet(currentThread, d8)) {
                            g(currentThread);
                        }
                        if (!d7) {
                            b(null);
                        }
                    }
                }
            }
        }
    }

    @Override // java.util.concurrent.atomic.AtomicReference
    public final String toString() {
        String str;
        Runnable runnable = get();
        if (runnable == f13195b) {
            str = "running=[DONE]";
        } else if (runnable instanceof Blocker) {
            str = "running=[INTERRUPTED]";
        } else if (runnable instanceof Thread) {
            str = "running=[RUNNING ON " + ((Thread) runnable).getName() + "]";
        } else {
            str = "running=[NOT STARTED YET]";
        }
        StringBuilder s6 = i.s(str, ", ");
        s6.append(f());
        return s6.toString();
    }
}
