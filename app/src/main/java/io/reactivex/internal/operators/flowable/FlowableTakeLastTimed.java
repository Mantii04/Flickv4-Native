package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.Scheduler;
import io.reactivex.internal.queue.SpscLinkedArrayQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BackpressureHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import m6.c;
import m6.d;

/* loaded from: classes2.dex */
public final class FlowableTakeLastTimed<T> extends AbstractFlowableWithUpstream<T, T> {
    final int bufferSize;
    final long count;
    final boolean delayError;
    final Scheduler scheduler;
    final long time;
    final TimeUnit unit;

    public static final class TakeLastTimedSubscriber<T> extends AtomicInteger implements FlowableSubscriber<T>, d {
        private static final long serialVersionUID = -5677354903406201275L;
        volatile boolean cancelled;
        final long count;
        final boolean delayError;
        volatile boolean done;
        final c downstream;
        Throwable error;
        final SpscLinkedArrayQueue<Object> queue;
        final AtomicLong requested = new AtomicLong();
        final Scheduler scheduler;
        final long time;
        final TimeUnit unit;
        d upstream;

        public TakeLastTimedSubscriber(c cVar, long j7, long j8, TimeUnit timeUnit, Scheduler scheduler, int i2, boolean z6) {
            this.downstream = cVar;
            this.count = j7;
            this.time = j8;
            this.unit = timeUnit;
            this.scheduler = scheduler;
            this.queue = new SpscLinkedArrayQueue<>(i2);
            this.delayError = z6;
        }

        @Override // m6.d
        public void cancel() {
            if (this.cancelled) {
                return;
            }
            this.cancelled = true;
            this.upstream.cancel();
            if (getAndIncrement() == 0) {
                this.queue.clear();
            }
        }

        public boolean checkTerminated(boolean z6, c cVar, boolean z7) {
            if (this.cancelled) {
                this.queue.clear();
                return true;
            }
            if (z7) {
                if (!z6) {
                    return false;
                }
                Throwable th = this.error;
                if (th != null) {
                    cVar.onError(th);
                } else {
                    cVar.onComplete();
                }
                return true;
            }
            Throwable th2 = this.error;
            if (th2 != null) {
                this.queue.clear();
                cVar.onError(th2);
                return true;
            }
            if (!z6) {
                return false;
            }
            cVar.onComplete();
            return true;
        }

        public void drain() {
            if (getAndIncrement() != 0) {
                return;
            }
            c cVar = this.downstream;
            SpscLinkedArrayQueue<Object> spscLinkedArrayQueue = this.queue;
            boolean z6 = this.delayError;
            int i2 = 1;
            do {
                if (this.done) {
                    if (checkTerminated(spscLinkedArrayQueue.isEmpty(), cVar, z6)) {
                        return;
                    }
                    long j7 = this.requested.get();
                    long j8 = 0;
                    while (true) {
                        if (checkTerminated(spscLinkedArrayQueue.peek() == null, cVar, z6)) {
                            return;
                        }
                        if (j7 != j8) {
                            spscLinkedArrayQueue.poll();
                            cVar.onNext(spscLinkedArrayQueue.poll());
                            j8++;
                        } else if (j8 != 0) {
                            BackpressureHelper.produced(this.requested, j8);
                        }
                    }
                }
                i2 = addAndGet(-i2);
            } while (i2 != 0);
        }

        @Override // io.reactivex.FlowableSubscriber, m6.c
        public void onComplete() {
            trim(this.scheduler.now(this.unit), this.queue);
            this.done = true;
            drain();
        }

        @Override // io.reactivex.FlowableSubscriber, m6.c
        public void onError(Throwable th) {
            if (this.delayError) {
                trim(this.scheduler.now(this.unit), this.queue);
            }
            this.error = th;
            this.done = true;
            drain();
        }

        @Override // io.reactivex.FlowableSubscriber, m6.c
        public void onNext(T t6) {
            SpscLinkedArrayQueue<Object> spscLinkedArrayQueue = this.queue;
            long now = this.scheduler.now(this.unit);
            spscLinkedArrayQueue.offer(Long.valueOf(now), t6);
            trim(now, spscLinkedArrayQueue);
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
                drain();
            }
        }

        public void trim(long j7, SpscLinkedArrayQueue<Object> spscLinkedArrayQueue) {
            long j8 = this.time;
            long j9 = this.count;
            boolean z6 = j9 == Long.MAX_VALUE;
            while (!spscLinkedArrayQueue.isEmpty()) {
                if (((Long) spscLinkedArrayQueue.peek()).longValue() >= j7 - j8 && (z6 || (spscLinkedArrayQueue.size() >> 1) <= j9)) {
                    return;
                }
                spscLinkedArrayQueue.poll();
                spscLinkedArrayQueue.poll();
            }
        }
    }

    public FlowableTakeLastTimed(Flowable<T> flowable, long j7, long j8, TimeUnit timeUnit, Scheduler scheduler, int i2, boolean z6) {
        super(flowable);
        this.count = j7;
        this.time = j8;
        this.unit = timeUnit;
        this.scheduler = scheduler;
        this.bufferSize = i2;
        this.delayError = z6;
    }

    @Override // io.reactivex.Flowable
    public void subscribeActual(c cVar) {
        this.source.subscribe((FlowableSubscriber) new TakeLastTimedSubscriber(cVar, this.count, this.time, this.unit, this.scheduler, this.bufferSize, this.delayError));
    }
}
