package io.reactivex.internal.operators.flowable;

import io.reactivex.FlowableSubscriber;
import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.NoSuchElementException;
import m6.b;
import m6.d;

/* loaded from: classes2.dex */
public final class FlowableLastSingle<T> extends Single<T> {
    final T defaultItem;
    final b source;

    public static final class LastSubscriber<T> implements FlowableSubscriber<T>, Disposable {
        final T defaultItem;
        final SingleObserver<? super T> downstream;
        T item;
        d upstream;

        public LastSubscriber(SingleObserver<? super T> singleObserver, T t6) {
            this.downstream = singleObserver;
            this.defaultItem = t6;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.upstream.cancel();
            this.upstream = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.upstream == SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.FlowableSubscriber, m6.c
        public void onComplete() {
            this.upstream = SubscriptionHelper.CANCELLED;
            T t6 = this.item;
            if (t6 != null) {
                this.item = null;
                this.downstream.onSuccess(t6);
                return;
            }
            T t7 = this.defaultItem;
            if (t7 != null) {
                this.downstream.onSuccess(t7);
            } else {
                this.downstream.onError(new NoSuchElementException());
            }
        }

        @Override // io.reactivex.FlowableSubscriber, m6.c
        public void onError(Throwable th) {
            this.upstream = SubscriptionHelper.CANCELLED;
            this.item = null;
            this.downstream.onError(th);
        }

        @Override // io.reactivex.FlowableSubscriber, m6.c
        public void onNext(T t6) {
            this.item = t6;
        }

        @Override // io.reactivex.FlowableSubscriber, m6.c
        public void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.upstream, dVar)) {
                this.upstream = dVar;
                this.downstream.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }
    }

    public FlowableLastSingle(b bVar, T t6) {
        this.source = bVar;
        this.defaultItem = t6;
    }

    @Override // io.reactivex.Single
    public void subscribeActual(SingleObserver<? super T> singleObserver) {
        this.source.subscribe(new LastSubscriber(singleObserver, this.defaultItem));
    }
}
