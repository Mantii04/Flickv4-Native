package io.reactivex.internal.operators.flowable;

import io.reactivex.FlowableSubscriber;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.flowables.ConnectableFlowable;
import io.reactivex.functions.Consumer;
import io.reactivex.internal.disposables.ResettableConnectable;
import io.reactivex.internal.fuseable.HasUpstreamPublisher;
import io.reactivex.internal.fuseable.QueueSubscription;
import io.reactivex.internal.fuseable.SimpleQueue;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import m6.b;
import m6.c;
import m6.d;

/* loaded from: classes2.dex */
public final class FlowablePublishAlt<T> extends ConnectableFlowable<T> implements HasUpstreamPublisher<T>, ResettableConnectable {
    final int bufferSize;
    final AtomicReference<PublishConnection<T>> current = new AtomicReference<>();
    final b source;

    public static final class InnerSubscription<T> extends AtomicLong implements d {
        private static final long serialVersionUID = 2845000326761540265L;
        final c downstream;
        long emitted;
        final PublishConnection<T> parent;

        public InnerSubscription(c cVar, PublishConnection<T> publishConnection) {
            this.downstream = cVar;
            this.parent = publishConnection;
        }

        @Override // m6.d
        public void cancel() {
            if (getAndSet(Long.MIN_VALUE) != Long.MIN_VALUE) {
                this.parent.remove(this);
                this.parent.drain();
            }
        }

        public boolean isCancelled() {
            return get() == Long.MIN_VALUE;
        }

        @Override // m6.d
        public void request(long j7) {
            BackpressureHelper.addCancel(this, j7);
            this.parent.drain();
        }
    }

    public static final class PublishConnection<T> extends AtomicInteger implements FlowableSubscriber<T>, Disposable {
        static final InnerSubscription[] EMPTY = new InnerSubscription[0];
        static final InnerSubscription[] TERMINATED = new InnerSubscription[0];
        private static final long serialVersionUID = -1672047311619175801L;
        final int bufferSize;
        int consumed;
        final AtomicReference<PublishConnection<T>> current;
        volatile boolean done;
        Throwable error;
        volatile SimpleQueue<T> queue;
        int sourceMode;
        final AtomicReference<d> upstream = new AtomicReference<>();
        final AtomicBoolean connect = new AtomicBoolean();
        final AtomicReference<InnerSubscription<T>[]> subscribers = new AtomicReference<>(EMPTY);

        public PublishConnection(AtomicReference<PublishConnection<T>> atomicReference, int i2) {
            this.current = atomicReference;
            this.bufferSize = i2;
        }

        public boolean add(InnerSubscription<T> innerSubscription) {
            while (true) {
                InnerSubscription<T>[] innerSubscriptionArr = this.subscribers.get();
                if (innerSubscriptionArr == TERMINATED) {
                    return false;
                }
                int length = innerSubscriptionArr.length;
                InnerSubscription<T>[] innerSubscriptionArr2 = new InnerSubscription[length + 1];
                System.arraycopy(innerSubscriptionArr, 0, innerSubscriptionArr2, 0, length);
                innerSubscriptionArr2[length] = innerSubscription;
                AtomicReference<InnerSubscription<T>[]> atomicReference = this.subscribers;
                while (!atomicReference.compareAndSet(innerSubscriptionArr, innerSubscriptionArr2)) {
                    if (atomicReference.get() != innerSubscriptionArr) {
                        break;
                    }
                }
                return true;
            }
        }

        public boolean checkTerminated(boolean z6, boolean z7) {
            if (!z6 || !z7) {
                return false;
            }
            Throwable th = this.error;
            if (th != null) {
                signalError(th);
                return true;
            }
            for (InnerSubscription<T> innerSubscription : this.subscribers.getAndSet(TERMINATED)) {
                if (!innerSubscription.isCancelled()) {
                    innerSubscription.downstream.onComplete();
                }
            }
            return true;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.subscribers.getAndSet(TERMINATED);
            AtomicReference<PublishConnection<T>> atomicReference = this.current;
            while (!atomicReference.compareAndSet(this, null) && atomicReference.get() == this) {
            }
            SubscriptionHelper.cancel(this.upstream);
        }

