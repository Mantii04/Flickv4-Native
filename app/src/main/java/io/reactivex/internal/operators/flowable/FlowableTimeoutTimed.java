package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.Scheduler;
import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.internal.subscriptions.SubscriptionArbiter;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import m6.b;
import m6.c;
import m6.d;

/* loaded from: classes2.dex */
public final class FlowableTimeoutTimed<T> extends AbstractFlowableWithUpstream<T, T> {
    final b other;
    final Scheduler scheduler;
    final long timeout;
    final TimeUnit unit;

    public static final class FallbackSubscriber<T> implements FlowableSubscriber<T> {
        final SubscriptionArbiter arbiter;
        final c downstream;

        public FallbackSubscriber(c cVar, SubscriptionArbiter subscriptionArbiter) {
            this.downstream = cVar;
            this.arbiter = subscriptionArbiter;
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
            this.downstream.onNext(t6);
        }

        @Override // io.reactivex.FlowableSubscriber, m6.c
        public void onSubscribe(d dVar) {
            this.arbiter.setSubscription(dVar);
        }
    }

    public static final class TimeoutFallbackSubscriber<T> extends SubscriptionArbiter implements FlowableSubscriber<T>, TimeoutSupport {
        private static final long serialVersionUID = 3764492702657003550L;
        long consumed;
        final c downstream;
        b fallback;
        final AtomicLong index;
        final SequentialDisposable task;
        final long timeout;
        final TimeUnit unit;
        final AtomicReference<d> upstream;
        final Scheduler.Worker worker;

        public TimeoutFallbackSubscriber(c cVar, long j7, TimeUnit timeUnit, Scheduler.Worker worker, b bVar) {
            super(true);
            this.downstream = cVar;
            this.timeout = j7;
            this.unit = timeUnit;
            this.worker = worker;
            this.fallback = bVar;
            this.task = new SequentialDisposable();
            this.upstream = new AtomicReference<>();
            this.index = new AtomicLong();
        }

        @Override // io.reactivex.internal.subscriptions.SubscriptionArbiter, m6.d
        public void cancel() {
            super.cancel();
            this.worker.dispose();
        }

        @Override // io.reactivex.FlowableSubscriber, m6.c
        public void onComplete() {
            if (this.index.getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.task.dispose();
                this.downstream.onComplete();
                this.worker.dispose();
            }
        }

        @Override // io.reactivex.FlowableSubscriber, m6.c
        public void onError(Throwable th) {
            if (this.index.getAndSet(Long.MAX_VALUE) == Long.MAX_VALUE) {
                RxJavaPlugins.onError(th);
                return;
            }
            this.task.dispose();
            this.downstream.onError(th);
            this.worker.dispose();
        }

        @Override // io.reactivex.FlowableSubscriber, m6.c
        public void onNext(T t6) {
            long j7 = this.index.get();
            if (j7 != Long.MAX_VALUE) {
                long j8 = j7 + 1;
                if (this.index.compareAndSet(j7, j8)) {
                    this.task.get().dispose();
                    this.consumed++;
                    this.downstream.onNext(t6);
                    startTimeout(j8);
                }
            }
        }

        @Override // io.reactivex.FlowableSubscriber, m6.c
        public void onSubscribe(d dVar) {
            if (SubscriptionHelper.setOnce(this.upstream, dVar)) {
                setSubscription(dVar);
            }
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableTimeoutTimed.TimeoutSupport
        public void onTimeout(long j7) {
            if (this.index.compareAndSet(j7, Long.MAX_VALUE)) {
                SubscriptionHelper.cancel(this.upstream);
                long j8 = this.consumed;
                if (j8 != 0) {
                    produced(j8);
                }
                b bVar = this.fallback;
                this.fallback = null;
                bVar.subscribe(new FallbackSubscriber(this.downstream, this));
                this.worker.dispose();
            }
        }

        public void startTimeout(long j7) {
            this.task.replace(this.worker.schedule(new TimeoutTask(j7, this), this.timeout, this.unit));
        }
    }

