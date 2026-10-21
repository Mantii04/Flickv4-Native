package io.reactivex.internal.operators.parallel;

import io.reactivex.FlowableSubscriber;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.fuseable.QueueSubscription;
import io.reactivex.internal.fuseable.SimpleQueue;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.parallel.ParallelFlowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLongArray;
import m6.b;
import m6.c;
import m6.d;

/* loaded from: classes2.dex */
public final class ParallelFromPublisher<T> extends ParallelFlowable<T> {
    final int parallelism;
    final int prefetch;
    final b source;

    public static final class ParallelDispatcher<T> extends AtomicInteger implements FlowableSubscriber<T> {
        private static final long serialVersionUID = -4470634016609963609L;
        volatile boolean cancelled;
        volatile boolean done;
        final long[] emissions;
        Throwable error;
        int index;
        final int limit;
        final int prefetch;
        int produced;
        SimpleQueue<T> queue;
        final AtomicLongArray requests;
        int sourceMode;
        final AtomicInteger subscriberCount = new AtomicInteger();
        final c[] subscribers;
        d upstream;

        public final class RailSubscription implements d {

            /* renamed from: j, reason: collision with root package name */
            final int f16851j;

            /* renamed from: m, reason: collision with root package name */
            final int f16852m;

            public RailSubscription(int i2, int i7) {
                this.f16851j = i2;
                this.f16852m = i7;
            }

            @Override // m6.d
            public void cancel() {
                if (ParallelDispatcher.this.requests.compareAndSet(this.f16851j + this.f16852m, 0L, 1L)) {
                    ParallelDispatcher parallelDispatcher = ParallelDispatcher.this;
                    int i2 = this.f16852m;
                    parallelDispatcher.cancel(i2 + i2);
                }
            }

            @Override // m6.d
            public void request(long j7) {
                long j8;
                if (SubscriptionHelper.validate(j7)) {
                    AtomicLongArray atomicLongArray = ParallelDispatcher.this.requests;
                    do {
                        j8 = atomicLongArray.get(this.f16851j);
                        if (j8 == Long.MAX_VALUE) {
                            return;
                        }
                    } while (!atomicLongArray.compareAndSet(this.f16851j, j8, BackpressureHelper.addCap(j8, j7)));
                    if (ParallelDispatcher.this.subscriberCount.get() == this.f16852m) {
                        ParallelDispatcher.this.drain();
                    }
                }
            }
        }

        public ParallelDispatcher(c[] cVarArr, int i2) {
            this.subscribers = cVarArr;
            this.prefetch = i2;
            this.limit = i2 - (i2 >> 2);
            int length = cVarArr.length;
            int i7 = length + length;
            AtomicLongArray atomicLongArray = new AtomicLongArray(i7 + 1);
            this.requests = atomicLongArray;
            atomicLongArray.lazySet(i7, length);
            this.emissions = new long[length];
        }

        public void cancel(int i2) {
            if (this.requests.decrementAndGet(i2) == 0) {
                this.cancelled = true;
                this.upstream.cancel();
                if (getAndIncrement() == 0) {
                    this.queue.clear();
                }
            }
        }

        public void drain() {
            if (getAndIncrement() != 0) {
                return;
            }
            if (this.sourceMode == 1) {
                drainSync();
            } else {
                drainAsync();
            }
        }

        public void drainAsync() {
            Throwable th;
            SimpleQueue<T> simpleQueue = this.queue;
            c[] cVarArr = this.subscribers;
            AtomicLongArray atomicLongArray = this.requests;
            long[] jArr = this.emissions;
            int length = jArr.length;
            int i2 = this.index;
            int i7 = this.produced;
            int i8 = 1;
            while (true) {
                int i9 = 0;
                int i10 = 0;
                while (!this.cancelled) {
                    boolean z6 = this.done;
                    if (z6 && (th = this.error) != null) {
                        simpleQueue.clear();
                        int length2 = cVarArr.length;
                        while (i9 < length2) {
                            cVarArr[i9].onError(th);
                            i9++;
                        }
                        return;
                    }
                    boolean isEmpty = simpleQueue.isEmpty();
                    if (z6 && isEmpty) {
                        int length3 = cVarArr.length;
                        while (i9 < length3) {
                            cVarArr[i9].onComplete();
                            i9++;
                        }
                        return;
                    }
                    if (!isEmpty) {
                        long j7 = atomicLongArray.get(i2);
                        long j8 = jArr[i2];
                        if (j7 == j8 || atomicLongArray.get(length + i2) != 0) {
                            i10++;
                        } else {
                            try {
                                T poll = simpleQueue.poll();
                                if (poll != null) {
                                    cVarArr[i2].onNext(poll);
                                    jArr[i2] = j8 + 1;
                                    i7++;
                                    if (i7 == this.limit) {
                                        this.upstream.request(i7);
                                        i7 = 0;
                                    }
                                    i10 = 0;
                                }
                            } catch (Throwable th2) {
                                Exceptions.throwIfFatal(th2);
                                this.upstream.cancel();
                                int length4 = cVarArr.length;
                                while (i9 < length4) {
                                    cVarArr[i9].onError(th2);
                                    i9++;
                                }
                                return;
                            }
                        }
                        i2++;
                        if (i2 == length) {
                            i2 = 0;
                        }
                        if (i10 == length) {
                        }
                    }
                    int i11 = get();
                    if (i11 == i8) {
                        this.index = i2;
                        this.produced = i7;
                        i8 = addAndGet(-i8);
                        if (i8 == 0) {
                            return;
                        }
                    } else {
                        i8 = i11;
                    }
                }
                simpleQueue.clear();
                return;
            }
        }