        public void drain() {
            if (getAndIncrement() != 0) {
                return;
            }
            SimpleQueue<T> simpleQueue = this.queue;
            int i2 = this.consumed;
            int i7 = this.bufferSize;
            int i8 = i7 - (i7 >> 2);
            boolean z6 = this.sourceMode != 1;
            SimpleQueue<T> simpleQueue2 = simpleQueue;
            int i9 = i2;
            int i10 = 1;
            while (true) {
                if (simpleQueue2 != null) {
                    InnerSubscription<T>[] innerSubscriptionArr = this.subscribers.get();
                    long j7 = Long.MAX_VALUE;
                    boolean z7 = false;
                    for (InnerSubscription<T> innerSubscription : innerSubscriptionArr) {
                        long j8 = innerSubscription.get();
                        if (j8 != Long.MIN_VALUE) {
                            j7 = Math.min(j8 - innerSubscription.emitted, j7);
                            z7 = true;
                        }
                    }
                    if (!z7) {
                        j7 = 0;
                    }
                    for (long j9 = 0; j7 != j9; j9 = 0) {
                        boolean z8 = this.done;
                        try {
                            T poll = simpleQueue2.poll();
                            boolean z9 = poll == null;
                            if (checkTerminated(z8, z9)) {
                                return;
                            }
                            if (z9) {
                                break;
                            }
                            for (InnerSubscription<T> innerSubscription2 : innerSubscriptionArr) {
                                if (!innerSubscription2.isCancelled()) {
                                    innerSubscription2.downstream.onNext(poll);
                                    innerSubscription2.emitted++;
                                }
                            }
                            if (z6 && (i9 = i9 + 1) == i8) {
                                this.upstream.get().request(i8);
                                i9 = 0;
                            }
                            j7--;
                            if (innerSubscriptionArr != this.subscribers.get()) {
                                break;
                            }
                        } catch (Throwable th) {
                            Exceptions.throwIfFatal(th);
                            this.upstream.get().cancel();
                            simpleQueue2.clear();
                            this.done = true;
                            signalError(th);
                            return;
                        }
                    }
                    if (checkTerminated(this.done, simpleQueue2.isEmpty())) {
                        return;
                    }
                }
                this.consumed = i9;
                i10 = addAndGet(-i10);
                if (i10 == 0) {
                    return;
                }
                if (simpleQueue2 == null) {
                    simpleQueue2 = this.queue;
                }
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.subscribers.get() == TERMINATED;
        }

        @Override // io.reactivex.FlowableSubscriber, m6.c
        public void onComplete() {
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
            if (this.sourceMode != 0 || this.queue.offer(t6)) {
                drain();
            } else {
                onError(new MissingBackpressureException("Prefetch queue is full?!"));
            }
        }

        @Override // io.reactivex.FlowableSubscriber, m6.c
        public void onSubscribe(d dVar) {
            if (SubscriptionHelper.setOnce(this.upstream, dVar)) {
                if (dVar instanceof QueueSubscription) {
                    QueueSubscription queueSubscription = (QueueSubscription) dVar;
                    int requestFusion = queueSubscription.requestFusion(7);
                    if (requestFusion == 1) {
                        this.sourceMode = requestFusion;
                        this.queue = queueSubscription;
                        this.done = true;
                        drain();
                        return;
                    }
                    if (requestFusion == 2) {
                        this.sourceMode = requestFusion;
                        this.queue = queueSubscription;
                        dVar.request(this.bufferSize);
                        return;
                    }
                }
                this.queue = new SpscArrayQueue(this.bufferSize);
                dVar.request(this.bufferSize);
            }
        }

        public void remove(InnerSubscription<T> innerSubscription) {
            InnerSubscription<T>[] innerSubscriptionArr;
            while (true) {
                InnerSubscription<T>[] innerSubscriptionArr2 = this.subscribers.get();
                int length = innerSubscriptionArr2.length;
                if (length == 0) {
                    return;
                }
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        i2 = -1;
                        break;
                    } else if (innerSubscriptionArr2[i2] == innerSubscription) {
                        break;
                    } else {
                        i2++;
                    }
                }
                if (i2 < 0) {
                    return;
                }
                if (length == 1) {
                    innerSubscriptionArr = EMPTY;
                } else {
                    InnerSubscription<T>[] innerSubscriptionArr3 = new InnerSubscription[length - 1];
                    System.arraycopy(innerSubscriptionArr2, 0, innerSubscriptionArr3, 0, i2);
                    System.arraycopy(innerSubscriptionArr2, i2 + 1, innerSubscriptionArr3, i2, (length - i2) - 1);
                    innerSubscriptionArr = innerSubscriptionArr3;
                }
                AtomicReference<InnerSubscription<T>[]> atomicReference = this.subscribers;
                while (!atomicReference.compareAndSet(innerSubscriptionArr2, innerSubscriptionArr)) {
                    if (atomicReference.get() != innerSubscriptionArr2) {
                        break;
                    }
                }
                return;
            }
        }

