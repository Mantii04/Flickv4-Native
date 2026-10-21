package io.reactivex.internal.operators.observable;

import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.SequentialDisposable;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes2.dex */
public final class ObservableRepeat<T> extends AbstractObservableWithUpstream<T, T> {
    final long count;

    public static final class RepeatObserver<T> extends AtomicInteger implements Observer<T> {
        private static final long serialVersionUID = -7098360935104053232L;
        final Observer<? super T> downstream;
        long remaining;
        final SequentialDisposable sd;
        final ObservableSource<? extends T> source;

        public RepeatObserver(Observer<? super T> observer, long j7, SequentialDisposable sequentialDisposable, ObservableSource<? extends T> observableSource) {
            this.downstream = observer;
            this.sd = sequentialDisposable;
            this.source = observableSource;
            this.remaining = j7;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            long j7 = this.remaining;
            if (j7 != Long.MAX_VALUE) {
                this.remaining = j7 - 1;
            }
            if (j7 != 0) {
                subscribeNext();
            } else {
                this.downstream.onComplete();
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.downstream.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t6) {
            this.downstream.onNext(t6);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            this.sd.replace(disposable);
        }

        public void subscribeNext() {
            if (getAndIncrement() == 0) {
                int i2 = 1;
                while (!this.sd.isDisposed()) {
                    this.source.subscribe(this);
                    i2 = addAndGet(-i2);
                    if (i2 == 0) {
                        return;
                    }
                }
            }
        }
    }

    public ObservableRepeat(Observable<T> observable, long j7) {
        super(observable);
        this.count = j7;
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super T> observer) {
        SequentialDisposable sequentialDisposable = new SequentialDisposable();
        observer.onSubscribe(sequentialDisposable);
        long j7 = this.count;
        new RepeatObserver(observer, j7 != Long.MAX_VALUE ? j7 - 1 : Long.MAX_VALUE, sequentialDisposable, this.source).subscribeNext();
    }
}
