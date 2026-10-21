package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.Scheduler;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BackpressureHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import m6.c;
import m6.d;

/* loaded from: classes2.dex */
public final class FlowableThrottleLatest<T> extends AbstractFlowableWithUpstream<T, T> {
    final boolean emitLast;
    final Scheduler scheduler;
    final long timeout;
    final TimeUnit unit;

    public static final class ThrottleLatestSubscriber<T> extends AtomicInteger implements FlowableSubscriber<T>, d, Runnable {
        private static final long serialVersionUID = -8296689127439125014L;
        volatile boolean cancelled;
        volatile boolean done;
        final c downstream;
        final boolean emitLast;
        long emitted;
        Throwable error;
        final AtomicReference<T> latest = new AtomicReference<>();
        final AtomicLong requested = new AtomicLong();
        final long timeout;
        volatile boolean timerFired;
        boolean timerRunning;
        final TimeUnit unit;
        d upstream;
        final Scheduler.Worker worker;

        public ThrottleLatestSubscriber(c cVar, long j7, TimeUnit timeUnit, Scheduler.Worker worker, boolean z6) {
            this.downstream = cVar;
            this.timeout = j7;
            this.unit = timeUnit;
            this.worker = worker;
            this.emitLast = z6;
        }

        @Override // m6.d
        public void cancel() {
            this.cancelled = true;
            this.upstream.cancel();
            this.worker.dispose();
            if (getAndIncrement() == 0) {
                this.latest.lazySet(null);
            }
        }

        public void drain() {
            if (getAndIncrement() != 0) {
                return;
            }
            AtomicReference<T> atomicReference = this.latest;
            AtomicLong atomicLong = this.requested;
            c cVar = this.downstream;
            int i2 = 1;
            while (!this.cancelled) {
                boolean z6 = this.done;
                if (z6 && this.error != null) {
                    atomicReference.lazySet(null);
                    cVar.onError(this.error);
                    this.worker.dispose();
                    return;
                }
                boolean z7 = atomicReference.get() == null;
                if (z6) {
                    if (z7 || !this.emitLast) {
                        atomicReference.lazySet(null);
                        cVar.onComplete();
                    } else {
                        T andSet = atomicReference.getAndSet(null);
                        long j7 = this.emitted;
                        if (j7 != atomicLong.get()) {
                            this.emitted = j7 + 1;
                            cVar.onNext(andSet);
                            cVar.onComplete();
                        } else {
                            cVar.onError(new MissingBackpressureException("Could not emit final value due to lack of requests"));
                        }
                    }
                    this.worker.dispose();
                    return;
                }
                if (z7) {
                    if (this.timerFired) {
                        this.timerRunning = false;
                        this.timerFired = false;
                    }
                } else if (!this.timerRunning || this.timerFired) {
                    T andSet2 = atomicReference.getAndSet(null);
                    long j8 = this.emitted;
                    if (j8 == atomicLong.get()) {
                        this.upstream.cancel();
                        cVar.onError(new MissingBackpressureException("Could not emit value due to lack of requests"));
                        this.worker.dispose();
                        return;
                    } else {
                        cVar.onNext(andSet2);
                        this.emitted = j8 + 1;
                        this.timerFired = false;
                        this.timerRunning = true;
                        this.worker.schedule(this, this.timeout, this.unit);
                    }
                }
                i2 = addAndGet(-i2);
                if (i2 == 0) {
                    return;
                }
            }
            atomicReference.lazySet(null);
        }

        @Override // io.reactivex.FlowableSubscriber, m6.c
        public void onComplete() {
            this.done = true;
            drain();
        }

        @Override // io.reactivex.FlowableSubscriber, m6.c
        public void onError(Throwable th) {
            this.error = th;
            this.done = true;
            drain();
        }

        @Override // io.reactivex.FlowableSubscriber, m6.c
        public void onNext(T t6) {
            this.latest.set(t6);
            drain();
        }

        @Override // io.reactivex.FlowableSubscriber, m6.c
        public void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.upstream, dVar)) {
                this.upstream = dVar;
                this.downstream.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }

        @Override // m6.d
        public void request(long j7) {
            if (SubscriptionHelper.validate(j7)) {
                BackpressureHelper.add(this.requested, j7);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            this.timerFired = true;
            drain();
        }
    }

    public FlowableThrottleLatest(Flowable<T> flowable, long j7, TimeUnit timeUnit, Scheduler scheduler, boolean z6) {
        super(flowable);
        this.timeout = j7;
        this.unit = timeUnit;
        this.scheduler = scheduler;
        this.emitLast = z6;
    }

    @Override // io.reactivex.Flowable
    public void subscribeActual(c cVar) {
        this.source.subscribe((FlowableSubscriber) new ThrottleLatestSubscriber(cVar, this.timeout, this.unit, this.scheduler.createWorker(), this.emitLast));
    }
}
