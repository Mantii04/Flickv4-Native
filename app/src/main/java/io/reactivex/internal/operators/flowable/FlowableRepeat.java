package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.subscriptions.SubscriptionArbiter;
import java.util.concurrent.atomic.AtomicInteger;
import m6.b;
import m6.c;
import m6.d;

/* loaded from: classes2.dex */
public final class FlowableRepeat<T> extends AbstractFlowableWithUpstream<T, T> {
    final long count;

    public static final class RepeatSubscriber<T> extends AtomicInteger implements FlowableSubscriber<T> {
        private static final long serialVersionUID = -7098360935104053232L;
        final c downstream;
        long produced;
        long remaining;
        final SubscriptionArbiter sa;
        final b source;

        public RepeatSubscriber(c cVar, long j7, SubscriptionArbiter subscriptionArbiter, b bVar) {
            this.downstream = cVar;
            this.sa = subscriptionArbiter;
            this.source = bVar;
            this.remaining = j7;
        }

        @Override // io.reactivex.FlowableSubscriber, m6.c
        public void onComplete() {
            long j7 = this.remaining;
            if (j7 != Long.MAX_VALUE) {
                this.remaining = j7 - 1;
            }
            if (j7 != 0) {
                subscribeNext();
            } else {
                this.downstream.onComplete();
            }
        }

        @Override // io.reactivex.FlowableSubscriber, m6.c
        public void onError(Throwable th) {
            this.downstream.onError(th);
        }

        @Override // io.reactivex.FlowableSubscriber, m6.c
        public void onNext(T t6) {
            this.produced++;
            this.downstream.onNext(t6);
        }

        @Override // io.reactivex.FlowableSubscriber, m6.c
        public void onSubscribe(d dVar) {
            this.sa.setSubscription(dVar);
        }

        public void subscribeNext() {
            if (getAndIncrement() == 0) {
                int i2 = 1;
                while (!this.sa.isCancelled()) {
                    long j7 = this.produced;
                    if (j7 != 0) {
                        this.produced = 0L;
                        this.sa.produced(j7);
                    }
                    this.source.subscribe(this);
                    i2 = addAndGet(-i2);
                    if (i2 == 0) {
                        return;
                    }
                }
            }
        }
    }

    public FlowableRepeat(Flowable<T> flowable, long j7) {
        super(flowable);
        this.count = j7;
    }

    @Override // io.reactivex.Flowable
    public void subscribeActual(c cVar) {
        SubscriptionArbiter subscriptionArbiter = new SubscriptionArbiter(false);
        cVar.onSubscribe(subscriptionArbiter);
        long j7 = this.count;
        new RepeatSubscriber(cVar, j7 != Long.MAX_VALUE ? j7 - 1 : Long.MAX_VALUE, subscriptionArbiter, this.source).subscribeNext();
    }
}
