package e6;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

/* renamed from: e6.g, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0865g extends O {
    public static final C0861c Companion = new C0861c(null);
    private static final long IDLE_TIMEOUT_MILLIS;
    private static final long IDLE_TIMEOUT_NANOS;
    private static final int TIMEOUT_WRITE_SIZE = 65536;
    private static final Condition condition;
    private static C0865g head;
    private static final ReentrantLock lock;
    private boolean inQueue;
    private C0865g next;
    private long timeoutAt;

    static {
        ReentrantLock reentrantLock = new ReentrantLock();
        lock = reentrantLock;
        Condition newCondition = reentrantLock.newCondition();
        kotlin.jvm.internal.j.checkNotNullExpressionValue(newCondition, "newCondition(...)");
        condition = newCondition;
        long millis = TimeUnit.SECONDS.toMillis(60L);
        IDLE_TIMEOUT_MILLIS = millis;
        IDLE_TIMEOUT_NANOS = TimeUnit.MILLISECONDS.toNanos(millis);
    }

    public static final long access$remainingNanos(C0865g c0865g, long j7) {
        return c0865g.timeoutAt - j7;
    }

    public final IOException access$newTimeoutException(IOException iOException) {
        return newTimeoutException(iOException);
    }

    public final void enter() {
        long timeoutNanos = timeoutNanos();
        boolean hasDeadline = hasDeadline();
        if (timeoutNanos != 0 || hasDeadline) {
            C0861c.access$scheduleTimeout(Companion, this, timeoutNanos, hasDeadline);
        }
    }

    public final boolean exit() {
        return C0861c.access$cancelScheduledTimeout(Companion, this);
    }

    public IOException newTimeoutException(IOException iOException) {
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }

    public final J sink(J sink) {
        kotlin.jvm.internal.j.checkNotNullParameter(sink, "sink");
        return new C0863e(this, sink);
    }

    public final L source(L source) {
        kotlin.jvm.internal.j.checkNotNullParameter(source, "source");
        return new C0864f(this, source);
    }

    public final <T> T withTimeout(H5.a block) {
        kotlin.jvm.internal.j.checkNotNullParameter(block, "block");
        enter();
        try {
            try {
                T t6 = (T) block.invoke();
                kotlin.jvm.internal.i.finallyStart(1);
                if (exit()) {
                    throw access$newTimeoutException(null);
                }
                kotlin.jvm.internal.i.finallyEnd(1);
                return t6;
            } catch (IOException e3) {
                if (exit()) {
                    throw access$newTimeoutException(e3);
                }
                throw e3;
            }
        } catch (Throwable th) {
            kotlin.jvm.internal.i.finallyStart(1);
            exit();
            kotlin.jvm.internal.i.finallyEnd(1);
            throw th;
        }
    }

    public void timedOut() {
    }
}
