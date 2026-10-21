package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.BiFunction;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.plugins.RxJavaPlugins;
import m6.c;
import m6.d;

/* loaded from: classes2.dex */
public final class FlowableScan<T> extends AbstractFlowableWithUpstream<T, T> {
    final BiFunction<T, T, T> accumulator;

    public static final class ScanSubscriber<T> implements FlowableSubscriber<T>, d {
        final BiFunction<T, T, T> accumulator;
        boolean done;
        final c downstream;
        d upstream;
        T value;

        public ScanSubscriber(c cVar, BiFunction<T, T, T> biFunction) {
            this.downstream = cVar;
            this.accumulator = biFunction;
        }

        @Override // m6.d
        public void cancel() {
            this.upstream.cancel();
        }

        @Override // io.reactivex.FlowableSubscriber, m6.c
        public void onComplete() {
            if (this.done) {
                return;
            }
            this.done = true;
            this.downstream.onComplete();
        }

        @Override // io.reactivex.FlowableSubscriber, m6.c
        public void onError(Throwable th) {
            if (this.done) {
                RxJavaPlugins.onError(th);
            } else {
                this.done = true;
                this.downstream.onError(th);
            }
        }

        @Override // io.reactivex.FlowableSubscriber, m6.c
        public void onNext(T t6) {
            if (this.done) {
                return;
            }
            c cVar = this.downstream;
            T t7 = this.value;
            if (t7 == null) {
                this.value = t6;
                cVar.onNext(t6);
                return;
            }
            try {
                T t8 = (T) ObjectHelper.requireNonNull(this.accumulator.apply(t7, t6), "The value returned by the accumulator is null");
                this.value = t8;
                cVar.onNext(t8);
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
            }
        }

        @Override // m6.d
        public void request(long j7) {
            this.upstream.request(j7);
        }
    }

    public FlowableScan(Flowable<T> flowable, BiFunction<T, T, T> biFunction) {
        super(flowable);
        this.accumulator = biFunction;
    }

    @Override // io.reactivex.Flowable
    public void subscribeActual(c cVar) {
        this.source.subscribe((FlowableSubscriber) new ScanSubscriber(cVar, this.accumulator));
    }
}
