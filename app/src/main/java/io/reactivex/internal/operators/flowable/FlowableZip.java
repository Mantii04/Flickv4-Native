package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.functions.Function;
import io.reactivex.internal.fuseable.QueueSubscription;
import io.reactivex.internal.fuseable.SimpleQueue;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import m6.b;
import m6.c;
import m6.d;

/* loaded from: classes2.dex */
public final class FlowableZip<T, R> extends Flowable<R> {
    final int bufferSize;
    final boolean delayError;
    final b[] sources;
    final Iterable<? extends b> sourcesIterable;
    final Function<? super Object[], ? extends R> zipper;

    public static final class ZipCoordinator<T, R> extends AtomicInteger implements d {
        private static final long serialVersionUID = -2434867452883857743L;
        volatile boolean cancelled;
        final Object[] current;
        final boolean delayErrors;
        final c downstream;
        final AtomicThrowable errors;
        final AtomicLong requested;
        final ZipSubscriber<T, R>[] subscribers;
        final Function<? super Object[], ? extends R> zipper;

        public ZipCoordinator(c cVar, Function<? super Object[], ? extends R> function, int i2, int i7, boolean z6) {
            this.downstream = cVar;
            this.zipper = function;
            this.delayErrors = z6;
            ZipSubscriber<T, R>[] zipSubscriberArr = new ZipSubscriber[i2];
            for (int i8 = 0; i8 < i2; i8++) {
                zipSubscriberArr[i8] = new ZipSubscriber<>(this, i7);
            }
            this.current = new Object[i2];
            this.subscribers = zipSubscriberArr;
            this.requested = new AtomicLong();
            this.errors = new AtomicThrowable();
        }

        @Override // m6.d
        public void cancel() {
            if (this.cancelled) {
                return;
            }
            this.cancelled = true;
            cancelAll();
        }

