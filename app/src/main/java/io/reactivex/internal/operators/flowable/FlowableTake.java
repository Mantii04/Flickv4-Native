package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicBoolean;
import m6.c;
import m6.d;

/* loaded from: classes2.dex */
public final class FlowableTake<T> extends AbstractFlowableWithUpstream<T, T> {
    final long limit;

    public static final class TakeSubscriber<T> extends AtomicBoolean implements FlowableSubscriber<T>, d {
        private static final long serialVersionUID = -5636543848937116287L;
        boolean done;
        final c downstream;
        final long limit;
        long remaining;
        d upstream;

        public TakeSubscriber(c cVar, long j7) {
            this.downstream = cVar;
            this.limit = j7;
            this.remaining = j7;
        }

        @Override // m6.d
        public void cancel() {
            this.upstream.cancel();
        }

        @Override // io.reactivex.FlowableSubscriber, m6.c
        public void onComplete() {
            if (this.done) {
                return;
            }
            this.done = true;
            this.downstream.onComplete();
        }

        @Override // io.reactivex.FlowableSubscriber, m6.c
        public void onError(Throwable th) {
            if (this.done) {
                RxJavaPlugins.onError(th);
                return;
            }
            this.done = true;
            this.upstream.cancel();
            this.downstream.onError(th);
        }

        @Override // io.reactivex.FlowableSubscriber, m6.c
        public void onNext(T t6) {
            if (this.done) {
                return;
            }
            long j7 = this.remaining;
            long j8 = j7 - 1;
            this.remaining = j8;
            if (j7 > 0) {
                boolean z6 = j8 == 0;
                this.downstream.onNext(t6);
                if (z6) {
                    this.upstream.cancel();
                    onComplete();
                }
            }
        }

        @Override // io.reactivex.FlowableSubscriber, m6.c
        public void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.upstream, dVar)) {
                this.upstream = dVar;
                if (this.limit != 0) {
                    this.downstream.onSubscribe(this);
                    return;
                }
                dVar.cancel();
                this.done = true;
                EmptySubscription.complete(this.downstream);
            }
        }

        @Override // m6.d
        public void request(long j7) {
            if (SubscriptionHelper.validate(j7)) {
                if (get() || !compareAndSet(false, true) || j7 < this.limit) {
                    this.upstream.request(j7);
                } else {
                    this.upstream.request(Long.MAX_VALUE);
                }
            }
        }
    }

    public FlowableTake(Flowable<T> flowable, long j7) {
        super(flowable);
        this.limit = j7;
    }

    @Override // io.reactivex.Flowable
    public void subscribeActual(c cVar) {
        this.source.subscribe((FlowableSubscriber) new TakeSubscriber(cVar, this.limit));
    }
}
