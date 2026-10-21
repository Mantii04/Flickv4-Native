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
public final class FlowableIntervalRange extends Flowable<Long> {
    final long end;
    final long initialDelay;
    final long period;
    final Scheduler scheduler;
    final long start;
    final TimeUnit unit;

    public static final class IntervalRangeSubscriber extends AtomicLong implements d, Runnable {
        private static final long serialVersionUID = -2809475196591179431L;
        long count;
        final c downstream;
        final long end;
        final AtomicReference<Disposable> resource = new AtomicReference<>();

        public IntervalRangeSubscriber(c cVar, long j7, long j8) {
            this.downstream = cVar;
            this.count = j7;
            this.end = j8;
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
            Disposable disposable = this.resource.get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (disposable != disposableHelper) {
                long j7 = get();
                if (j7 == 0) {
                    this.downstream.onError(new MissingBackpressureException(i.n(new StringBuilder("Can't deliver value "), this.count, " due to lack of requests")));
                    DisposableHelper.dispose(this.resource);
                    return;
                }
                long j8 = this.count;
                this.downstream.onNext(Long.valueOf(j8));
                if (j8 == this.end) {
                    if (this.resource.get() != disposableHelper) {
                        this.downstream.onComplete();
                    }
                    DisposableHelper.dispose(this.resource);
                } else {
                    this.count = j8 + 1;
                    if (j7 != Long.MAX_VALUE) {
                        decrementAndGet();
                    }
                }
            }
        }

        public void setResource(Disposable disposable) {
            DisposableHelper.setOnce(this.resource, disposable);
        }
    }

    public FlowableIntervalRange(long j7, long j8, long j9, long j10, TimeUnit timeUnit, Scheduler scheduler) {
        this.initialDelay = j9;
        this.period = j10;
        this.unit = timeUnit;
        this.scheduler = scheduler;
        this.start = j7;
        this.end = j8;
    }

    @Override // io.reactivex.Flowable
    public void subscribeActual(c cVar) {
        IntervalRangeSubscriber intervalRangeSubscriber = new IntervalRangeSubscriber(cVar, this.start, this.end);
        cVar.onSubscribe(intervalRangeSubscriber);
        Scheduler scheduler = this.scheduler;
        if (!(scheduler instanceof TrampolineScheduler)) {
            intervalRangeSubscriber.setResource(scheduler.schedulePeriodicallyDirect(intervalRangeSubscriber, this.initialDelay, this.period, this.unit));
            return;
        }
        Scheduler.Worker createWorker = scheduler.createWorker();
        intervalRangeSubscriber.setResource(createWorker);
        createWorker.schedulePeriodically(intervalRangeSubscriber, this.initialDelay, this.period, this.unit);
    }
}