        public void cancelAll() {
            for (ZipSubscriber<T, R> zipSubscriber : this.subscribers) {
                zipSubscriber.cancel();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:101:0x0140, code lost:
        
            io.reactivex.exceptions.Exceptions.throwIfFatal(r0);
            r20.errors.addThrowable(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:102:0x014a, code lost:
        
            if (r20.delayErrors == false) goto L112;
         */
        /* JADX WARN: Code restructure failed: missing block: B:104:0x014c, code lost:
        
            cancelAll();
            r2.onError(r20.errors.terminate());
         */
        /* JADX WARN: Code restructure failed: missing block: B:105:0x0158, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:110:?, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:112:0x015e, code lost:
        
            if (r12 == r17) goto L100;
         */
        /* JADX WARN: Code restructure failed: missing block: B:113:0x0160, code lost:
        
            r0 = r3.length;
            r6 = 0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:114:0x0163, code lost:
        
            if (r6 >= r0) goto L128;
         */
        /* JADX WARN: Code restructure failed: missing block: B:115:0x0165, code lost:
        
            r3[r6].request(r12);
            r6 = r6 + 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:118:0x0174, code lost:
        
            if (r8 == Long.MAX_VALUE) goto L100;
         */
        /* JADX WARN: Code restructure failed: missing block: B:119:0x0176, code lost:
        
            r20.requested.addAndGet(-r12);
         */
        /* JADX WARN: Code restructure failed: missing block: B:120:0x017c, code lost:
        
            r7 = addAndGet(-r7);
         */
        /* JADX WARN: Code restructure failed: missing block: B:63:0x00dd, code lost:
        
            if (r8 != r12) goto L92;
         */
        /* JADX WARN: Code restructure failed: missing block: B:65:0x00e1, code lost:
        
            if (r20.cancelled == false) goto L59;
         */
        /* JADX WARN: Code restructure failed: missing block: B:67:0x00e7, code lost:
        
            if (r20.delayErrors != false) goto L65;
         */
        /* JADX WARN: Code restructure failed: missing block: B:69:0x00ef, code lost:
        
            if (r20.errors.get() == null) goto L65;
         */
        /* JADX WARN: Code restructure failed: missing block: B:71:0x00f1, code lost:
        
            cancelAll();
            r2.onError(r20.errors.terminate());
         */
        /* JADX WARN: Code restructure failed: missing block: B:72:0x00fd, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:73:0x00fe, code lost:
        
            r6 = 0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:74:0x0100, code lost:
        
            if (r6 >= r4) goto L123;
         */
        /* JADX WARN: Code restructure failed: missing block: B:75:0x0102, code lost:
        
            r0 = r3[r6];
         */
        /* JADX WARN: Code restructure failed: missing block: B:76:0x0106, code lost:
        
            if (r5[r6] != null) goto L124;
         */
        /* JADX WARN: Code restructure failed: missing block: B:78:0x0108, code lost:
        
            r10 = r0.done;
            r0 = r0.queue;
         */
        /* JADX WARN: Code restructure failed: missing block: B:79:0x010c, code lost:
        
            if (r0 == null) goto L74;
         */
        /* JADX WARN: Code restructure failed: missing block: B:80:0x010e, code lost:
        
            r0 = r0.poll();
         */
        /* JADX WARN: Code restructure failed: missing block: B:81:0x0116, code lost:
        
            if (r0 != null) goto L77;
         */
        /* JADX WARN: Code restructure failed: missing block: B:82:0x0118, code lost:
        
            r11 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:83:0x011c, code lost:
        
            if (r10 == false) goto L84;
         */
        /* JADX WARN: Code restructure failed: missing block: B:84:0x011e, code lost:
        
            if (r11 == false) goto L84;
         */
        /* JADX WARN: Code restructure failed: missing block: B:86:0x0120, code lost:
        
            cancelAll();
         */
        /* JADX WARN: Code restructure failed: missing block: B:87:0x012b, code lost:
        
            if (r20.errors.get() == null) goto L83;
         */
        /* JADX WARN: Code restructure failed: missing block: B:88:0x012d, code lost:
        
            r2.onError(r20.errors.terminate());
         */
        /* JADX WARN: Code restructure failed: missing block: B:89:?, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:90:0x0137, code lost:
        
            r2.onComplete();
         */
        /* JADX WARN: Code restructure failed: missing block: B:91:?, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:92:0x013b, code lost:
        
            if (r11 != false) goto L125;
         */
        /* JADX WARN: Code restructure failed: missing block: B:93:0x013d, code lost:
        
            r5[r6] = r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:95:0x0159, code lost:
        
            r6 = r6 + 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:97:0x011a, code lost:
        
            r11 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:98:0x0115, code lost:
        
            r0 = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:99:0x0113, code lost:
        
            r0 = move-exception;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void drain() {
            /*
                Method dump skipped, instructions count: 388
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowableZip.ZipCoordinator.drain():void");
        }

        public void error(ZipSubscriber<T, R> zipSubscriber, Throwable th) {
            if (!this.errors.addThrowable(th)) {
                RxJavaPlugins.onError(th);
            } else {
                zipSubscriber.done = true;
                drain();
            }
        }

        @Override // m6.d
        public void request(long j7) {
            if (SubscriptionHelper.validate(j7)) {
                BackpressureHelper.add(this.requested, j7);
                drain();
            }
        }

        public void subscribe(b[] bVarArr, int i2) {
            ZipSubscriber<T, R>[] zipSubscriberArr = this.subscribers;
            for (int i7 = 0; i7 < i2 && !this.cancelled; i7++) {
                if (!this.delayErrors && this.errors.get() != null) {
                    return;
                }
                bVarArr[i7].subscribe(zipSubscriberArr[i7]);
            }
        }
    }

    public static final class ZipSubscriber<T, R> extends AtomicReference<d> implements FlowableSubscriber<T>, d {
        private static final long serialVersionUID = -4627193790118206028L;
        volatile boolean done;
        final int limit;
        final ZipCoordinator<T, R> parent;
        final int prefetch;
        long produced;
        SimpleQueue<T> queue;
        int sourceMode;

        public ZipSubscriber(ZipCoordinator<T, R> zipCoordinator, int i2) {
            this.parent = zipCoordinator;
            this.prefetch = i2;
            this.limit = i2 - (i2 >> 2);
        }

        @Override // m6.d
        public void cancel() {
            SubscriptionHelper.cancel(this);
        }

        @Override // io.reactivex.FlowableSubscriber, m6.c
        public void onComplete() {
            this.done = true;
            this.parent.drain();
        }

        @Override // io.reactivex.FlowableSubscriber, m6.c
        public void onError(Throwable th) {
            this.parent.error(this, th);
        }

        @Override // io.reactivex.FlowableSubscriber, m6.c
        public void onNext(T t6) {
            if (this.sourceMode != 2) {
                this.queue.offer(t6);
            }
            this.parent.drain();
        }

        @Override // io.reactivex.FlowableSubscriber, m6.c
        public void onSubscribe(d dVar) {
            if (SubscriptionHelper.setOnce(this, dVar)) {
                if (dVar instanceof QueueSubscription) {
                    QueueSubscription queueSubscription = (QueueSubscription) dVar;
                    int requestFusion = queueSubscription.requestFusion(7);
                    if (requestFusion == 1) {
                        this.sourceMode = requestFusion;
                        this.queue = queueSubscription;
                        this.done = true;
                        this.parent.drain();
                        return;
                    }
                    if (requestFusion == 2) {
                        this.sourceMode = requestFusion;
                        this.queue = queueSubscription;
                        dVar.request(this.prefetch);
                        return;
                    }
                }
                this.queue = new SpscArrayQueue(this.prefetch);
                dVar.request(this.prefetch);
            }
        }

        @Override // m6.d
        public void request(long j7) {
            if (this.sourceMode != 1) {
                long j8 = this.produced + j7;
                if (j8 < this.limit) {
                    this.produced = j8;
                } else {
                    this.produced = 0L;
                    get().request(j8);
                }
            }
        }
    }

    public FlowableZip(b[] bVarArr, Iterable<? extends b> iterable, Function<? super Object[], ? extends R> function, int i2, boolean z6) {
        this.sources = bVarArr;
        this.sourcesIterable = iterable;
        this.zipper = function;
        this.bufferSize = i2;
        this.delayError = z6;
    }

    @Override // io.reactivex.Flowable
    public void subscribeActual(c cVar) {
        int length;
        b[] bVarArr = this.sources;
        if (bVarArr == null) {
            bVarArr = new b[8];
            length = 0;
            for (b bVar : this.sourcesIterable) {
                if (length == bVarArr.length) {
                    b[] bVarArr2 = new b[(length >> 2) + length];
                    System.arraycopy(bVarArr, 0, bVarArr2, 0, length);
                    bVarArr = bVarArr2;
                }
                bVarArr[length] = bVar;
                length++;
            }
        } else {
            length = bVarArr.length;
        }
        int i2 = length;
        if (i2 == 0) {
            EmptySubscription.complete(cVar);
            return;
        }
        ZipCoordinator zipCoordinator = new ZipCoordinator(cVar, this.zipper, i2, this.bufferSize, this.delayError);
        cVar.onSubscribe(zipCoordinator);
        zipCoordinator.subscribe(bVarArr, i2);
    }
}
