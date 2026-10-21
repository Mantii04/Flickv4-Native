package androidx.media3.common.util;

@UnstableApi
/* loaded from: classes.dex */
public class ConditionVariable {
    private final Clock clock;
    private boolean isOpen;

    public ConditionVariable() {
        this(Clock.DEFAULT);
    }

    public synchronized void block() throws InterruptedException {
        while (!this.isOpen) {
            this.clock.onThreadBlocked();
            wait();
        }
    }

    public synchronized void blockUninterruptible() {
        boolean z6 = false;
        while (!this.isOpen) {
            try {
                this.clock.onThreadBlocked();
                wait();
            } catch (InterruptedException unused) {
                z6 = true;
            }
        }
        if (z6) {
            Thread.currentThread().interrupt();
        }
    }

    public synchronized boolean close() {
        boolean z6;
        z6 = this.isOpen;
        this.isOpen = false;
        return z6;
    }

    public synchronized boolean isOpen() {
        return this.isOpen;
    }

    public synchronized boolean open() {
        if (this.isOpen) {
            return false;
        }
        this.isOpen = true;
        notifyAll();
        return true;
    }

    public ConditionVariable(Clock clock) {
        this.clock = clock;
    }

    public synchronized boolean block(long j7) throws InterruptedException {
        if (j7 <= 0) {
            return this.isOpen;
        }
        long elapsedRealtime = this.clock.elapsedRealtime();
        long j8 = j7 + elapsedRealtime;
        if (j8 < elapsedRealtime) {
            block();
        } else {
            while (!this.isOpen && elapsedRealtime < j8) {
                this.clock.onThreadBlocked();
                wait(j8 - elapsedRealtime);
                elapsedRealtime = this.clock.elapsedRealtime();
            }
        }
        return this.isOpen;
    }

    public synchronized boolean blockUninterruptible(long j7) {
        if (j7 <= 0) {
            return this.isOpen;
        }
        long elapsedRealtime = this.clock.elapsedRealtime();
        long j8 = j7 + elapsedRealtime;
        if (j8 < elapsedRealtime) {
            blockUninterruptible();
        } else {
            boolean z6 = false;
            while (!this.isOpen && elapsedRealtime < j8) {
                try {
                    this.clock.onThreadBlocked();
                    wait(j8 - elapsedRealtime);
                } catch (InterruptedException unused) {
                    z6 = true;
                }
                elapsedRealtime = this.clock.elapsedRealtime();
            }
            if (z6) {
                Thread.currentThread().interrupt();
            }
        }
        return this.isOpen;
    }
}
