package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import m6.c;
import m6.d;

/* loaded from: classes2.dex */
public final class FlowableSkip<T> extends AbstractFlowableWithUpstream<T, T> {

    /* renamed from: n, reason: collision with root package name */
    final long f16828n;

    public static final class SkipSubscriber<T> implements FlowableSubscriber<T>, d {
        final c downstream;
        long remaining;
        d upstream;

        public SkipSubscriber(c cVar, long j7) {
            this.downstream = cVar;
            this.remaining = j7;
        }

        @Override // m6.d
        public void cancel() {
            this.upstream.cancel();
        }

        @Override // io.reactivex.FlowableSubscriber, m6.c
        public void onComplete() {
            this.downstream.onComplete();
        }

        @Override // io.reactivex.FlowableSubscriber, m6.c
        public void onError(Throwable th) {
            this.downstream.onError(th);
        }

        @Override // io.reactivex.FlowableSubscriber, m6.c
        public void onNext(T t6) {
            long j7 = this.remaining;
            if (j7 != 0) {
                this.remaining = j7 - 1;
            } else {
                this.downstream.onNext(t6);
            }
        }

        @Override // io.reactivex.FlowableSubscriber, m6.c
        public void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.upstream, dVar)) {
                long j7 = this.remaining;
                this.upstream = dVar;
                this.downstream.onSubscribe(this);
                dVar.request(j7);
            }
        }

        @Override // m6.d
        public void request(long j7) {
            this.upstream.request(j7);
        }
    }

    public FlowableSkip(Flowable<T> flowable, long j7) {
        super(flowable);
        this.f16828n = j7;
    }

    @Override // io.reactivex.Flowable
    public void subscribeActual(c cVar) {
        this.source.subscribe((FlowableSubscriber) new SkipSubscriber(cVar, this.f16828n));
    }
}
