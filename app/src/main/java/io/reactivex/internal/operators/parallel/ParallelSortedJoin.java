package io.reactivex.internal.operators.parallel;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.parallel.ParallelFlowable;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import m6.c;
import m6.d;

/* loaded from: classes2.dex */
public final class ParallelSortedJoin<T> extends Flowable<T> {
    final Comparator<? super T> comparator;
    final ParallelFlowable<List<T>> source;

    public static final class SortedJoinInnerSubscriber<T> extends AtomicReference<d> implements FlowableSubscriber<List<T>> {
        private static final long serialVersionUID = 6751017204873808094L;
        final int index;
        final SortedJoinSubscription<T> parent;

        public SortedJoinInnerSubscriber(SortedJoinSubscription<T> sortedJoinSubscription, int i2) {
            this.parent = sortedJoinSubscription;
            this.index = i2;
        }

        public void cancel() {
            SubscriptionHelper.cancel(this);
        }

        @Override // io.reactivex.FlowableSubscriber, m6.c
        public void onComplete() {
        }

        @Override // io.reactivex.FlowableSubscriber, m6.c
        public void onError(Throwable th) {
            this.parent.innerError(th);
        }

        @Override // io.reactivex.FlowableSubscriber, m6.c
        public void onSubscribe(d dVar) {
            SubscriptionHelper.setOnce(this, dVar, Long.MAX_VALUE);
        }

        @Override // io.reactivex.FlowableSubscriber, m6.c
        public void onNext(List<T> list) {
            this.parent.innerNext(list, this.index);
        }
    }

    public static final class SortedJoinSubscription<T> extends AtomicInteger implements d {
        private static final long serialVersionUID = 3481980673745556697L;
        volatile boolean cancelled;
        final Comparator<? super T> comparator;
        final c downstream;
        final int[] indexes;
        final List<T>[] lists;
        final SortedJoinInnerSubscriber<T>[] subscribers;
        final AtomicLong requested = new AtomicLong();
        final AtomicInteger remaining = new AtomicInteger();
        final AtomicReference<Throwable> error = new AtomicReference<>();

        public SortedJoinSubscription(c cVar, int i2, Comparator<? super T> comparator) {
            this.downstream = cVar;
            this.comparator = comparator;
            SortedJoinInnerSubscriber<T>[] sortedJoinInnerSubscriberArr = new SortedJoinInnerSubscriber[i2];
            for (int i7 = 0; i7 < i2; i7++) {
                sortedJoinInnerSubscriberArr[i7] = new SortedJoinInnerSubscriber<>(this, i7);
            }
            this.subscribers = sortedJoinInnerSubscriberArr;
            this.lists = new List[i2];
            this.indexes = new int[i2];
            this.remaining.lazySet(i2);
        }

        @Override // m6.d
        public void cancel() {
            if (this.cancelled) {
                return;
            }
            this.cancelled = true;
            cancelAll();
            if (getAndIncrement() == 0) {
                Arrays.fill(this.lists, (Object) null);
            }
        }

        public void cancelAll() {
            for (SortedJoinInnerSubscriber<T> sortedJoinInnerSubscriber : this.subscribers) {
                sortedJoinInnerSubscriber.cancel();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:56:0x00b2, code lost:
        
            if (r11 != r7) goto L62;
         */
        /* JADX WARN: Code restructure failed: missing block: B:58:0x00b6, code lost:
        
            if (r19.cancelled == false) goto L51;
         */
        /* JADX WARN: Code restructure failed: missing block: B:59:0x00bd, code lost:
        
            r5 = r19.error.get();
         */
        /* JADX WARN: Code restructure failed: missing block: B:60:0x00c6, code lost:
        
            if (r5 == null) goto L55;
         */
        /* JADX WARN: Code restructure failed: missing block: B:61:0x00d2, code lost:
        
            if (r14 >= r4) goto L77;
         */
        /* JADX WARN: Code restructure failed: missing block: B:63:0x00dc, code lost:
        
            if (r0[r14] == r3[r14].size()) goto L59;
         */
        /* JADX WARN: Code restructure failed: missing block: B:64:0x00df, code lost:
        
            r14 = r14 + 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:67:0x00e2, code lost:
        
            java.util.Arrays.fill(r3, (java.lang.Object) null);
            r2.onComplete();
         */
        /* JADX WARN: Code restructure failed: missing block: B:68:0x00e9, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:70:0x00c8, code lost:
        
            cancelAll();
            java.util.Arrays.fill(r3, (java.lang.Object) null);
            r2.onError(r5);
         */
        /* JADX WARN: Code restructure failed: missing block: B:71:0x00d1, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:73:0x00b8, code lost:
        
            java.util.Arrays.fill(r3, (java.lang.Object) null);
         */
        /* JADX WARN: Code restructure failed: missing block: B:74:0x00bc, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:76:0x00ec, code lost:
        
            if (r11 == 0) goto L67;
         */
        /* JADX WARN: Code restructure failed: missing block: B:78:0x00f5, code lost:
        
            if (r7 == Long.MAX_VALUE) goto L67;
         */
        /* JADX WARN: Code restructure failed: missing block: B:79:0x00f7, code lost:
        
            r19.requested.addAndGet(-r11);
         */
        /* JADX WARN: Code restructure failed: missing block: B:80:0x00fd, code lost:
        
            r5 = get();
         */
        /* JADX WARN: Code restructure failed: missing block: B:81:0x0101, code lost:
        
            if (r5 != r6) goto L82;
         */
        /* JADX WARN: Code restructure failed: missing block: B:82:0x0103, code lost:
        
            r5 = addAndGet(-r6);
         */
        /* JADX WARN: Code restructure failed: missing block: B:83:0x0108, code lost:
        
            if (r5 != 0) goto L83;
         */
        /* JADX WARN: Code restructure failed: missing block: B:85:?, code lost:
        
            return;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void drain() {
            /*
                Method dump skipped, instructions count: 270
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.parallel.ParallelSortedJoin.SortedJoinSubscription.drain():void");
        }

        public void innerError(Throwable th) {
            AtomicReference<Throwable> atomicReference = this.error;
            while (!atomicReference.compareAndSet(null, th)) {
                if (atomicReference.get() != null) {
                    if (th != this.error.get()) {
                        RxJavaPlugins.onError(th);
                        return;
                    }
                    return;
                }
            }
            drain();
        }

        public void innerNext(List<T> list, int i2) {
            this.lists[i2] = list;
            if (this.remaining.decrementAndGet() == 0) {
                drain();
            }
        }

        @Override // m6.d
        public void request(long j7) {
            if (SubscriptionHelper.validate(j7)) {
                BackpressureHelper.add(this.requested, j7);
                if (this.remaining.get() == 0) {
                    drain();
                }
            }
        }
    }

    public ParallelSortedJoin(ParallelFlowable<List<T>> parallelFlowable, Comparator<? super T> comparator) {
        this.source = parallelFlowable;
        this.comparator = comparator;
    }

    @Override // io.reactivex.Flowable
    public void subscribeActual(c cVar) {
        SortedJoinSubscription sortedJoinSubscription = new SortedJoinSubscription(cVar, this.source.parallelism(), this.comparator);
        cVar.onSubscribe(sortedJoinSubscription);
        this.source.subscribe(sortedJoinSubscription.subscribers);
    }
}
