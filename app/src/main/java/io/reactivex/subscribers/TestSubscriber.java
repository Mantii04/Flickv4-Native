package io.reactivex.subscribers;

import A.i;
import io.reactivex.FlowableSubscriber;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.internal.fuseable.QueueSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.observers.BaseTestConsumer;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import m6.c;
import m6.d;

/* loaded from: classes2.dex */
public class TestSubscriber<T> extends BaseTestConsumer<T, TestSubscriber<T>> implements FlowableSubscriber<T>, d, Disposable {
    private volatile boolean cancelled;
    private final c downstream;
    private final AtomicLong missedRequested;
    private QueueSubscription<T> qs;
    private final AtomicReference<d> upstream;

    public TestSubscriber() {
        this(EmptySubscriber.INSTANCE, Long.MAX_VALUE);
    }

    public static <T> TestSubscriber<T> create() {
        return new TestSubscriber<>();
    }

    public static String fusionModeToString(int i2) {
        return i2 != 0 ? i2 != 1 ? i2 != 2 ? i.g(i2, "Unknown(", ")") : "ASYNC" : "SYNC" : "NONE";
    }

    public final TestSubscriber<T> assertFuseable() {
        if (this.qs != null) {
            return this;
        }
        throw new AssertionError("Upstream is not fuseable.");
    }

    public final TestSubscriber<T> assertFusionMode(int i2) {
        int i7 = this.establishedFusionMode;
        if (i7 == i2) {
            return this;
        }
        if (this.qs == null) {
            throw fail("Upstream is not fuseable");
        }
        throw new AssertionError("Fusion mode different. Expected: " + fusionModeToString(i2) + ", actual: " + fusionModeToString(i7));
    }

    public final TestSubscriber<T> assertNotFuseable() {
        if (this.qs == null) {
            return this;
        }
        throw new AssertionError("Upstream is fuseable.");
    }

    public final TestSubscriber<T> assertOf(Consumer<? super TestSubscriber<T>> consumer) {
        try {
            consumer.accept(this);
            return this;
        } catch (Throwable th) {
            throw ExceptionHelper.wrapOrThrow(th);
        }
    }

    @Override // m6.d
    public final void cancel() {
        if (this.cancelled) {
            return;
        }
        this.cancelled = true;
        SubscriptionHelper.cancel(this.upstream);
    }

    @Override // io.reactivex.disposables.Disposable
    public final void dispose() {
        cancel();
    }

    public final boolean hasSubscription() {
        return this.upstream.get() != null;
    }

    public final boolean isCancelled() {
        return this.cancelled;
    }

    @Override // io.reactivex.disposables.Disposable
    public final boolean isDisposed() {
        return this.cancelled;
    }

    @Override // io.reactivex.FlowableSubscriber, m6.c
    public void onComplete() {
        if (!this.checkSubscriptionOnce) {
            this.checkSubscriptionOnce = true;
            if (this.upstream.get() == null) {
                this.errors.add(new IllegalStateException("onSubscribe not called in proper order"));
            }
        }
        try {
            this.lastThread = Thread.currentThread();
            this.completions++;
            this.downstream.onComplete();
        } finally {
            this.done.countDown();
        }
    }

    @Override // io.reactivex.FlowableSubscriber, m6.c
    public void onError(Throwable th) {
        if (!this.checkSubscriptionOnce) {
            this.checkSubscriptionOnce = true;
            if (this.upstream.get() == null) {
                this.errors.add(new NullPointerException("onSubscribe not called in proper order"));
            }
        }
        try {
            this.lastThread = Thread.currentThread();
            this.errors.add(th);
            if (th == null) {
                this.errors.add(new IllegalStateException("onError received a null Throwable"));
            }
            this.downstream.onError(th);
            this.done.countDown();
        } catch (Throwable th2) {
            this.done.countDown();
            throw th2;
        }
    }

    @Override // io.reactivex.FlowableSubscriber, m6.c
    public void onNext(T t6) {
        if (!this.checkSubscriptionOnce) {
            this.checkSubscriptionOnce = true;
            if (this.upstream.get() == null) {
                this.errors.add(new IllegalStateException("onSubscribe not called in proper order"));
            }
        }
        this.lastThread = Thread.currentThread();
        if (this.establishedFusionMode != 2) {
            this.values.add(t6);
            if (t6 == null) {
                this.errors.add(new NullPointerException("onNext received a null value"));
            }
            this.downstream.onNext(t6);
            return;
        }
        while (true) {
            try {
                T poll = this.qs.poll();
                if (poll == null) {
                    return;
                } else {
                    this.values.add(poll);
                }
            } catch (Throwable th) {
                this.errors.add(th);
                this.qs.cancel();
                return;
            }
        }
    }

