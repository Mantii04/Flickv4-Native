package io.reactivex.internal.operators.observable;

import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.annotations.Nullable;
import io.reactivex.internal.observers.BasicIntQueueDisposable;

/* loaded from: classes2.dex */
public final class ObservableRangeLong extends Observable<Long> {
    private final long count;
    private final long start;

    public static final class RangeDisposable extends BasicIntQueueDisposable<Long> {
        private static final long serialVersionUID = 396518478098735504L;
        final Observer<? super Long> downstream;
        final long end;
        boolean fused;
        long index;

        public RangeDisposable(Observer<? super Long> observer, long j7, long j8) {
            this.downstream = observer;
            this.index = j7;
            this.end = j8;
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public void clear() {
            this.index = this.end;
            lazySet(1);
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            set(1);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return get() != 0;
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public boolean isEmpty() {
            return this.index == this.end;
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public int requestFusion(int i2) {
            if ((i2 & 1) == 0) {
                return 0;
            }
            this.fused = true;
            return 1;
        }

        public void run() {
            if (this.fused) {
                return;
            }
            Observer<? super Long> observer = this.downstream;
            long j7 = this.end;
            for (long j8 = this.index; j8 != j7 && get() == 0; j8++) {
                observer.onNext(Long.valueOf(j8));
            }
            if (get() == 0) {
                lazySet(1);
                observer.onComplete();
            }
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @Nullable
        public Long poll() throws Exception {
            long j7 = this.index;
            if (j7 != this.end) {
                this.index = 1 + j7;
                return Long.valueOf(j7);
            }
            lazySet(1);
            return null;
        }
    }

    public ObservableRangeLong(long j7, long j8) {
        this.start = j7;
        this.count = j8;
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super Long> observer) {
        long j7 = this.start;
        RangeDisposable rangeDisposable = new RangeDisposable(observer, j7, this.count + j7);
        observer.onSubscribe(rangeDisposable);
        rangeDisposable.run();
    }
}
