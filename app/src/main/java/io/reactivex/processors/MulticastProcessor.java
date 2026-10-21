package io.reactivex.processors;

import io.reactivex.Flowable;
import io.reactivex.annotations.BackpressureKind;
import io.reactivex.annotations.BackpressureSupport;
import io.reactivex.annotations.CheckReturnValue;
import io.reactivex.annotations.NonNull;
import io.reactivex.annotations.SchedulerSupport;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.fuseable.QueueSubscription;
import io.reactivex.internal.fuseable.SimpleQueue;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.queue.SpscLinkedArrayQueue;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import m6.c;
import m6.d;

@SchedulerSupport(SchedulerSupport.NONE)
@BackpressureSupport(BackpressureKind.FULL)
/* loaded from: classes2.dex */
public final class MulticastProcessor<T> extends FlowableProcessor<T> {
    static final MulticastSubscription[] EMPTY = new MulticastSubscription[0];
    static final MulticastSubscription[] TERMINATED = new MulticastSubscription[0];
    final int bufferSize;
    int consumed;
    volatile boolean done;
    volatile Throwable error;
    int fusionMode;
    final int limit;
    final AtomicBoolean once;
    volatile SimpleQueue<T> queue;
    final boolean refcount;
    final AtomicReference<MulticastSubscription<T>[]> subscribers;
    final AtomicReference<d> upstream;
    final AtomicInteger wip;

    public static final class MulticastSubscription<T> extends AtomicLong implements d {
        private static final long serialVersionUID = -363282618957264509L;
        final c downstream;
        long emitted;
        final MulticastProcessor<T> parent;

        public MulticastSubscription(c cVar, MulticastProcessor<T> multicastProcessor) {
            this.downstream = cVar;
            this.parent = multicastProcessor;
        }

        @Override // m6.d
        public void cancel() {
            if (getAndSet(Long.MIN_VALUE) != Long.MIN_VALUE) {
                this.parent.remove(this);
            }
        }

        public void onComplete() {
            if (get() != Long.MIN_VALUE) {
                this.downstream.onComplete();
            }
        }

        public void onError(Throwable th) {
            if (get() != Long.MIN_VALUE) {
                this.downstream.onError(th);
            }
        }

        public void onNext(T t6) {
            if (get() != Long.MIN_VALUE) {
                this.emitted++;
                this.downstream.onNext(t6);
            }
        }

        @Override // m6.d
        public void request(long j7) {
            long j8;
            long j9;
            if (SubscriptionHelper.validate(j7)) {
                do {
                    j8 = get();
                    if (j8 == Long.MIN_VALUE) {
                        return;
                    }
                    if (j8 == Long.MAX_VALUE) {
                        return;
                    } else {
                        j9 = j8 + j7;
                    }
                } while (!compareAndSet(j8, j9 >= 0 ? j9 : Long.MAX_VALUE));
                this.parent.drain();
            }
        }
    }

    public MulticastProcessor(int i2, boolean z6) {
        ObjectHelper.verifyPositive(i2, "bufferSize");
        this.bufferSize = i2;
        this.limit = i2 - (i2 >> 2);
        this.wip = new AtomicInteger();
        this.subscribers = new AtomicReference<>(EMPTY);
        this.upstream = new AtomicReference<>();
        this.refcount = z6;
        this.once = new AtomicBoolean();
    }

    @CheckReturnValue
    @NonNull
    public static <T> MulticastProcessor<T> create() {
        return new MulticastProcessor<>(Flowable.bufferSize(), false);
    }

    public boolean add(MulticastSubscription<T> multicastSubscription) {
        while (true) {
            MulticastSubscription<T>[] multicastSubscriptionArr = this.subscribers.get();
            if (multicastSubscriptionArr == TERMINATED) {
                return false;
            }
            int length = multicastSubscriptionArr.length;
            MulticastSubscription<T>[] multicastSubscriptionArr2 = new MulticastSubscription[length + 1];
            System.arraycopy(multicastSubscriptionArr, 0, multicastSubscriptionArr2, 0, length);
            multicastSubscriptionArr2[length] = multicastSubscription;
            AtomicReference<MulticastSubscription<T>[]> atomicReference = this.subscribers;
            while (!atomicReference.compareAndSet(multicastSubscriptionArr, multicastSubscriptionArr2)) {
                if (atomicReference.get() != multicastSubscriptionArr) {
                    break;
                }
            }
            return true;
        }
    }

