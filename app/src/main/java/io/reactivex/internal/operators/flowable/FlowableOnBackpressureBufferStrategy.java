package io.reactivex.internal.operators.flowable;

import io.reactivex.BackpressureOverflowStrategy;
import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.functions.Action;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import m6.c;
import m6.d;

/* loaded from: classes2.dex */
public final class FlowableOnBackpressureBufferStrategy<T> extends AbstractFlowableWithUpstream<T, T> {
    final long bufferSize;
    final Action onOverflow;
    final BackpressureOverflowStrategy strategy;

    /* renamed from: io.reactivex.internal.operators.flowable.FlowableOnBackpressureBufferStrategy$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$io$reactivex$BackpressureOverflowStrategy;

        static {
            int[] iArr = new int[BackpressureOverflowStrategy.values().length];
            $SwitchMap$io$reactivex$BackpressureOverflowStrategy = iArr;
            try {
                iArr[BackpressureOverflowStrategy.DROP_LATEST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$reactivex$BackpressureOverflowStrategy[BackpressureOverflowStrategy.DROP_OLDEST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static final class OnBackpressureBufferStrategySubscriber<T> extends AtomicInteger implements FlowableSubscriber<T>, d {
        private static final long serialVersionUID = 3240706908776709697L;
        final long bufferSize;
        volatile boolean cancelled;
        volatile boolean done;
        final c downstream;
        Throwable error;
        final Action onOverflow;
        final BackpressureOverflowStrategy strategy;
        d upstream;
        final AtomicLong requested = new AtomicLong();
        final Deque<T> deque = new ArrayDeque();

        public OnBackpressureBufferStrategySubscriber(c cVar, Action action, BackpressureOverflowStrategy backpressureOverflowStrategy, long j7) {
            this.downstream = cVar;
            this.onOverflow = action;
            this.strategy = backpressureOverflowStrategy;
            this.bufferSize = j7;
        }

        @Override // m6.d
        public void cancel() {
            this.cancelled = true;
            this.upstream.cancel();
            if (getAndIncrement() == 0) {
                clear(this.deque);
            }
        }

        public void clear(Deque<T> deque) {
            synchronized (deque) {
                deque.clear();
            }
        }

        public void drain() {
            boolean isEmpty;
            T poll;
            if (getAndIncrement() != 0) {
                return;
            }
            Deque<T> deque = this.deque;
            c cVar = this.downstream;
            int i2 = 1;
            do {
                long j7 = this.requested.get();
                long j8 = 0;
                while (j8 != j7) {
                    if (this.cancelled) {
                        clear(deque);
                        return;
                    }
                    boolean z6 = this.done;
                    synchronized (deque) {
                        poll = deque.poll();
                    }
                    boolean z7 = poll == null;
                    if (z6) {
                        Throwable th = this.error;
                        if (th != null) {
                            clear(deque);
                            cVar.onError(th);
                            return;
                        } else if (z7) {
                            cVar.onComplete();
                            return;
                        }
                    }
                    if (z7) {
                        break;
                    }
                    cVar.onNext(poll);
                    j8++;
                }
                if (j8 == j7) {
                    if (this.cancelled) {
                        clear(deque);
                        return;
                    }
                    boolean z8 = this.done;
                    synchronized (deque) {
                        isEmpty = deque.isEmpty();
                    }
                    if (z8) {
                        Throwable th2 = this.error;
                        if (th2 != null) {
                            clear(deque);
                            cVar.onError(th2);
                            return;
                        } else if (isEmpty) {
                            cVar.onComplete();
                            return;
                        }
                    }
                }
                if (j8 != 0) {
                    BackpressureHelper.produced(this.requested, j8);
                }
                i2 = addAndGet(-i2);
            } while (i2 != 0);
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
            boolean z6;
            boolean z7;
            if (this.done) {
                return;
            }
            Deque<T> deque = this.deque;
            synchronized (deque) {
                try {
                    z6 = false;
                    if (deque.size() == this.bufferSize) {
                        int i2 = AnonymousClass1.$SwitchMap$io$reactivex$BackpressureOverflowStrategy[this.strategy.ordinal()];
                        z7 = true;
                        if (i2 == 1) {
                            deque.pollLast();
                            deque.offer(t6);
                        } else if (i2 == 2) {
                            deque.poll();
                            deque.offer(t6);
                        }
                        z7 = false;
                        z6 = true;
                    } else {
                        deque.offer(t6);
                        z7 = false;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (!z6) {
                if (!z7) {
                    drain();
                    return;
                } else {
                    this.upstream.cancel();
                    onError(new MissingBackpressureException());
                    return;
                }
            }
            Action action = this.onOverflow;
            if (action != null) {
                try {
                    action.run();
                } catch (Throwable th2) {
                    Exceptions.throwIfFatal(th2);
                    this.upstream.cancel();
                    onError(th2);
                }
            }
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
    }

    public FlowableOnBackpressureBufferStrategy(Flowable<T> flowable, long j7, Action action, BackpressureOverflowStrategy backpressureOverflowStrategy) {
        super(flowable);
        this.bufferSize = j7;
        this.onOverflow = action;
        this.strategy = backpressureOverflowStrategy;
    }

    @Override // io.reactivex.Flowable
    public void subscribeActual(c cVar) {
        this.source.subscribe((FlowableSubscriber) new OnBackpressureBufferStrategySubscriber(cVar, this.onOverflow, this.strategy, this.bufferSize));
    }
}
