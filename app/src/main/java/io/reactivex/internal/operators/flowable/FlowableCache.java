package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import m6.c;
import m6.d;

/* loaded from: classes2.dex */
public final class FlowableCache<T> extends AbstractFlowableWithUpstream<T, T> implements FlowableSubscriber<T> {
    static final CacheSubscription[] EMPTY = new CacheSubscription[0];
    static final CacheSubscription[] TERMINATED = new CacheSubscription[0];
    final int capacityHint;
    volatile boolean done;
    Throwable error;
    final Node<T> head;
    final AtomicBoolean once;
    volatile long size;
    final AtomicReference<CacheSubscription<T>[]> subscribers;
    Node<T> tail;
    int tailOffset;

    public static final class CacheSubscription<T> extends AtomicInteger implements d {
        private static final long serialVersionUID = 6770240836423125754L;
        final c downstream;
        long index;
        Node<T> node;
        int offset;
        final FlowableCache<T> parent;
        final AtomicLong requested = new AtomicLong();

        public CacheSubscription(c cVar, FlowableCache<T> flowableCache) {
            this.downstream = cVar;
            this.parent = flowableCache;
            this.node = flowableCache.head;
        }

        @Override // m6.d
        public void cancel() {
            if (this.requested.getAndSet(Long.MIN_VALUE) != Long.MIN_VALUE) {
                this.parent.remove(this);
            }
        }

        @Override // m6.d
        public void request(long j7) {
            if (SubscriptionHelper.validate(j7)) {
                BackpressureHelper.addCancel(this.requested, j7);
                this.parent.replay(this);
            }
        }
    }

    public static final class Node<T> {
        volatile Node<T> next;
        final T[] values;

        public Node(int i2) {
            this.values = (T[]) new Object[i2];
        }
    }

    public FlowableCache(Flowable<T> flowable, int i2) {
        super(flowable);
        this.capacityHint = i2;
        this.once = new AtomicBoolean();
        Node<T> node = new Node<>(i2);
        this.head = node;
        this.tail = node;
        this.subscribers = new AtomicReference<>(EMPTY);
    }

    public void add(CacheSubscription<T> cacheSubscription) {
        while (true) {
            CacheSubscription<T>[] cacheSubscriptionArr = this.subscribers.get();
            if (cacheSubscriptionArr == TERMINATED) {
                return;
            }
            int length = cacheSubscriptionArr.length;
            CacheSubscription<T>[] cacheSubscriptionArr2 = new CacheSubscription[length + 1];
            System.arraycopy(cacheSubscriptionArr, 0, cacheSubscriptionArr2, 0, length);
            cacheSubscriptionArr2[length] = cacheSubscription;
            AtomicReference<CacheSubscription<T>[]> atomicReference = this.subscribers;
            while (!atomicReference.compareAndSet(cacheSubscriptionArr, cacheSubscriptionArr2)) {
                if (atomicReference.get() != cacheSubscriptionArr) {
                    break;
                }
            }
            return;
        }
    }

    public long cachedEventCount() {
        return this.size;
    }

    public boolean hasSubscribers() {
        return this.subscribers.get().length != 0;
    }

    public boolean isConnected() {
        return this.once.get();
    }

    @Override // io.reactivex.FlowableSubscriber, m6.c
    public void onComplete() {
        this.done = true;
        for (CacheSubscription<T> cacheSubscription : this.subscribers.getAndSet(TERMINATED)) {
            replay(cacheSubscription);
        }
    }

    @Override // io.reactivex.FlowableSubscriber, m6.c
    public void onError(Throwable th) {
        if (this.done) {
            RxJavaPlugins.onError(th);
            return;
        }
        this.error = th;
        this.done = true;
        for (CacheSubscription<T> cacheSubscription : this.subscribers.getAndSet(TERMINATED)) {
            replay(cacheSubscription);
        }
    }