        public void drainSync() {
            SimpleQueue<T> simpleQueue = this.queue;
            c[] cVarArr = this.subscribers;
            AtomicLongArray atomicLongArray = this.requests;
            long[] jArr = this.emissions;
            int length = jArr.length;
            int i2 = this.index;
            int i7 = 1;
            while (true) {
                int i8 = 0;
                int i9 = 0;
                while (!this.cancelled) {
                    if (simpleQueue.isEmpty()) {
                        int length2 = cVarArr.length;
                        while (i8 < length2) {
                            cVarArr[i8].onComplete();
                            i8++;
                        }
                        return;
                    }
                    long j7 = atomicLongArray.get(i2);
                    long j8 = jArr[i2];
                    if (j7 == j8 || atomicLongArray.get(length + i2) != 0) {
                        i9++;
                    } else {
                        try {
                            T poll = simpleQueue.poll();
                            if (poll == null) {
                                int length3 = cVarArr.length;
                                while (i8 < length3) {
                                    cVarArr[i8].onComplete();
                                    i8++;
                                }
                                return;
                            }
                            cVarArr[i2].onNext(poll);
                            jArr[i2] = j8 + 1;
                            i9 = 0;
                        } catch (Throwable th) {
                            Exceptions.throwIfFatal(th);
                            this.upstream.cancel();
                            int length4 = cVarArr.length;
                            while (i8 < length4) {
                                cVarArr[i8].onError(th);
                                i8++;
                            }
                            return;
                        }
                    }
                    i2++;
                    if (i2 == length) {
                        i2 = 0;
                    }
                    if (i9 == length) {
                        int i10 = get();
                        if (i10 == i7) {
                            this.index = i2;
                            i7 = addAndGet(-i7);
                            if (i7 == 0) {
                                return;
                            }
                        } else {
                            i7 = i10;
                        }
                    }
                }
                simpleQueue.clear();
                return;
            }
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
            if (this.sourceMode != 0 || this.queue.offer(t6)) {
                drain();
            } else {
                this.upstream.cancel();
                onError(new MissingBackpressureException("Queue is full?"));
            }
        }

        @Override // io.reactivex.FlowableSubscriber, m6.c
        public void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.upstream, dVar)) {
                this.upstream = dVar;
                if (dVar instanceof QueueSubscription) {
                    QueueSubscription queueSubscription = (QueueSubscription) dVar;
                    int requestFusion = queueSubscription.requestFusion(7);
                    if (requestFusion == 1) {
                        this.sourceMode = requestFusion;
                        this.queue = queueSubscription;
                        this.done = true;
                        setupSubscribers();
                        drain();
                        return;
                    }
                    if (requestFusion == 2) {
                        this.sourceMode = requestFusion;
                        this.queue = queueSubscription;
                        setupSubscribers();
                        dVar.request(this.prefetch);
                        return;
                    }
                }
                this.queue = new SpscArrayQueue(this.prefetch);
                setupSubscribers();
                dVar.request(this.prefetch);
            }
        }

        public void setupSubscribers() {
            c[] cVarArr = this.subscribers;
            int length = cVarArr.length;
            int i2 = 0;
            while (i2 < length && !this.cancelled) {
                int i7 = i2 + 1;
                this.subscriberCount.lazySet(i7);
                cVarArr[i2].onSubscribe(new RailSubscription(i2, length));
                i2 = i7;
            }
        }
    }

    public ParallelFromPublisher(b bVar, int i2, int i7) {
        this.source = bVar;
        this.parallelism = i2;
        this.prefetch = i7;
    }

    @Override // io.reactivex.parallel.ParallelFlowable
    public int parallelism() {
        return this.parallelism;
    }

    @Override // io.reactivex.parallel.ParallelFlowable
    public void subscribe(c[] cVarArr) {
        if (validate(cVarArr)) {
            this.source.subscribe(new ParallelDispatcher(cVarArr, this.prefetch));
        }
    }
}
