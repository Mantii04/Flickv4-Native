package R5;

import java.util.concurrent.locks.LockSupport;

/* renamed from: R5.b0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0264b0 extends Y {
    public abstract Thread getThread();

    public final void unpark() {
        Thread thread = getThread();
        if (Thread.currentThread() != thread) {
            AbstractC0265c.getTimeSource();
            LockSupport.unpark(thread);
        }
    }
}
