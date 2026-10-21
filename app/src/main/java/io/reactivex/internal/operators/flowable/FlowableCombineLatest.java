package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.annotations.NonNull;
import io.reactivex.annotations.Nullable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.operators.flowable.FlowableMap;
import io.reactivex.internal.queue.SpscLinkedArrayQueue;
import io.reactivex.internal.subscriptions.BasicIntQueueSubscription;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import m6.b;
import m6.c;
import m6.d;

/* loaded from: classes2.dex */
public final class FlowableCombineLatest<T, R> extends Flowable<R> {

    @Nullable
    final b[] array;
    final int bufferSize;
    final Function<? super Object[], ? extends R> combiner;
    final boolean delayErrors;

    @Nullable
    final Iterable<? extends b> iterable;

    public static final class CombineLatestCoordinator<T, R> extends BasicIntQueueSubscription<R> {
        private static final long serialVersionUID = -5082275438355852221L;
        volatile boolean cancelled;
        final Function<? super Object[], ? extends R> combiner;
        int completedSources;
        final boolean delayErrors;
        volatile boolean done;
        final c downstream;
        final AtomicReference<Throwable> error;
        final Object[] latest;
        int nonEmptySources;
        boolean outputFused;
        final SpscLinkedArrayQueue<Object> queue;
        final AtomicLong requested;
        final CombineLatestInnerSubscriber<T>[] subscribers;

        public CombineLatestCoordinator(c cVar, Function<? super Object[], ? extends R> function, int i2, int i7, boolean z6) {
            this.downstream = cVar;
            this.combiner = function;
            CombineLatestInnerSubscriber<T>[] combineLatestInnerSubscriberArr = new CombineLatestInnerSubscriber[i2];
            for (int i8 = 0; i8 < i2; i8++) {
                combineLatestInnerSubscriberArr[i8] = new CombineLatestInnerSubscriber<>(this, i8, i7);
            }
            this.subscribers = combineLatestInnerSubscriberArr;
            this.latest = new Object[i2];
            this.queue = new SpscLinkedArrayQueue<>(i7);
            this.requested = new AtomicLong();
            this.error = new AtomicReference<>();
            this.delayErrors = z6;
        }

        @Override // io.reactivex.internal.subscriptions.BasicIntQueueSubscription, io.reactivex.internal.fuseable.QueueSubscription, m6.d
        public void cancel() {
            this.cancelled = true;
            cancelAll();
        }

        public void cancelAll() {
            for (CombineLatestInnerSubscriber<T> combineLatestInnerSubscriber : this.subscribers) {
                combineLatestInnerSubscriber.cancel();
            }
        }

