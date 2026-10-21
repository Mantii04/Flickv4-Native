package R5;

import java.util.concurrent.locks.LockSupport;
import y5.InterfaceC1952k;

/* renamed from: R5.e, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0269e extends AbstractC0261a {

    /* renamed from: j, reason: collision with root package name */
    public final Thread f3174j;

    /* renamed from: m, reason: collision with root package name */
    public final Y f3175m;

    public C0269e(InterfaceC1952k interfaceC1952k, Thread thread, Y y6) {
        super(interfaceC1952k, true, true);
        this.f3174j = thread;
        this.f3175m = y6;
    }

    @Override // R5.A0
    public void afterCompletion(Object obj) {
        Thread currentThread = Thread.currentThread();
        Thread thread = this.f3174j;
        if (kotlin.jvm.internal.j.areEqual(currentThread, thread)) {
            return;
        }
        AbstractC0265c.getTimeSource();
        LockSupport.unpark(thread);
    }

    @Override // R5.A0
    public boolean isScopedCoroutine() {
        return true;
    }

    public final Object joinBlocking() {
        AbstractC0265c.getTimeSource();
        Y y6 = this.f3175m;
        if (y6 != null) {
            try {
                Y.incrementUseCount$default(y6, false, 1, null);
            } catch (Throwable th) {
                AbstractC0265c.getTimeSource();
                throw th;
            }
        }
        while (!Thread.interrupted()) {
            try {
                long processNextEvent = y6 != null ? y6.processNextEvent() : Long.MAX_VALUE;
                if (isCompleted()) {
                    if (y6 != null) {
                        Y.decrementUseCount$default(y6, false, 1, null);
                    }
                    AbstractC0265c.getTimeSource();
                    Object unboxState = B0.unboxState(getState$kotlinx_coroutines_core());
                    A a7 = unboxState instanceof A ? (A) unboxState : null;
                    if (a7 == null) {
                        return unboxState;
                    }
                    throw a7.f3131a;
                }
                AbstractC0265c.getTimeSource();
                LockSupport.parkNanos(this, processNextEvent);
            } catch (Throwable th2) {
                if (y6 != null) {
                    Y.decrementUseCount$default(y6, false, 1, null);
                }
                throw th2;
            }
        }
        InterruptedException interruptedException = new InterruptedException();
        cancelCoroutine(interruptedException);
        throw interruptedException;
    }
}