    @Override // io.reactivex.FlowableSubscriber, m6.c
    public void onNext(T t6) {
        int i2 = this.tailOffset;
        if (i2 == this.capacityHint) {
            Node<T> node = new Node<>(i2);
            node.values[0] = t6;
            this.tailOffset = 1;
            this.tail.next = node;
            this.tail = node;
        } else {
            this.tail.values[i2] = t6;
            this.tailOffset = i2 + 1;
        }
        this.size++;
        for (CacheSubscription<T> cacheSubscription : this.subscribers.get()) {
            replay(cacheSubscription);
        }
    }

    @Override // io.reactivex.FlowableSubscriber, m6.c
    public void onSubscribe(d dVar) {
        dVar.request(Long.MAX_VALUE);
    }

    public void remove(CacheSubscription<T> cacheSubscription) {
        CacheSubscription<T>[] cacheSubscriptionArr;
        while (true) {
            CacheSubscription<T>[] cacheSubscriptionArr2 = this.subscribers.get();
            int length = cacheSubscriptionArr2.length;
            if (length == 0) {
                return;
            }
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    i2 = -1;
                    break;
                } else if (cacheSubscriptionArr2[i2] == cacheSubscription) {
                    break;
                } else {
                    i2++;
                }
            }
            if (i2 < 0) {
                return;
            }
            if (length == 1) {
                cacheSubscriptionArr = EMPTY;
            } else {
                CacheSubscription<T>[] cacheSubscriptionArr3 = new CacheSubscription[length - 1];
                System.arraycopy(cacheSubscriptionArr2, 0, cacheSubscriptionArr3, 0, i2);
                System.arraycopy(cacheSubscriptionArr2, i2 + 1, cacheSubscriptionArr3, i2, (length - i2) - 1);
                cacheSubscriptionArr = cacheSubscriptionArr3;
            }
            AtomicReference<CacheSubscription<T>[]> atomicReference = this.subscribers;
            while (!atomicReference.compareAndSet(cacheSubscriptionArr2, cacheSubscriptionArr)) {
                if (atomicReference.get() != cacheSubscriptionArr2) {
                    break;
                }
            }
            return;
        }
    }

    public void replay(CacheSubscription<T> cacheSubscription) {
        if (cacheSubscription.getAndIncrement() != 0) {
            return;
        }
        long j7 = cacheSubscription.index;
        int i2 = cacheSubscription.offset;
        Node<T> node = cacheSubscription.node;
        AtomicLong atomicLong = cacheSubscription.requested;
        c cVar = cacheSubscription.downstream;
        int i7 = this.capacityHint;
        int i8 = 1;
        while (true) {
            boolean z6 = this.done;
            boolean z7 = this.size == j7;
            if (z6 && z7) {
                cacheSubscription.node = null;
                Throwable th = this.error;
                if (th != null) {
                    cVar.onError(th);
                    return;
                } else {
                    cVar.onComplete();
                    return;
                }
            }
            if (!z7) {
                long j8 = atomicLong.get();
                if (j8 == Long.MIN_VALUE) {
                    cacheSubscription.node = null;
                    return;
                } else if (j8 != j7) {
                    if (i2 == i7) {
                        node = node.next;
                        i2 = 0;
                    }
                    cVar.onNext(node.values[i2]);
                    i2++;
                    j7++;
                }
            }
            cacheSubscription.index = j7;
            cacheSubscription.offset = i2;
            cacheSubscription.node = node;
            i8 = cacheSubscription.addAndGet(-i8);
            if (i8 == 0) {
                return;
            }
        }
    }

    @Override // io.reactivex.Flowable
    public void subscribeActual(c cVar) {
        CacheSubscription<T> cacheSubscription = new CacheSubscription<>(cVar, this);
        cVar.onSubscribe(cacheSubscription);
        add(cacheSubscription);
        if (this.once.get() || !this.once.compareAndSet(false, true)) {
            replay(cacheSubscription);
        } else {
            this.source.subscribe((FlowableSubscriber) this);
        }
    }
}