    public static final class TimeoutSubscriber<T> extends AtomicLong implements FlowableSubscriber<T>, d, TimeoutSupport {
        private static final long serialVersionUID = 3764492702657003550L;
        final c downstream;
        final long timeout;
        final TimeUnit unit;
        final Scheduler.Worker worker;
        final SequentialDisposable task = new SequentialDisposable();
        final AtomicReference<d> upstream = new AtomicReference<>();
        final AtomicLong requested = new AtomicLong();

        public TimeoutSubscriber(c cVar, long j7, TimeUnit timeUnit, Scheduler.Worker worker) {
            this.downstream = cVar;
            this.timeout = j7;
            this.unit = timeUnit;
            this.worker = worker;
        }

        @Override // m6.d
        public void cancel() {
            SubscriptionHelper.cancel(this.upstream);
            this.worker.dispose();
        }

        @Override // io.reactivex.FlowableSubscriber, m6.c
        public void onComplete() {
            if (getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.task.dispose();
                this.downstream.onComplete();
                this.worker.dispose();
            }
        }

        @Override // io.reactivex.FlowableSubscriber, m6.c
        public void onError(Throwable th) {
            if (getAndSet(Long.MAX_VALUE) == Long.MAX_VALUE) {
                RxJavaPlugins.onError(th);
                return;
            }
            this.task.dispose();
            this.downstream.onError(th);
            this.worker.dispose();
        }

        @Override // io.reactivex.FlowableSubscriber, m6.c
        public void onNext(T t6) {
            long j7 = get();
            if (j7 != Long.MAX_VALUE) {
                long j8 = 1 + j7;
                if (compareAndSet(j7, j8)) {
                    this.task.get().dispose();
                    this.downstream.onNext(t6);
                    startTimeout(j8);
                }
            }
        }

        @Override // io.reactivex.FlowableSubscriber, m6.c
        public void onSubscribe(d dVar) {
            SubscriptionHelper.deferredSetOnce(this.upstream, this.requested, dVar);
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableTimeoutTimed.TimeoutSupport
        public void onTimeout(long j7) {
            if (compareAndSet(j7, Long.MAX_VALUE)) {
                SubscriptionHelper.cancel(this.upstream);
                this.downstream.onError(new TimeoutException(ExceptionHelper.timeoutMessage(this.timeout, this.unit)));
                this.worker.dispose();
            }
        }

        @Override // m6.d
        public void request(long j7) {
            SubscriptionHelper.deferredRequest(this.upstream, this.requested, j7);
        }

        public void startTimeout(long j7) {
            this.task.replace(this.worker.schedule(new TimeoutTask(j7, this), this.timeout, this.unit));
        }
    }

    public interface TimeoutSupport {
        void onTimeout(long j7);
    }

    public static final class TimeoutTask implements Runnable {
        final long idx;
        final TimeoutSupport parent;

        public TimeoutTask(long j7, TimeoutSupport timeoutSupport) {
            this.idx = j7;
            this.parent = timeoutSupport;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.parent.onTimeout(this.idx);
        }
    }

    public FlowableTimeoutTimed(Flowable<T> flowable, long j7, TimeUnit timeUnit, Scheduler scheduler, b bVar) {
        super(flowable);
        this.timeout = j7;
        this.unit = timeUnit;
        this.scheduler = scheduler;
        this.other = bVar;
    }

    @Override // io.reactivex.Flowable
    public void subscribeActual(c cVar) {
        if (this.other == null) {
            TimeoutSubscriber timeoutSubscriber = new TimeoutSubscriber(cVar, this.timeout, this.unit, this.scheduler.createWorker());
            cVar.onSubscribe(timeoutSubscriber);
            timeoutSubscriber.startTimeout(0L);
            this.source.subscribe((FlowableSubscriber) timeoutSubscriber);
            return;
        }
        TimeoutFallbackSubscriber timeoutFallbackSubscriber = new TimeoutFallbackSubscriber(cVar, this.timeout, this.unit, this.scheduler.createWorker(), this.other);
        cVar.onSubscribe(timeoutFallbackSubscriber);
        timeoutFallbackSubscriber.startTimeout(0L);
        this.source.subscribe((FlowableSubscriber) timeoutFallbackSubscriber);
    }
}
