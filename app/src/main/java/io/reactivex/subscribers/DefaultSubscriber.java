package io.reactivex.subscribers;

import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.EndConsumerHelper;
import m6.d;

/* loaded from: classes2.dex */
public abstract class DefaultSubscriber<T> implements FlowableSubscriber<T> {
    d upstream;

    public final void cancel() {
        d dVar = this.upstream;
        this.upstream = SubscriptionHelper.CANCELLED;
        dVar.cancel();
    }

    @Override // io.reactivex.FlowableSubscriber, m6.c
    public abstract /* synthetic */ void onComplete();

    @Override // io.reactivex.FlowableSubscriber, m6.c
    public abstract /* synthetic */ void onError(Throwable th);

    @Override // io.reactivex.FlowableSubscriber, m6.c
    public abstract /* synthetic */ void onNext(Object obj);

    public void onStart() {
        request(Long.MAX_VALUE);
    }

    @Override // io.reactivex.FlowableSubscriber, m6.c
    public final void onSubscribe(d dVar) {
        if (EndConsumerHelper.validate(this.upstream, dVar, getClass())) {
            this.upstream = dVar;
            onStart();
        }
    }

    public final void request(long j7) {
        d dVar = this.upstream;
        if (dVar != null) {
            dVar.request(j7);
        }
    }
}
