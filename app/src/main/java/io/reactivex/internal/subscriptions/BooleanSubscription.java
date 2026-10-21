package io.reactivex.internal.subscriptions;

import java.util.concurrent.atomic.AtomicBoolean;
import m6.d;

/* loaded from: classes2.dex */
public final class BooleanSubscription extends AtomicBoolean implements d {
    private static final long serialVersionUID = -8127758972444290902L;

    @Override // m6.d
    public void cancel() {
        lazySet(true);
    }

    public boolean isCancelled() {
        return get();
    }

    @Override // m6.d
    public void request(long j7) {
        SubscriptionHelper.validate(j7);
    }

    @Override // java.util.concurrent.atomic.AtomicBoolean
    public String toString() {
        return "BooleanSubscription(cancelled=" + get() + ")";
    }
}
