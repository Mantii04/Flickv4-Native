package io.reactivex.internal.operators.mixed;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import m6.c;
import m6.d;

/* loaded from: classes2.dex */
public final class FlowableSwitchMapSingle<T, R> extends Flowable<R> {
    final boolean delayErrors;
    final Function<? super T, ? extends SingleSource<? extends R>> mapper;
    final Flowable<T> source;

    public static final class SwitchMapSingleSubscriber<T, R> extends AtomicInteger implements FlowableSubscriber<T>, d {
        static final SwitchMapSingleObserver<Object> INNER_DISPOSED = new SwitchMapSingleObserver<>(null);
        private static final long serialVersionUID = -5402190102429853762L;
        volatile boolean cancelled;
        final boolean delayErrors;
        volatile boolean done;
        final c downstream;
        long emitted;
        final Function<? super T, ? extends SingleSource<? extends R>> mapper;
        d upstream;
        final AtomicThrowable errors = new AtomicThrowable();
        final AtomicLong requested = new AtomicLong();
        final AtomicReference<SwitchMapSingleObserver<R>> inner = new AtomicReference<>();

        public static final class SwitchMapSingleObserver<R> extends AtomicReference<Disposable> implements SingleObserver<R> {
            private static final long serialVersionUID = 8042919737683345351L;
            volatile R item;
            final SwitchMapSingleSubscriber<?, R> parent;

            public SwitchMapSingleObserver(SwitchMapSingleSubscriber<?, R> switchMapSingleSubscriber) {
                this.parent = switchMapSingleSubscriber;
            }

            public void dispose() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.SingleObserver
            public void onError(Throwable th) {
                this.parent.innerError(this, th);
            }

            @Override // io.reactivex.SingleObserver
            public void onSubscribe(Disposable disposable) {
                DisposableHelper.setOnce(this, disposable);
            }

            @Override // io.reactivex.SingleObserver
            public void onSuccess(R r6) {
                this.item = r6;
                this.parent.drain();
            }
        }

        public SwitchMapSingleSubscriber(c cVar, Function<? super T, ? extends SingleSource<? extends R>> function, boolean z6) {
            this.downstream = cVar;
            this.mapper = function;
            this.delayErrors = z6;
        }

        @Override // m6.d
        public void cancel() {
            this.cancelled = true;
            this.upstream.cancel();
            disposeInner();
        }

        public void disposeInner() {
            AtomicReference<SwitchMapSingleObserver<R>> atomicReference = this.inner;
            SwitchMapSingleObserver<Object> switchMapSingleObserver = INNER_DISPOSED;
            SwitchMapSingleObserver<Object> switchMapSingleObserver2 = (SwitchMapSingleObserver) atomicReference.getAndSet(switchMapSingleObserver);
            if (switchMapSingleObserver2 == null || switchMapSingleObserver2 == switchMapSingleObserver) {
                return;
            }
            switchMapSingleObserver2.dispose();
        }

