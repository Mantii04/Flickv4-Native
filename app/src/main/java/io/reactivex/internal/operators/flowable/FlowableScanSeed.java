package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.BiFunction;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.fuseable.SimplePlainQueue;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import m6.c;
import m6.d;

/* loaded from: classes2.dex */
public final class FlowableScanSeed<T, R> extends AbstractFlowableWithUpstream<T, R> {
    final BiFunction<R, ? super T, R> accumulator;
    final Callable<R> seedSupplier;

    public static final class ScanSeedSubscriber<T, R> extends AtomicInteger implements FlowableSubscriber<T>, d {
        private static final long serialVersionUID = -1776795561228106469L;
        final BiFunction<R, ? super T, R> accumulator;
        volatile boolean cancelled;
        int consumed;
        volatile boolean done;
        final c downstream;
        Throwable error;
        final int limit;
        final int prefetch;
        final SimplePlainQueue<R> queue;
        final AtomicLong requested;
        d upstream;
        R value;

        public ScanSeedSubscriber(c cVar, BiFunction<R, ? super T, R> biFunction, R r6, int i2) {
            this.downstream = cVar;
            this.accumulator = biFunction;
            this.value = r6;
            this.prefetch = i2;
            this.limit = i2 - (i2 >> 2);
            SpscArrayQueue spscArrayQueue = new SpscArrayQueue(i2);
            this.queue = spscArrayQueue;
            spscArrayQueue.offer(r6);
            this.requested = new AtomicLong();
        }

        @Override // m6.d
        public void cancel() {
            this.cancelled = true;
            this.upstream.cancel();
            if (getAndIncrement() == 0) {
                this.queue.clear();
            }
        }

        public void drain() {
            Throwable th;
            if (getAndIncrement() != 0) {
                return;
            }
            c cVar = this.downstream;
            SimplePlainQueue<R> simplePlainQueue = this.queue;
            int i2 = this.limit;
            int i7 = this.consumed;
            int i8 = 1;
            do {
                long j7 = this.requested.get();
                long j8 = 0;
                while (j8 != j7) {
                    if (this.cancelled) {
                        simplePlainQueue.clear();
                        return;
                    }
                    boolean z6 = this.done;
                    if (z6 && (th = this.error) != null) {
                        simplePlainQueue.clear();
                        cVar.onError(th);
                        return;
                    }
                    R poll = simplePlainQueue.poll();
                    boolean z7 = poll == null;
                    if (z6 && z7) {
                        cVar.onComplete();
                        return;
                    }
                    if (z7) {
                        break;
                    }
                    cVar.onNext(poll);
                    j8++;
                    i7++;
                    if (i7 == i2) {
                        this.upstream.request(i2);
                        i7 = 0;
                    }
                }
                if (j8 == j7 && this.done) {
                    Throwable th2 = this.error;
                    if (th2 != null) {
                        simplePlainQueue.clear();
                        cVar.onError(th2);
                        return;
                    } else if (simplePlainQueue.isEmpty()) {
                        cVar.onComplete();
                        return;
                    }
                }
                if (j8 != 0) {
                    BackpressureHelper.produced(this.requested, j8);
                }
                this.consumed = i7;
                i8 = addAndGet(-i8);
            } while (i8 != 0);
        }

        @Override // io.reactivex.FlowableSubscriber, m6.c
        public void onComplete() {
            if (this.done) {
                return;
            }
            this.done = true;
            drain();
        }

        @Override // io.reactivex.FlowableSubscriber, m6.c
        public void onError(Throwable th) {
            if (this.done) {
                RxJavaPlugins.onError(th);
                return;
            }
            this.error = th;
            this.done = true;
            drain();
        }

        @Override // io.reactivex.FlowableSubscriber, m6.c
        public void onNext(T t6) {
            if (this.done) {
                return;
            }
            try {
                R r6 = (R) ObjectHelper.requireNonNull(this.accumulator.apply(this.value, t6), "The accumulator returned a null value");
                this.value = r6;
                this.queue.offer(r6);
                drain();
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.upstream.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.FlowableSubscriber, m6.c
        public void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.upstream, dVar)) {
                this.upstream = dVar;
                this.downstream.onSubscribe(this);
                dVar.request(this.prefetch - 1);
            }
        }

        @Override // m6.d
        public void request(long j7) {
            if (SubscriptionHelper.validate(j7)) {
                BackpressureHelper.add(this.requested, j7);
                drain();
            }
        }
    }

    public FlowableScanSeed(Flowable<T> flowable, Callable<R> callable, BiFunction<R, ? super T, R> biFunction) {
        super(flowable);
        this.accumulator = biFunction;
        this.seedSupplier = callable;
    }

    @Override // io.reactivex.Flowable
    public void subscribeActual(c cVar) {
        try {
            this.source.subscribe((FlowableSubscriber) new ScanSeedSubscriber(cVar, this.accumulator, ObjectHelper.requireNonNull(this.seedSupplier.call(), "The seed supplied is null"), Flowable.bufferSize()));
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            EmptySubscription.error(th, cVar);
        }
    }
}
