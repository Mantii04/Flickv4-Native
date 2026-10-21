package io.reactivex.internal.operators.flowable;

import A.i;
import io.reactivex.Flowable;
import io.reactivex.Scheduler;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.schedulers.TrampolineScheduler;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BackpressureHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import m6.c;
import m6.d;

/* loaded from: classes2.dex */
public final class FlowableInterval extends Flowable<Long> {
    final long initialDelay;
    final long period;
    final Scheduler scheduler;
    final TimeUnit unit;

    public static final class IntervalSubscriber extends AtomicLong implements d, Runnable {
        private static final long serialVersionUID = -2809475196591179431L;
        long count;
        final c downstream;
        final AtomicReference<Disposable> resource = new AtomicReference<>();

        public IntervalSubscriber(c cVar) {
            this.downstream = cVar;
        }

        @Override // m6.d
        public void cancel() {
            DisposableHelper.dispose(this.resource);
        }

        @Override // m6.d
        public void request(long j7) {
            if (SubscriptionHelper.validate(j7)) {
                BackpressureHelper.add(this, j7);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.resource.get() != DisposableHelper.DISPOSED) {
                if (get() == 0) {
                    this.downstream.onError(new MissingBackpressureException(i.n(new StringBuilder("Can't deliver value "), this.count, " due to lack of requests")));
                    DisposableHelper.dispose(this.resource);
                    return;
                }
                c cVar = this.downstream;
                long j7 = this.count;
                this.count = j7 + 1;
                cVar.onNext(Long.valueOf(j7));
                BackpressureHelper.produced(this, 1L);
            }
        }

        public void setResource(Disposable disposable) {
            DisposableHelper.setOnce(this.resource, disposable);
        }
    }

    public FlowableInterval(long j7, long j8, TimeUnit timeUnit, Scheduler scheduler) {
        this.initialDelay = j7;
        this.period = j8;
        this.unit = timeUnit;
        this.scheduler = scheduler;
    }

    @Override // io.reactivex.Flowable
    public void subscribeActual(c cVar) {
        IntervalSubscriber intervalSubscriber = new IntervalSubscriber(cVar);
        cVar.onSubscribe(intervalSubscriber);
        Scheduler scheduler = this.scheduler;
        if (!(scheduler instanceof TrampolineScheduler)) {
            intervalSubscriber.setResource(scheduler.schedulePeriodicallyDirect(intervalSubscriber, this.initialDelay, this.period, this.unit));
            return;
        }
        Scheduler.Worker createWorker = scheduler.createWorker();
        intervalSubscriber.setResource(createWorker);
        createWorker.schedulePeriodically(intervalSubscriber, this.initialDelay, this.period, this.unit);
    }
}