        public void drain() {
            if (getAndIncrement() != 0) {
                return;
            }
            c cVar = this.downstream;
            AtomicThrowable atomicThrowable = this.errors;
            AtomicReference<SwitchMapSingleObserver<R>> atomicReference = this.inner;
            AtomicLong atomicLong = this.requested;
            long j7 = this.emitted;
            int i2 = 1;
            while (!this.cancelled) {
                if (atomicThrowable.get() != null && !this.delayErrors) {
                    cVar.onError(atomicThrowable.terminate());
                    return;
                }
                boolean z6 = this.done;
                SwitchMapSingleObserver<R> switchMapSingleObserver = atomicReference.get();
                boolean z7 = switchMapSingleObserver == null;
                if (z6 && z7) {
                    Throwable terminate = atomicThrowable.terminate();
                    if (terminate != null) {
                        cVar.onError(terminate);
                        return;
                    } else {
                        cVar.onComplete();
                        return;
                    }
                }
                if (z7 || switchMapSingleObserver.item == null || j7 == atomicLong.get()) {
                    this.emitted = j7;
                    i2 = addAndGet(-i2);
                    if (i2 == 0) {
                        return;
                    }
                } else {
                    while (!atomicReference.compareAndSet(switchMapSingleObserver, null) && atomicReference.get() == switchMapSingleObserver) {
                    }
                    cVar.onNext(switchMapSingleObserver.item);
                    j7++;
                }
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:7:0x0027, code lost:
        
            io.reactivex.plugins.RxJavaPlugins.onError(r4);
         */
        /* JADX WARN: Code restructure failed: missing block: B:8:0x002a, code lost:
        
            return;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void innerError(io.reactivex.internal.operators.mixed.FlowableSwitchMapSingle.SwitchMapSingleSubscriber.SwitchMapSingleObserver<R> r3, java.lang.Throwable r4) {
            /*
                r2 = this;
                java.util.concurrent.atomic.AtomicReference<io.reactivex.internal.operators.mixed.FlowableSwitchMapSingle$SwitchMapSingleSubscriber$SwitchMapSingleObserver<R>> r0 = r2.inner
            L2:
                r1 = 0
                boolean r1 = r0.compareAndSet(r3, r1)
                if (r1 == 0) goto L21
                io.reactivex.internal.util.AtomicThrowable r3 = r2.errors
                boolean r3 = r3.addThrowable(r4)
                if (r3 == 0) goto L27
                boolean r3 = r2.delayErrors
                if (r3 != 0) goto L1d
                m6.d r3 = r2.upstream
                r3.cancel()
                r2.disposeInner()
            L1d:
                r2.drain()
                return
            L21:
                java.lang.Object r1 = r0.get()
                if (r1 == r3) goto L2
            L27:
                io.reactivex.plugins.RxJavaPlugins.onError(r4)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.mixed.FlowableSwitchMapSingle.SwitchMapSingleSubscriber.innerError(io.reactivex.internal.operators.mixed.FlowableSwitchMapSingle$SwitchMapSingleSubscriber$SwitchMapSingleObserver, java.lang.Throwable):void");
        }

        @Override // io.reactivex.FlowableSubscriber, m6.c
        public void onComplete() {
            this.done = true;
            drain();
        }

        @Override // io.reactivex.FlowableSubscriber, m6.c
        public void onError(Throwable th) {
            if (!this.errors.addThrowable(th)) {
                RxJavaPlugins.onError(th);
                return;
            }
            if (!this.delayErrors) {
                disposeInner();
            }
            this.done = true;
            drain();
        }

        @Override // io.reactivex.FlowableSubscriber, m6.c
        public void onNext(T t6) {
            SwitchMapSingleObserver<R> switchMapSingleObserver = this.inner.get();
            if (switchMapSingleObserver != null) {
                switchMapSingleObserver.dispose();
            }
            try {
                SingleSource singleSource = (SingleSource) ObjectHelper.requireNonNull(this.mapper.apply(t6), "The mapper returned a null SingleSource");
                SwitchMapSingleObserver<R> switchMapSingleObserver2 = new SwitchMapSingleObserver<>(this);
                while (true) {
                    SwitchMapSingleObserver<R> switchMapSingleObserver3 = this.inner.get();
                    if (switchMapSingleObserver3 == INNER_DISPOSED) {
                        return;
                    }
                    AtomicReference<SwitchMapSingleObserver<R>> atomicReference = this.inner;
                    while (!atomicReference.compareAndSet(switchMapSingleObserver3, switchMapSingleObserver2)) {
                        if (atomicReference.get() != switchMapSingleObserver3) {
                            break;
                        }
                    }
                    singleSource.subscribe(switchMapSingleObserver2);
                    return;
                }
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.upstream.cancel();
                this.inner.getAndSet(INNER_DISPOSED);
                onError(th);
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
            BackpressureHelper.add(this.requested, j7);
            drain();
        }
    }

    public FlowableSwitchMapSingle(Flowable<T> flowable, Function<? super T, ? extends SingleSource<? extends R>> function, boolean z6) {
        this.source = flowable;
        this.mapper = function;
        this.delayErrors = z6;
    }

    @Override // io.reactivex.Flowable
    public void subscribeActual(c cVar) {
        this.source.subscribe((FlowableSubscriber) new SwitchMapSingleSubscriber(cVar, this.mapper, this.delayErrors));
    }
}