        public boolean checkTerminated(boolean z6, boolean z7, c cVar, SpscLinkedArrayQueue<?> spscLinkedArrayQueue) {
            if (this.cancelled) {
                cancelAll();
                spscLinkedArrayQueue.clear();
                return true;
            }
            if (!z6) {
                return false;
            }
            if (this.delayErrors) {
                if (!z7) {
                    return false;
                }
                cancelAll();
                Throwable terminate = ExceptionHelper.terminate(this.error);
                if (terminate == null || terminate == ExceptionHelper.TERMINATED) {
                    cVar.onComplete();
                } else {
                    cVar.onError(terminate);
                }
                return true;
            }
            Throwable terminate2 = ExceptionHelper.terminate(this.error);
            if (terminate2 != null && terminate2 != ExceptionHelper.TERMINATED) {
                cancelAll();
                spscLinkedArrayQueue.clear();
                cVar.onError(terminate2);
                return true;
            }
            if (!z7) {
                return false;
            }
            cancelAll();
            cVar.onComplete();
            return true;
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public void clear() {
            this.queue.clear();
        }

        public void drain() {
            if (getAndIncrement() != 0) {
                return;
            }
            if (this.outputFused) {
                drainOutput();
            } else {
                drainAsync();
            }
        }

        public void drainAsync() {
            c cVar = this.downstream;
            SpscLinkedArrayQueue<?> spscLinkedArrayQueue = this.queue;
            int i2 = 1;
            do {
                long j7 = this.requested.get();
                long j8 = 0;
                while (j8 != j7) {
                    boolean z6 = this.done;
                    Object poll = spscLinkedArrayQueue.poll();
                    boolean z7 = poll == null;
                    if (checkTerminated(z6, z7, cVar, spscLinkedArrayQueue)) {
                        return;
                    }
                    if (z7) {
                        break;
                    }
                    try {
                        cVar.onNext(ObjectHelper.requireNonNull(this.combiner.apply((Object[]) spscLinkedArrayQueue.poll()), "The combiner returned a null value"));
                        ((CombineLatestInnerSubscriber) poll).requestOne();
                        j8++;
                    } catch (Throwable th) {
                        Exceptions.throwIfFatal(th);
                        cancelAll();
                        ExceptionHelper.addThrowable(this.error, th);
                        cVar.onError(ExceptionHelper.terminate(this.error));
                        return;
                    }
                }
                if (j8 == j7 && checkTerminated(this.done, spscLinkedArrayQueue.isEmpty(), cVar, spscLinkedArrayQueue)) {
                    return;
                }
                if (j8 != 0 && j7 != Long.MAX_VALUE) {
                    this.requested.addAndGet(-j8);
                }
                i2 = addAndGet(-i2);
            } while (i2 != 0);
        }

        public void drainOutput() {
            c cVar = this.downstream;
            SpscLinkedArrayQueue<Object> spscLinkedArrayQueue = this.queue;
            int i2 = 1;
            while (!this.cancelled) {
                Throwable th = this.error.get();
                if (th != null) {
                    spscLinkedArrayQueue.clear();
                    cVar.onError(th);
                    return;
                }
                boolean z6 = this.done;
                boolean isEmpty = spscLinkedArrayQueue.isEmpty();
                if (!isEmpty) {
                    cVar.onNext(null);
                }
                if (z6 && isEmpty) {
                    cVar.onComplete();
                    return;
                } else {
                    i2 = addAndGet(-i2);
                    if (i2 == 0) {
                        return;
                    }
                }
            }
            spscLinkedArrayQueue.clear();
        }

        public void innerComplete(int i2) {
            synchronized (this) {
                try {
                    Object[] objArr = this.latest;
                    if (objArr[i2] != null) {
                        int i7 = this.completedSources + 1;
                        if (i7 != objArr.length) {
                            this.completedSources = i7;
                            return;
                        }
                        this.done = true;
                    } else {
                        this.done = true;
                    }
                    drain();
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public void innerError(int i2, Throwable th) {
            if (!ExceptionHelper.addThrowable(this.error, th)) {
                RxJavaPlugins.onError(th);
            } else {
                if (this.delayErrors) {
                    innerComplete(i2);
                    return;
                }
                cancelAll();
                this.done = true;
                drain();
            }
        }

        public void innerValue(int i2, T t6) {
            boolean z6;
            synchronized (this) {
                try {
                    Object[] objArr = this.latest;
                    int i7 = this.nonEmptySources;
                    if (objArr[i2] == null) {
                        i7++;
                        this.nonEmptySources = i7;
                    }
                    objArr[i2] = t6;
                    if (objArr.length == i7) {
                        this.queue.offer(this.subscribers[i2], objArr.clone());
                        z6 = false;
                    } else {
                        z6 = true;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (z6) {
                this.subscribers[i2].requestOne();
            } else {
                drain();
            }
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public boolean isEmpty() {
            return this.queue.isEmpty();
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @Nullable
        public R poll() throws Exception {
            Object poll = this.queue.poll();
            if (poll == null) {
                return null;
            }
            R r6 = (R) ObjectHelper.requireNonNull(this.combiner.apply((Object[]) this.queue.poll()), "The combiner returned a null value");
            ((CombineLatestInnerSubscriber) poll).requestOne();
            return r6;
        }

        @Override // io.reactivex.internal.subscriptions.BasicIntQueueSubscription, io.reactivex.internal.fuseable.QueueSubscription, m6.d
        public void request(long j7) {
            if (SubscriptionHelper.validate(j7)) {
                BackpressureHelper.add(this.requested, j7);
                drain();
            }
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public int requestFusion(int i2) {
            if ((i2 & 4) != 0) {
                return 0;
            }
            int i7 = i2 & 2;
            this.outputFused = i7 != 0;
            return i7;
        }

        public void subscribe(b[] bVarArr, int i2) {
            CombineLatestInnerSubscriber<T>[] combineLatestInnerSubscriberArr = this.subscribers;
            for (int i7 = 0; i7 < i2 && !this.done && !this.cancelled; i7++) {
                bVarArr[i7].subscribe(combineLatestInnerSubscriberArr[i7]);
            }
        }
    }

    public static final class CombineLatestInnerSubscriber<T> extends AtomicReference<d> implements FlowableSubscriber<T> {
        private static final long serialVersionUID = -8730235182291002949L;
        final int index;
        final int limit;
        final CombineLatestCoordinator<T, ?> parent;
        final int prefetch;
        int produced;

        public CombineLatestInnerSubscriber(CombineLatestCoordinator<T, ?> combineLatestCoordinator, int i2, int i7) {
            this.parent = combineLatestCoordinator;
            this.index = i2;
            this.prefetch = i7;
            this.limit = i7 - (i7 >> 2);
        }

        public void cancel() {
            SubscriptionHelper.cancel(this);
        }

        @Override // io.reactivex.FlowableSubscriber, m6.c
        public void onComplete() {
            this.parent.innerComplete(this.index);
        }

        @Override // io.reactivex.FlowableSubscriber, m6.c
        public void onError(Throwable th) {
            this.parent.innerError(this.index, th);
        }

        @Override // io.reactivex.FlowableSubscriber, m6.c
        public void onNext(T t6) {
            this.parent.innerValue(this.index, t6);
        }

        @Override // io.reactivex.FlowableSubscriber, m6.c
        public void onSubscribe(d dVar) {
            SubscriptionHelper.setOnce(this, dVar, this.prefetch);
        }

        public void requestOne() {
            int i2 = this.produced + 1;
            if (i2 != this.limit) {
                this.produced = i2;
            } else {
                this.produced = 0;
                get().request(i2);
            }
        }
    }

    public final class SingletonArrayFunc implements Function<T, R> {
        public SingletonArrayFunc() {
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, java.lang.Object[]] */
        @Override // io.reactivex.functions.Function
        public R apply(T t6) throws Exception {
            return FlowableCombineLatest.this.combiner.apply(new Object[]{t6});
        }
    }

    public FlowableCombineLatest(@NonNull b[] bVarArr, @NonNull Function<? super Object[], ? extends R> function, int i2, boolean z6) {
        this.array = bVarArr;
        this.iterable = null;
        this.combiner = function;
        this.bufferSize = i2;
        this.delayErrors = z6;
    }

    @Override // io.reactivex.Flowable
    public void subscribeActual(c cVar) {
        int length;
        b[] bVarArr = this.array;
        if (bVarArr == null) {
            bVarArr = new b[8];
            try {
                Iterator it = (Iterator) ObjectHelper.requireNonNull(this.iterable.iterator(), "The iterator returned is null");
                length = 0;
                while (it.hasNext()) {
                    try {
                        try {
                            b bVar = (b) ObjectHelper.requireNonNull(it.next(), "The publisher returned by the iterator is null");
                            if (length == bVarArr.length) {
                                b[] bVarArr2 = new b[(length >> 2) + length];
                                System.arraycopy(bVarArr, 0, bVarArr2, 0, length);
                                bVarArr = bVarArr2;
                            }
                            bVarArr[length] = bVar;
                            length++;
                        } catch (Throwable th) {
                            Exceptions.throwIfFatal(th);
                            EmptySubscription.error(th, cVar);
                            return;
                        }
                    } catch (Throwable th2) {
                        Exceptions.throwIfFatal(th2);
                        EmptySubscription.error(th2, cVar);
                        return;
                    }
                }
            } catch (Throwable th3) {
                Exceptions.throwIfFatal(th3);
                EmptySubscription.error(th3, cVar);
                return;
            }
        } else {
            length = bVarArr.length;
        }
        int i2 = length;
        if (i2 == 0) {
            EmptySubscription.complete(cVar);
        } else {
            if (i2 == 1) {
                bVarArr[0].subscribe(new FlowableMap.MapSubscriber(cVar, new SingletonArrayFunc()));
                return;
            }
            CombineLatestCoordinator combineLatestCoordinator = new CombineLatestCoordinator(cVar, this.combiner, i2, this.bufferSize, this.delayErrors);
            cVar.onSubscribe(combineLatestCoordinator);
            combineLatestCoordinator.subscribe(bVarArr, i2);
        }
    }

    public FlowableCombineLatest(@NonNull Iterable<? extends b> iterable, @NonNull Function<? super Object[], ? extends R> function, int i2, boolean z6) {
        this.array = null;
        this.iterable = iterable;
        this.combiner = function;
        this.bufferSize = i2;
        this.delayErrors = z6;
    }
}
