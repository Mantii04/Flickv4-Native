package e6;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;

/* loaded from: classes2.dex */
public class O {
    public static final N Companion = new N(null);
    public static final O NONE = new M();
    private long deadlineNanoTime;
    private boolean hasDeadline;
    private long timeoutNanos;

    public final void awaitSignal(Condition condition) throws InterruptedIOException {
        kotlin.jvm.internal.j.checkNotNullParameter(condition, "condition");
        try {
            boolean hasDeadline = hasDeadline();
            long timeoutNanos = timeoutNanos();
            long j7 = 0;
            if (!hasDeadline && timeoutNanos == 0) {
                condition.await();
                return;
            }
            long nanoTime = System.nanoTime();
            if (hasDeadline && timeoutNanos != 0) {
                timeoutNanos = Math.min(timeoutNanos, deadlineNanoTime() - nanoTime);
            } else if (hasDeadline) {
                timeoutNanos = deadlineNanoTime() - nanoTime;
            }
            if (timeoutNanos > 0) {
                condition.await(timeoutNanos, TimeUnit.NANOSECONDS);
                j7 = System.nanoTime() - nanoTime;
            }
            if (j7 >= timeoutNanos) {
                throw new InterruptedIOException("timeout");
            }
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException("interrupted");
        }
    }

    public O clearDeadline() {
        this.hasDeadline = false;
        return this;
    }

    public O clearTimeout() {
        this.timeoutNanos = 0L;
        return this;
    }

    public final O deadline(long j7, TimeUnit unit) {
        kotlin.jvm.internal.j.checkNotNullParameter(unit, "unit");
        if (j7 <= 0) {
            throw new IllegalArgumentException(A.i.i("duration <= 0: ", j7).toString());
        }
        return deadlineNanoTime(unit.toNanos(j7) + System.nanoTime());
    }

    public long deadlineNanoTime() {
        if (this.hasDeadline) {
            return this.deadlineNanoTime;
        }
        throw new IllegalStateException("No deadline");
    }

    public boolean hasDeadline() {
        return this.hasDeadline;
    }

    public final <T> T intersectWith(O other, H5.a block) {
        kotlin.jvm.internal.j.checkNotNullParameter(other, "other");
        kotlin.jvm.internal.j.checkNotNullParameter(block, "block");
        long timeoutNanos = timeoutNanos();
        long minTimeout = Companion.minTimeout(other.timeoutNanos(), timeoutNanos());
        TimeUnit timeUnit = TimeUnit.NANOSECONDS;
        timeout(minTimeout, timeUnit);
        if (!hasDeadline()) {
            if (other.hasDeadline()) {
                deadlineNanoTime(other.deadlineNanoTime());
            }
            try {
                T t6 = (T) block.invoke();
                kotlin.jvm.internal.i.finallyStart(1);
                timeout(timeoutNanos, timeUnit);
                if (other.hasDeadline()) {
                    clearDeadline();
                }
                kotlin.jvm.internal.i.finallyEnd(1);
                return t6;
            } catch (Throwable th) {
                kotlin.jvm.internal.i.finallyStart(1);
                timeout(timeoutNanos, TimeUnit.NANOSECONDS);
                if (other.hasDeadline()) {
                    clearDeadline();
                }
                kotlin.jvm.internal.i.finallyEnd(1);
                throw th;
            }
        }
        long deadlineNanoTime = deadlineNanoTime();
        if (other.hasDeadline()) {
            deadlineNanoTime(Math.min(deadlineNanoTime(), other.deadlineNanoTime()));
        }
        try {
            T t7 = (T) block.invoke();
            kotlin.jvm.internal.i.finallyStart(1);
            timeout(timeoutNanos, timeUnit);
            if (other.hasDeadline()) {
                deadlineNanoTime(deadlineNanoTime);
            }
            kotlin.jvm.internal.i.finallyEnd(1);
            return t7;
        } catch (Throwable th2) {
            kotlin.jvm.internal.i.finallyStart(1);
            timeout(timeoutNanos, TimeUnit.NANOSECONDS);
            if (other.hasDeadline()) {
                deadlineNanoTime(deadlineNanoTime);
            }
            kotlin.jvm.internal.i.finallyEnd(1);
            throw th2;
        }
    }

    public void throwIfReached() throws IOException {
        if (Thread.currentThread().isInterrupted()) {
            throw new InterruptedIOException("interrupted");
        }
        if (this.hasDeadline && this.deadlineNanoTime - System.nanoTime() <= 0) {
            throw new InterruptedIOException("deadline reached");
        }
    }

    public O timeout(long j7, TimeUnit unit) {
        kotlin.jvm.internal.j.checkNotNullParameter(unit, "unit");
        if (j7 < 0) {
            throw new IllegalArgumentException(A.i.i("timeout < 0: ", j7).toString());
        }
        this.timeoutNanos = unit.toNanos(j7);
        return this;
    }

    public long timeoutNanos() {
        return this.timeoutNanos;
    }

    public final void waitUntilNotified(Object monitor) throws InterruptedIOException {
        kotlin.jvm.internal.j.checkNotNullParameter(monitor, "monitor");
        try {
            boolean hasDeadline = hasDeadline();
            long timeoutNanos = timeoutNanos();
            long j7 = 0;
            if (!hasDeadline && timeoutNanos == 0) {
                monitor.wait();
                return;
            }
            long nanoTime = System.nanoTime();
            if (hasDeadline && timeoutNanos != 0) {
                timeoutNanos = Math.min(timeoutNanos, deadlineNanoTime() - nanoTime);
            } else if (hasDeadline) {
                timeoutNanos = deadlineNanoTime() - nanoTime;
            }
            if (timeoutNanos > 0) {
                long j8 = timeoutNanos / 1000000;
                Long.signum(j8);
                monitor.wait(j8, (int) (timeoutNanos - (1000000 * j8)));
                j7 = System.nanoTime() - nanoTime;
            }
            if (j7 >= timeoutNanos) {
                throw new InterruptedIOException("timeout");
            }
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException("interrupted");
        }
    }

    public O deadlineNanoTime(long j7) {
        this.hasDeadline = true;
        this.deadlineNanoTime = j7;
        return this;
    }
}
