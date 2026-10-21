package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.Scheduler;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.subscribers.SerializedSubscriber;
import java.util.concurrent.TimeUnit;
import m6.c;
import m6.d;

/* loaded from: classes2.dex */
public final class FlowableDelay<T> extends AbstractFlowableWithUpstream<T, T> {
    final long delay;
    final boolean delayError;
    final Scheduler scheduler;
    final TimeUnit unit;

    public static final class DelaySubscriber<T> implements FlowableSubscriber<T>, d {
        final long delay;
        final boolean delayError;
        final c downstream;
        final TimeUnit unit;
        d upstream;

        /* renamed from: w, reason: collision with root package name */
        final Scheduler.Worker f16818w;

        public final class OnComplete implements Runnable {
            public OnComplete() {
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    DelaySubscriber.this.downstream.onComplete();
                } finally {
                    DelaySubscriber.this.f16818w.dispose();
                }
            }
        }

        public final class OnError implements Runnable {

            /* renamed from: t, reason: collision with root package name */
            private final Throwable f16819t;

            public OnError(Throwable th) {
                this.f16819t = th;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    DelaySubscriber.this.downstream.onError(this.f16819t);
                } finally {
                    DelaySubscriber.this.f16818w.dispose();
                }
            }
        }

        public final class OnNext implements Runnable {

            /* renamed from: t, reason: collision with root package name */
            private final T f16820t;

            public OnNext(T t6) {
                this.f16820t = t6;
            }

            @Override // java.lang.Runnable
            public void run() {
                DelaySubscriber.this.downstream.onNext(this.f16820t);
            }
        }

        public DelaySubscriber(c cVar, long j7, TimeUnit timeUnit, Scheduler.Worker worker, boolean z6) {
            this.downstream = cVar;
            this.delay = j7;
            this.unit = timeUnit;
            this.f16818w = worker;
            this.delayError = z6;
        }

        @Override // m6.d
        public void cancel() {
            this.upstream.cancel();
            this.f16818w.dispose();
        }

        @Override // io.reactivex.FlowableSubscriber, m6.c
        public void onComplete() {
            this.f16818w.schedule(new OnComplete(), this.delay, this.unit);
        }

        @Override // io.reactivex.FlowableSubscriber, m6.c
        public void onError(Throwable th) {
            this.f16818w.schedule(new OnError(th), this.delayError ? this.delay : 0L, this.unit);
        }

        @Override // io.reactivex.FlowableSubscriber, m6.c
        public void onNext(T t6) {
            this.f16818w.schedule(new OnNext(t6), this.delay, this.unit);
        }

        @Override // io.reactivex.FlowableSubscriber, m6.c
        public void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.upstream, dVar)) {
                this.upstream = dVar;
                this.downstream.onSubscribe(this);
            }
        }

        @Override // m6.d
        public void request(long j7) {
            this.upstream.request(j7);
        }
    }

    public FlowableDelay(Flowable<T> flowable, long j7, TimeUnit timeUnit, Scheduler scheduler, boolean z6) {
        super(flowable);
        this.delay = j7;
        this.unit = timeUnit;
        this.scheduler = scheduler;
        this.delayError = z6;
    }

    @Override // io.reactivex.Flowable
    public void subscribeActual(c cVar) {
        this.source.subscribe((FlowableSubscriber) new DelaySubscriber(this.delayError ? cVar : new SerializedSubscriber(cVar), this.delay, this.unit, this.scheduler.createWorker(), this.delayError));
    }
}