    public void drain() {
        T t6;
        if (this.wip.getAndIncrement() != 0) {
            return;
        }
        AtomicReference<MulticastSubscription<T>[]> atomicReference = this.subscribers;
        int i2 = this.consumed;
        int i7 = this.limit;
        int i8 = this.fusionMode;
        int i9 = 1;
        while (true) {
            SimpleQueue<T> simpleQueue = this.queue;
            if (simpleQueue != null) {
                MulticastSubscription<T>[] multicastSubscriptionArr = atomicReference.get();
                if (multicastSubscriptionArr.length != 0) {
                    int i10 = 0;
                    long j7 = -1;
                    for (MulticastSubscription<T> multicastSubscription : multicastSubscriptionArr) {
                        long j8 = multicastSubscription.get();
                        if (j8 >= 0) {
                            j7 = j7 == -1 ? j8 - multicastSubscription.emitted : Math.min(j7, j8 - multicastSubscription.emitted);
                        }
                    }
                    int i11 = i2;
                    while (j7 > 0) {
                        MulticastSubscription<T>[] multicastSubscriptionArr2 = atomicReference.get();
                        if (multicastSubscriptionArr2 == TERMINATED) {
                            simpleQueue.clear();
                            return;
                        }
                        if (multicastSubscriptionArr != multicastSubscriptionArr2) {
                            break;
                        }
                        boolean z6 = this.done;
                        try {
                            t6 = simpleQueue.poll();
                        } catch (Throwable th) {
                            Exceptions.throwIfFatal(th);
                            SubscriptionHelper.cancel(this.upstream);
                            this.error = th;
                            this.done = true;
                            t6 = null;
                            z6 = true;
                        }
                        boolean z7 = t6 == null;
                        if (z6 && z7) {
                            Throwable th2 = this.error;
                            if (th2 != null) {
                                MulticastSubscription<T>[] andSet = atomicReference.getAndSet(TERMINATED);
                                int length = andSet.length;
                                while (i10 < length) {
                                    andSet[i10].onError(th2);
                                    i10++;
                                }
                                return;
                            }
                            MulticastSubscription<T>[] andSet2 = atomicReference.getAndSet(TERMINATED);
                            int length2 = andSet2.length;
                            while (i10 < length2) {
                                andSet2[i10].onComplete();
                                i10++;
                            }
                            return;
                        }
                        if (z7) {
                            break;
                        }
                        for (MulticastSubscription<T> multicastSubscription2 : multicastSubscriptionArr) {
                            multicastSubscription2.onNext(t6);
                        }
                        j7--;
                        if (i8 != 1 && (i11 = i11 + 1) == i7) {
                            this.upstream.get().request(i7);
                            i11 = 0;
                        }
                    }
                    if (j7 == 0) {
                        MulticastSubscription<T>[] multicastSubscriptionArr3 = atomicReference.get();
                        MulticastSubscription<T>[] multicastSubscriptionArr4 = TERMINATED;
                        if (multicastSubscriptionArr3 == multicastSubscriptionArr4) {
                            simpleQueue.clear();
                            return;
                        }
                        if (multicastSubscriptionArr != multicastSubscriptionArr3) {
                            i2 = i11;
                        } else if (this.done && simpleQueue.isEmpty()) {
                            Throwable th3 = this.error;
                            if (th3 != null) {
                                MulticastSubscription<T>[] andSet3 = atomicReference.getAndSet(multicastSubscriptionArr4);
                                int length3 = andSet3.length;
                                while (i10 < length3) {
                                    andSet3[i10].onError(th3);
                                    i10++;
                                }
                                return;
                            }
                            MulticastSubscription<T>[] andSet4 = atomicReference.getAndSet(multicastSubscriptionArr4);
                            int length4 = andSet4.length;
                            while (i10 < length4) {
                                andSet4[i10].onComplete();
                                i10++;
                            }
                            return;
                        }
                    }
                    i2 = i11;
                }
            }
            this.consumed = i2;
            i9 = this.wip.addAndGet(-i9);
            if (i9 == 0) {
                return;
            }
        }
    }

    @Override // io.reactivex.processors.FlowableProcessor
    public Throwable getThrowable() {
        if (this.once.get()) {
            return this.error;
        }
        return null;
    }

    @Override // io.reactivex.processors.FlowableProcessor
    public boolean hasComplete() {
        return this.once.get() && this.error == null;
    }

    @Override // io.reactivex.processors.FlowableProcessor
    public boolean hasSubscribers() {
        return this.subscribers.get().length != 0;
    }

    @Override // io.reactivex.processors.FlowableProcessor
    public boolean hasThrowable() {
        return this.once.get() && this.error != null;
    }

    public boolean offer(T t6) {
        if (this.once.get()) {
            return false;
        }
        ObjectHelper.requireNonNull(t6, "offer called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.fusionMode != 0 || !this.queue.offer(t6)) {
            return false;
        }
        drain();
        return true;
    }

    @Override // io.reactivex.processors.FlowableProcessor, m6.c
    public void onComplete() {
        if (this.once.compareAndSet(false, true)) {
            this.done = true;
            drain();
        }
    }

