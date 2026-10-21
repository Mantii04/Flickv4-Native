package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import m6.b;
import m6.c;
import m6.d;

/* loaded from: classes2.dex */
public final class FlowableAmb<T> extends Flowable<T> {
    final b[] sources;
    final Iterable<? extends b> sourcesIterable;

    public static final class AmbCoordinator<T> implements d {
        final c downstream;
        final AmbInnerSubscriber<T>[] subscribers;
        final AtomicInteger winner = new AtomicInteger();

        public AmbCoordinator(c cVar, int i2) {
            this.downstream = cVar;
            this.subscribers = new AmbInnerSubscriber[i2];
        }

        @Override // m6.d
        public void cancel() {
            if (this.winner.get() != -1) {
                this.winner.lazySet(-1);
                for (AmbInnerSubscriber<T> ambInnerSubscriber : this.subscribers) {
                    ambInnerSubscriber.cancel();
                }
            }
        }

        @Override // m6.d
        public void request(long j7) {
            if (SubscriptionHelper.validate(j7)) {
                int i2 = this.winner.get();
                if (i2 > 0) {
                    this.subscribers[i2 - 1].request(j7);
                    return;
                }
                if (i2 == 0) {
                    for (AmbInnerSubscriber<T> ambInnerSubscriber : this.subscribers) {
                        ambInnerSubscriber.request(j7);
                    }
                }
            }
        }

        public void subscribe(b[] bVarArr) {
            AmbInnerSubscriber<T>[] ambInnerSubscriberArr = this.subscribers;
            int length = ambInnerSubscriberArr.length;
            int i2 = 0;
            while (i2 < length) {
                int i7 = i2 + 1;
                ambInnerSubscriberArr[i2] = new AmbInnerSubscriber<>(this, i7, this.downstream);
                i2 = i7;
            }
            this.winner.lazySet(0);
            this.downstream.onSubscribe(this);
            for (int i8 = 0; i8 < length && this.winner.get() == 0; i8++) {
                bVarArr[i8].subscribe(ambInnerSubscriberArr[i8]);
            }
        }

        public boolean win(int i2) {
            int i7 = 0;
            if (this.winner.get() != 0 || !this.winner.compareAndSet(0, i2)) {
                return false;
            }
            AmbInnerSubscriber<T>[] ambInnerSubscriberArr = this.subscribers;
            int length = ambInnerSubscriberArr.length;
            while (i7 < length) {
                int i8 = i7 + 1;
                if (i8 != i2) {
                    ambInnerSubscriberArr[i7].cancel();
                }
                i7 = i8;
            }
            return true;
        }
    }

    public static final class AmbInnerSubscriber<T> extends AtomicReference<d> implements FlowableSubscriber<T>, d {
        private static final long serialVersionUID = -1185974347409665484L;
        final c downstream;
        final int index;
        final AtomicLong missedRequested = new AtomicLong();
        final AmbCoordinator<T> parent;
        boolean won;

        public AmbInnerSubscriber(AmbCoordinator<T> ambCoordinator, int i2, c cVar) {
            this.parent = ambCoordinator;
            this.index = i2;
            this.downstream = cVar;
        }

        @Override // m6.d
        public void cancel() {
            SubscriptionHelper.cancel(this);
        }

        @Override // io.reactivex.FlowableSubscriber, m6.c
        public void onComplete() {
            if (this.won) {
                this.downstream.onComplete();
            } else if (!this.parent.win(this.index)) {
                get().cancel();
            } else {
                this.won = true;
                this.downstream.onComplete();
            }
        }

        @Override // io.reactivex.FlowableSubscriber, m6.c
        public void onError(Throwable th) {
            if (this.won) {
                this.downstream.onError(th);
            } else if (this.parent.win(this.index)) {
                this.won = true;
                this.downstream.onError(th);
            } else {
                get().cancel();
                RxJavaPlugins.onError(th);
            }
        }

        @Override // io.reactivex.FlowableSubscriber, m6.c
        public void onNext(T t6) {
            if (this.won) {
                this.downstream.onNext(t6);
            } else if (!this.parent.win(this.index)) {
                get().cancel();
            } else {
                this.won = true;
                this.downstream.onNext(t6);
            }
        }

        @Override // io.reactivex.FlowableSubscriber, m6.c
        public void onSubscribe(d dVar) {
            SubscriptionHelper.deferredSetOnce(this, this.missedRequested, dVar);
        }

        @Override // m6.d
        public void request(long j7) {
            SubscriptionHelper.deferredRequest(this, this.missedRequested, j7);
        }
    }

    public FlowableAmb(b[] bVarArr, Iterable<? extends b> iterable) {
        this.sources = bVarArr;
        this.sourcesIterable = iterable;
    }

    @Override // io.reactivex.Flowable
    public void subscribeActual(c cVar) {
        int length;
        b[] bVarArr = this.sources;
        if (bVarArr == null) {
            bVarArr = new b[8];
            try {
                length = 0;
                for (b bVar : this.sourcesIterable) {
                    if (bVar == null) {
                        EmptySubscription.error(new NullPointerException("One of the sources is null"), cVar);
                        return;
                    }
                    if (length == bVarArr.length) {
                        b[] bVarArr2 = new b[(length >> 2) + length];
                        System.arraycopy(bVarArr, 0, bVarArr2, 0, length);
                        bVarArr = bVarArr2;
                    }
                    int i2 = length + 1;
                    bVarArr[length] = bVar;
                    length = i2;
                }
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                EmptySubscription.error(th, cVar);
                return;
            }
        } else {
            length = bVarArr.length;
        }
        if (length == 0) {
            EmptySubscription.complete(cVar);
        } else if (length == 1) {
            bVarArr[0].subscribe(cVar);
        } else {
            new AmbCoordinator(cVar, length).subscribe(bVarArr);
        }
    }
}