    public void onStart() {
    }

    @Override // io.reactivex.FlowableSubscriber, m6.c
    public void onSubscribe(d dVar) {
        this.lastThread = Thread.currentThread();
        if (dVar == null) {
            this.errors.add(new NullPointerException("onSubscribe received a null Subscription"));
            return;
        }
        AtomicReference<d> atomicReference = this.upstream;
        while (!atomicReference.compareAndSet(null, dVar)) {
            if (atomicReference.get() != null) {
                dVar.cancel();
                if (this.upstream.get() != SubscriptionHelper.CANCELLED) {
                    this.errors.add(new IllegalStateException("onSubscribe received multiple subscriptions: " + dVar));
                    return;
                }
                return;
            }
        }
        int i2 = this.initialFusionMode;
        if (i2 != 0 && (dVar instanceof QueueSubscription)) {
            QueueSubscription<T> queueSubscription = (QueueSubscription) dVar;
            this.qs = queueSubscription;
            int requestFusion = queueSubscription.requestFusion(i2);
            this.establishedFusionMode = requestFusion;
            if (requestFusion == 1) {
                this.checkSubscriptionOnce = true;
                this.lastThread = Thread.currentThread();
                while (true) {
                    try {
                        T poll = this.qs.poll();
                        if (poll == null) {
                            this.completions++;
                            return;
                        }
                        this.values.add(poll);
                    } catch (Throwable th) {
                        this.errors.add(th);
                        return;
                    }
                }
            }
        }
        this.downstream.onSubscribe(dVar);
        long andSet = this.missedRequested.getAndSet(0L);
        if (andSet != 0) {
            dVar.request(andSet);
        }
        onStart();
    }

    @Override // m6.d
    public final void request(long j7) {
        SubscriptionHelper.deferredRequest(this.upstream, this.missedRequested, j7);
    }

    public final TestSubscriber<T> requestMore(long j7) {
        request(j7);
        return this;
    }

    public final TestSubscriber<T> setInitialFusionMode(int i2) {
        this.initialFusionMode = i2;
        return this;
    }

    public TestSubscriber(long j7) {
        this(EmptySubscriber.INSTANCE, j7);
    }

    public static <T> TestSubscriber<T> create(long j7) {
        return new TestSubscriber<>(j7);
    }

    @Override // io.reactivex.observers.BaseTestConsumer
    public final TestSubscriber<T> assertNotSubscribed() {
        if (this.upstream.get() != null) {
            throw fail("Subscribed!");
        }
        if (this.errors.isEmpty()) {
            return this;
        }
        throw fail("Not subscribed but errors found");
    }

    @Override // io.reactivex.observers.BaseTestConsumer
    public final TestSubscriber<T> assertSubscribed() {
        if (this.upstream.get() != null) {
            return this;
        }
        throw fail("Not subscribed!");
    }

    public TestSubscriber(c cVar) {
        this(cVar, Long.MAX_VALUE);
    }

    public static <T> TestSubscriber<T> create(c cVar) {
        return new TestSubscriber<>(cVar);
    }

    public TestSubscriber(c cVar, long j7) {
        if (j7 >= 0) {
            this.downstream = cVar;
            this.upstream = new AtomicReference<>();
            this.missedRequested = new AtomicLong(j7);
            return;
        }
        throw new IllegalArgumentException("Negative initial request not allowed");
    }

    public enum EmptySubscriber implements FlowableSubscriber<Object> {
        INSTANCE;

        @Override // io.reactivex.FlowableSubscriber, m6.c
        public void onComplete() {
        }

        @Override // io.reactivex.FlowableSubscriber, m6.c
        public void onError(Throwable th) {
        }

        @Override // io.reactivex.FlowableSubscriber, m6.c
        public void onNext(Object obj) {
        }

        @Override // io.reactivex.FlowableSubscriber, m6.c
        public void onSubscribe(d dVar) {
        }
    }
}
