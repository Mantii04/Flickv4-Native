package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicLong;
import m6.c;
import m6.d;

/* loaded from: classes2.dex */
public final class FlowableLimit<T> extends AbstractFlowableWithUpstream<T, T> {

    /* renamed from: n, reason: collision with root package name */
    final long f16822n;

    public static final class LimitSubscriber<T> extends AtomicLong implements FlowableSubscriber<T>, d {
        private static final long serialVersionUID = 2288246011222124525L;
        final c downstream;
        long remaining;
        d upstream;

        public LimitSubscriber(c cVar, long j7) {
            this.downstream = cVar;
            this.remaining = j7;
            lazySet(j7);
        }

        @Override // m6.d
        public void cancel() {
            this.upstream.cancel();
        }

        @Override // io.reactivex.FlowableSubscriber, m6.c
        public void onComplete() {
            if (this.remaining > 0) {
                this.remaining = 0L;
                this.downstream.onComplete();
            }
        }

        @Override // io.reactivex.FlowableSubscriber, m6.c
        public void onError(Throwable th) {
            if (this.remaining <= 0) {
                RxJavaPlugins.onError(th);
            } else {
                this.remaining = 0L;
                this.downstream.onError(th);
            }
        }

        @Override // io.reactivex.FlowableSubscriber, m6.c
        public void onNext(T t6) {
            long j7 = this.remaining;
            if (j7 > 0) {
                long j8 = j7 - 1;
                this.remaining = j8;
                this.downstream.onNext(t6);
                if (j8 == 0) {
                    this.upstream.cancel();
                    this.downstream.onComplete();
                }
            }
        }

        @Override // io.reactivex.FlowableSubscriber, m6.c
        public void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.upstream, dVar)) {
                if (this.remaining == 0) {
                    dVar.cancel();
                    EmptySubscription.complete(this.downstream);
                } else {
                    this.upstream = dVar;
                    this.downstream.onSubscribe(this);
                }
            }
        }

        @Override // m6.d
        public void request(long j7) {
            long j8;
            long j9;
            if (SubscriptionHelper.validate(j7)) {
                do {
                    j8 = get();
                    if (j8 == 0) {
                        return;
                    } else {
                        j9 = j8 <= j7 ? j8 : j7;
                    }
                } while (!compareAndSet(j8, j8 - j9));
                this.upstream.request(j9);
            }
        }
    }

    public FlowableLimit(Flowable<T> flowable, long j7) {
        super(flowable);
        this.f16822n = j7;
    }

    @Override // io.reactivex.Flowable
    public void subscribeActual(c cVar) {
        this.source.subscribe((FlowableSubscriber) new LimitSubscriber(cVar, this.f16822n));
    }
}
