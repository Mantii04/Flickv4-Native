package R5;

import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.LockSupport;

/* loaded from: classes2.dex */
public final class L extends AbstractC0262a0 implements Runnable {
    private static volatile Thread _thread;
    private static volatile int debugStatus;

    /* renamed from: r, reason: collision with root package name */
    public static final L f3150r;

    /* renamed from: s, reason: collision with root package name */
    public static final long f3151s;

    static {
        Long l7;
        L l8 = new L();
        f3150r = l8;
        Y.incrementUseCount$default(l8, false, 1, null);
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        try {
            l7 = Long.getLong("kotlinx.coroutines.DefaultExecutor.keepAlive", 1000L);
        } catch (SecurityException unused) {
            l7 = 1000L;
        }
        f3151s = timeUnit.toNanos(l7.longValue());
    }

    public final synchronized void a() {
        int i2 = debugStatus;
        if (i2 == 2 || i2 == 3) {
            debugStatus = 3;
            resetAll();
            kotlin.jvm.internal.j.checkNotNull(this, "null cannot be cast to non-null type java.lang.Object");
            notifyAll();
        }
    }

    @Override // R5.AbstractC0262a0
    public void enqueue(Runnable runnable) {
        if (debugStatus == 4) {
            throw new RejectedExecutionException("DefaultExecutor was shut down. This error indicates that Dispatchers.shutdown() was invoked prior to completion of exiting coroutines, leaving coroutines in incomplete state. Please refer to Dispatchers.shutdown documentation for more details");
        }
        super.enqueue(runnable);
    }

    @Override // R5.AbstractC0264b0
    public Thread getThread() {
        Thread thread;
        Thread thread2 = _thread;
        if (thread2 != null) {
            return thread2;
        }
        synchronized (this) {
            thread = _thread;
            if (thread == null) {
                thread = new Thread(this, "kotlinx.coroutines.DefaultExecutor");
                _thread = thread;
                thread.setDaemon(true);
                thread.start();
            }
        }
        return thread;
    }

    @Override // java.lang.Runnable
    public void run() {
        Thread thread;
        O0.f3153a.setEventLoop$kotlinx_coroutines_core(this);
        AbstractC0265c.getTimeSource();
        Thread thread2 = null;
        try {
            synchronized (this) {
                try {
                    try {
                        int i2 = debugStatus;
                        if (i2 == 2 || i2 == 3) {
                            _thread = null;
                            a();
                            AbstractC0265c.getTimeSource();
                            if (isEmpty()) {
                                return;
                            }
                            getThread();
                            return;
                        }
                        debugStatus = 1;
                        kotlin.jvm.internal.j.checkNotNull(this, "null cannot be cast to non-null type java.lang.Object");
                        notifyAll();
                        long j7 = Long.MAX_VALUE;
                        while (true) {
                            Thread.interrupted();
                            long processNextEvent = processNextEvent();
                            if (processNextEvent == Long.MAX_VALUE) {
                                AbstractC0265c.getTimeSource();
                                long nanoTime = System.nanoTime();
                                if (j7 == Long.MAX_VALUE) {
                                    j7 = f3151s + nanoTime;
                                }
                                thread = thread2;
                                long j8 = j7 - nanoTime;
                                if (j8 <= 0) {
                                    _thread = thread;
                                    a();
                                    AbstractC0265c.getTimeSource();
                                    if (isEmpty()) {
                                        return;
                                    }
                                    getThread();
                                    return;
                                }
                                processNextEvent = M5.g.coerceAtMost(processNextEvent, j8);
                            } else {
                                thread = thread2;
                                j7 = Long.MAX_VALUE;
                            }
                            if (processNextEvent > 0) {
                                int i7 = debugStatus;
                                if (i7 == 2 || i7 == 3) {
                                    _thread = thread;
                                    a();
                                    AbstractC0265c.getTimeSource();
                                    if (isEmpty()) {
                                        return;
                                    }
                                    getThread();
                                    return;
                                }
                                AbstractC0265c.getTimeSource();
                                LockSupport.parkNanos(this, processNextEvent);
                            }
                            thread2 = thread;
                        }
                    } catch (Throwable th) {
                        th = th;
                        while (true) {
                            try {
                                throw th;
                            } catch (Throwable th2) {
                                th = th2;
                            }
                        }
                    }
                } catch (Throwable th3) {
                    th = th3;
                    _thread = null;
                    a();
                    AbstractC0265c.getTimeSource();
                    if (!isEmpty()) {
                        getThread();
                    }
                    throw th;
                }
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    @Override // R5.AbstractC0262a0, R5.Y
    public void shutdown() {
        debugStatus = 4;
        super.shutdown();
    }
}