    @Override // io.reactivex.processors.FlowableProcessor, m6.c
    public void onError(Throwable th) {
        ObjectHelper.requireNonNull(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (!this.once.compareAndSet(false, true)) {
            RxJavaPlugins.onError(th);
            return;
        }
        this.error = th;
        this.done = true;
        drain();
    }

    @Override // io.reactivex.processors.FlowableProcessor, m6.c
    public void onNext(T t6) {
        if (this.once.get()) {
            return;
        }
        if (this.fusionMode == 0) {
            ObjectHelper.requireNonNull(t6, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
            if (!this.queue.offer(t6)) {
                SubscriptionHelper.cancel(this.upstream);
                onError(new MissingBackpressureException());
                return;
            }
        }
        drain();
    }

    @Override // m6.c
    public void onSubscribe(d dVar) {
        if (SubscriptionHelper.setOnce(this.upstream, dVar)) {
            if (dVar instanceof QueueSubscription) {
                QueueSubscription queueSubscription = (QueueSubscription) dVar;
                int requestFusion = queueSubscription.requestFusion(3);
                if (requestFusion == 1) {
                    this.fusionMode = requestFusion;
                    this.queue = queueSubscription;
                    this.done = true;
                    drain();
                    return;
                }
                if (requestFusion == 2) {
                    this.fusionMode = requestFusion;
                    this.queue = queueSubscription;
                    dVar.request(this.bufferSize);
                    return;
                }
            }
            this.queue = new SpscArrayQueue(this.bufferSize);
            dVar.request(this.bufferSize);
        }
    }

    public void remove(MulticastSubscription<T> multicastSubscription) {
        while (true) {
            MulticastSubscription<T>[] multicastSubscriptionArr = this.subscribers.get();
            int length = multicastSubscriptionArr.length;
            if (length == 0) {
                return;
            }
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    i2 = -1;
                    break;
                } else if (multicastSubscriptionArr[i2] == multicastSubscription) {
                    break;
                } else {
                    i2++;
                }
            }
            if (i2 < 0) {
                return;
            }
            if (length != 1) {
                MulticastSubscription<T>[] multicastSubscriptionArr2 = new MulticastSubscription[length - 1];
                System.arraycopy(multicastSubscriptionArr, 0, multicastSubscriptionArr2, 0, i2);
                System.arraycopy(multicastSubscriptionArr, i2 + 1, multicastSubscriptionArr2, i2, (length - i2) - 1);
                AtomicReference<MulticastSubscription<T>[]> atomicReference = this.subscribers;
                while (!atomicReference.compareAndSet(multicastSubscriptionArr, multicastSubscriptionArr2)) {
                    if (atomicReference.get() != multicastSubscriptionArr) {
                        break;
                    }
                }
                return;
            }
            if (!this.refcount) {
                AtomicReference<MulticastSubscription<T>[]> atomicReference2 = this.subscribers;
                MulticastSubscription<T>[] multicastSubscriptionArr3 = EMPTY;
                while (!atomicReference2.compareAndSet(multicastSubscriptionArr, multicastSubscriptionArr3)) {
                    if (atomicReference2.get() != multicastSubscriptionArr) {
                        break;
                    }
                }
                return;
            }
            AtomicReference<MulticastSubscription<T>[]> atomicReference3 = this.subscribers;
            MulticastSubscription<T>[] multicastSubscriptionArr4 = TERMINATED;
            while (!atomicReference3.compareAndSet(multicastSubscriptionArr, multicastSubscriptionArr4)) {
                if (atomicReference3.get() != multicastSubscriptionArr) {
                    break;
                }
            }
            SubscriptionHelper.cancel(this.upstream);
            this.once.set(true);
            return;
        }
    }

    public void start() {
        if (SubscriptionHelper.setOnce(this.upstream, EmptySubscription.INSTANCE)) {
            this.queue = new SpscArrayQueue(this.bufferSize);
        }
    }

    public void startUnbounded() {
        if (SubscriptionHelper.setOnce(this.upstream, EmptySubscription.INSTANCE)) {
            this.queue = new SpscLinkedArrayQueue(this.bufferSize);
        }
    }

    @Override // io.reactivex.Flowable
    public void subscribeActual(c cVar) {
        Throwable th;
        MulticastSubscription<T> multicastSubscription = new MulticastSubscription<>(cVar, this);
        cVar.onSubscribe(multicastSubscription);
        if (add(multicastSubscription)) {
            if (multicastSubscription.get() == Long.MIN_VALUE) {
                remove(multicastSubscription);
                return;
            } else {
                drain();
                return;
            }
        }
        if ((this.once.get() || !this.refcount) && (th = this.error) != null) {
            cVar.onError(th);
        } else {
            cVar.onComplete();
        }
    }

    @CheckReturnValue
    @NonNull
    public static <T> MulticastProcessor<T> create(boolean z6) {
        return new MulticastProcessor<>(Flowable.bufferSize(), z6);
    }

    @CheckReturnValue
    @NonNull
    public static <T> MulticastProcessor<T> create(int i2) {
        return new MulticastProcessor<>(i2, false);
    }

    @CheckReturnValue
    @NonNull
    public static <T> MulticastProcessor<T> create(int i2, boolean z6) {
        return new MulticastProcessor<>(i2, z6);
    }
}