        public void signalError(Throwable th) {
            for (InnerSubscription<T> innerSubscription : this.subscribers.getAndSet(TERMINATED)) {
                if (!innerSubscription.isCancelled()) {
                    innerSubscription.downstream.onError(th);
                }
            }
        }
    }

    public FlowablePublishAlt(b bVar, int i2) {
        this.source = bVar;
        this.bufferSize = i2;
    }

    @Override // io.reactivex.flowables.ConnectableFlowable
    public void connect(Consumer<? super Disposable> consumer) {
        PublishConnection<T> publishConnection;
        loop0: while (true) {
            publishConnection = this.current.get();
            if (publishConnection != null && !publishConnection.isDisposed()) {
                break;
            }
            PublishConnection<T> publishConnection2 = new PublishConnection<>(this.current, this.bufferSize);
            AtomicReference<PublishConnection<T>> atomicReference = this.current;
            while (!atomicReference.compareAndSet(publishConnection, publishConnection2)) {
                if (atomicReference.get() != publishConnection) {
                    break;
                }
            }
            publishConnection = publishConnection2;
            break loop0;
        }
        boolean z6 = false;
        if (!publishConnection.connect.get() && publishConnection.connect.compareAndSet(false, true)) {
            z6 = true;
        }
        try {
            consumer.accept(publishConnection);
            if (z6) {
                this.source.subscribe(publishConnection);
            }
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            throw ExceptionHelper.wrapOrThrow(th);
        }
    }

    public int publishBufferSize() {
        return this.bufferSize;
    }

    @Override // io.reactivex.internal.disposables.ResettableConnectable
    public void resetIf(Disposable disposable) {
        AtomicReference<PublishConnection<T>> atomicReference = this.current;
        PublishConnection<T> publishConnection = (PublishConnection) disposable;
        while (!atomicReference.compareAndSet(publishConnection, null) && atomicReference.get() == publishConnection) {
        }
    }

    @Override // io.reactivex.internal.fuseable.HasUpstreamPublisher
    public b source() {
        return this.source;
    }

    @Override // io.reactivex.Flowable
    public void subscribeActual(c cVar) {
        PublishConnection<T> publishConnection;
        loop0: while (true) {
            publishConnection = this.current.get();
            if (publishConnection != null) {
                break;
            }
            PublishConnection<T> publishConnection2 = new PublishConnection<>(this.current, this.bufferSize);
            AtomicReference<PublishConnection<T>> atomicReference = this.current;
            while (!atomicReference.compareAndSet(publishConnection, publishConnection2)) {
                if (atomicReference.get() != publishConnection) {
                    break;
                }
            }
            publishConnection = publishConnection2;
            break loop0;
        }
        InnerSubscription<T> innerSubscription = new InnerSubscription<>(cVar, publishConnection);
        cVar.onSubscribe(innerSubscription);
        if (publishConnection.add(innerSubscription)) {
            if (innerSubscription.isCancelled()) {
                publishConnection.remove(innerSubscription);
                return;
            } else {
                publishConnection.drain();
                return;
            }
        }
        Throwable th = publishConnection.error;
        if (th != null) {
            cVar.onError(th);
        } else {
            cVar.onComplete();
        }
    }
}
