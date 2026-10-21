package e6;

import java.util.concurrent.locks.ReentrantLock;

/* renamed from: e6.d, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0862d extends Thread {
    public C0862d() {
        super("Okio Watchdog");
        setDaemon(true);
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        ReentrantLock lock;
        C0865g awaitTimeout$okio;
        C0865g c0865g;
        while (true) {
            try {
                C0861c c0861c = C0865g.Companion;
                lock = c0861c.getLock();
                lock.lock();
                try {
                    awaitTimeout$okio = c0861c.awaitTimeout$okio();
                    c0865g = C0865g.head;
                } catch (Throwable th) {
                    lock.unlock();
                    throw th;
                }
            } catch (InterruptedException unused) {
            }
            if (awaitTimeout$okio == c0865g) {
                C0865g.head = null;
                lock.unlock();
                return;
            } else {
                lock.unlock();
                if (awaitTimeout$okio != null) {
                    awaitTimeout$okio.timedOut();
                }
            }
        }
    }
}
