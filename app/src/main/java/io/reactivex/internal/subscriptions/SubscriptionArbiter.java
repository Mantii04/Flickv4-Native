package io.reactivex.internal.subscriptions;

import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.util.BackpressureHelper;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import m6.d;

/* loaded from: classes2.dex */
public class SubscriptionArbiter extends AtomicInteger implements d {
    private static final long serialVersionUID = -2189523197179400958L;
    d actual;
    final boolean cancelOnReplace;
    volatile boolean cancelled;
    long requested;
    protected boolean unbounded;
    final AtomicReference<d> missedSubscription = new AtomicReference<>();
    final AtomicLong missedRequested = new AtomicLong();
    final AtomicLong missedProduced = new AtomicLong();

    public SubscriptionArbiter(boolean z6) {
        this.cancelOnReplace = z6;
    }

    public void cancel() {
        if (this.cancelled) {
            return;
        }
        this.cancelled = true;
        drain();
    }

    public final void drain() {
        if (getAndIncrement() != 0) {
            return;
        }
        drainLoop();
    }

    public final void drainLoop() {
        int i2 = 1;
        long j7 = 0;
        d dVar = null;
        do {
            d dVar2 = this.missedSubscription.get();
            if (dVar2 != null) {
                dVar2 = this.missedSubscription.getAndSet(null);
            }
            long j8 = this.missedRequested.get();
            if (j8 != 0) {
                j8 = this.missedRequested.getAndSet(0L);
            }
            long j9 = this.missedProduced.get();
            if (j9 != 0) {
                j9 = this.missedProduced.getAndSet(0L);
            }
            d dVar3 = this.actual;
            if (this.cancelled) {
                if (dVar3 != null) {
                    dVar3.cancel();
                    this.actual = null;
                }
                if (dVar2 != null) {
                    dVar2.cancel();
                }
            } else {
                long j10 = this.requested;
                if (j10 != Long.MAX_VALUE) {
                    j10 = BackpressureHelper.addCap(j10, j8);
                    if (j10 != Long.MAX_VALUE) {
                        j10 -= j9;
                        if (j10 < 0) {
                            SubscriptionHelper.reportMoreProduced(j10);
                            j10 = 0;
                        }
                    }
                    this.requested = j10;
                }
                if (dVar2 != null) {
                    if (dVar3 != null && this.cancelOnReplace) {
                        dVar3.cancel();
                    }
                    this.actual = dVar2;
                    if (j10 != 0) {
                        j7 = BackpressureHelper.addCap(j7, j10);
                        dVar = dVar2;
                    }
                } else if (dVar3 != null && j8 != 0) {
                    j7 = BackpressureHelper.addCap(j7, j8);
                    dVar = dVar3;
                }
            }
            i2 = addAndGet(-i2);
        } while (i2 != 0);
        if (j7 != 0) {
            dVar.request(j7);
        }
    }

    public final boolean isCancelled() {
        return this.cancelled;
    }

    public final boolean isUnbounded() {
        return this.unbounded;
    }

    public final void produced(long j7) {
        if (this.unbounded) {
            return;
        }
        if (get() != 0 || !compareAndSet(0, 1)) {
            BackpressureHelper.add(this.missedProduced, j7);
            drain();
            return;
        }
        long j8 = this.requested;
        if (j8 != Long.MAX_VALUE) {
            long j9 = j8 - j7;
            if (j9 < 0) {
                SubscriptionHelper.reportMoreProduced(j9);
                j9 = 0;
            }
            this.requested = j9;
        }
        if (decrementAndGet() == 0) {
            return;
        }
        drainLoop();
    }

    @Override // m6.d
    public final void request(long j7) {
        if (!SubscriptionHelper.validate(j7) || this.unbounded) {
            return;
        }
        if (get() != 0 || !compareAndSet(0, 1)) {
            BackpressureHelper.add(this.missedRequested, j7);
            drain();
            return;
        }
        long j8 = this.requested;
        if (j8 != Long.MAX_VALUE) {
            long addCap = BackpressureHelper.addCap(j8, j7);
            this.requested = addCap;
            if (addCap == Long.MAX_VALUE) {
                this.unbounded = true;
            }
        }
        d dVar = this.actual;
        if (decrementAndGet() != 0) {
            drainLoop();
        }
        if (dVar != null) {
            dVar.request(j7);
        }
    }

    public final void setSubscription(d dVar) {
        if (this.cancelled) {
            dVar.cancel();
            return;
        }
        ObjectHelper.requireNonNull(dVar, "s is null");
        if (get() != 0 || !compareAndSet(0, 1)) {
            d andSet = this.missedSubscription.getAndSet(dVar);
            if (andSet != null && this.cancelOnReplace) {
                andSet.cancel();
            }
            drain();
            return;
        }
        d dVar2 = this.actual;
        if (dVar2 != null && this.cancelOnReplace) {
            dVar2.cancel();
        }
        this.actual = dVar;
        long j7 = this.requested;
        if (decrementAndGet() != 0) {
            drainLoop();
        }
        if (j7 != 0) {
            dVar.request(j7);
        }
    }
}
