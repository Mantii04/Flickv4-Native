package io.reactivex.internal.operators.flowable;

import A.i;
import io.reactivex.Flowable;
import io.reactivex.annotations.Nullable;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.fuseable.ConditionalSubscriber;
import io.reactivex.internal.subscriptions.BasicQueueSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BackpressureHelper;
import m6.c;

/* loaded from: classes2.dex */
public final class FlowableFromArray<T> extends Flowable<T> {
    final T[] array;

    public static final class ArrayConditionalSubscription<T> extends BaseArraySubscription<T> {
        private static final long serialVersionUID = 2587302975077663557L;
        final ConditionalSubscriber<? super T> downstream;

        public ArrayConditionalSubscription(ConditionalSubscriber<? super T> conditionalSubscriber, T[] tArr) {
            super(tArr);
            this.downstream = conditionalSubscriber;
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableFromArray.BaseArraySubscription
        public void fastPath() {
            T[] tArr = this.array;
            int length = tArr.length;
            ConditionalSubscriber<? super T> conditionalSubscriber = this.downstream;
            for (int i2 = this.index; i2 != length; i2++) {
                if (this.cancelled) {
                    return;
                }
                T t6 = tArr[i2];
                if (t6 == null) {
                    conditionalSubscriber.onError(new NullPointerException(i.g(i2, "The element at index ", " is null")));
                    return;
                }
                conditionalSubscriber.tryOnNext(t6);
            }
            if (this.cancelled) {
                return;
            }
            conditionalSubscriber.onComplete();
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x0048, code lost:
        
            r10.index = r2;
            r11 = addAndGet(-r6);
         */
        @Override // io.reactivex.internal.operators.flowable.FlowableFromArray.BaseArraySubscription
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void slowPath(long r11) {
            /*
                r10 = this;
                T[] r0 = r10.array
                int r1 = r0.length
                int r2 = r10.index
                io.reactivex.internal.fuseable.ConditionalSubscriber<? super T> r3 = r10.downstream
                r4 = 0
            L9:
                r6 = r4
            La:
                int r8 = (r6 > r11 ? 1 : (r6 == r11 ? 0 : -1))
                if (r8 == 0) goto L36
                if (r2 == r1) goto L36
                boolean r8 = r10.cancelled
                if (r8 == 0) goto L15
                goto L53
            L15:
                r8 = r0[r2]
                if (r8 != 0) goto L2a
                java.lang.NullPointerException r11 = new java.lang.NullPointerException
                java.lang.String r12 = "The element at index "
                java.lang.String r0 = " is null"
                java.lang.String r12 = A.i.g(r2, r12, r0)
                r11.<init>(r12)
                r3.onError(r11)
                return
            L2a:
                boolean r8 = r3.tryOnNext(r8)
                if (r8 == 0) goto L33
                r8 = 1
                long r6 = r6 + r8
            L33:
                int r2 = r2 + 1
                goto La
            L36:
                if (r2 != r1) goto L40
                boolean r11 = r10.cancelled
                if (r11 != 0) goto L53
                r3.onComplete()
                return
            L40:
                long r11 = r10.get()
                int r8 = (r6 > r11 ? 1 : (r6 == r11 ? 0 : -1))
                if (r8 != 0) goto La
                r10.index = r2
                long r11 = -r6
                long r11 = r10.addAndGet(r11)
                int r6 = (r11 > r4 ? 1 : (r11 == r4 ? 0 : -1))
                if (r6 != 0) goto L9
            L53:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowableFromArray.ArrayConditionalSubscription.slowPath(long):void");
        }
    }

    public static final class ArraySubscription<T> extends BaseArraySubscription<T> {
        private static final long serialVersionUID = 2587302975077663557L;
        final c downstream;

        public ArraySubscription(c cVar, T[] tArr) {
            super(tArr);
            this.downstream = cVar;
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableFromArray.BaseArraySubscription
        public void fastPath() {
            T[] tArr = this.array;
            int length = tArr.length;
            c cVar = this.downstream;
            for (int i2 = this.index; i2 != length; i2++) {
                if (this.cancelled) {
                    return;
                }
                T t6 = tArr[i2];
                if (t6 == null) {
                    cVar.onError(new NullPointerException(i.g(i2, "The element at index ", " is null")));
                    return;
                }
                cVar.onNext(t6);
            }
            if (this.cancelled) {
                return;
            }
            cVar.onComplete();
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x0045, code lost:
        
            r10.index = r2;
            r11 = addAndGet(-r6);
         */
        @Override // io.reactivex.internal.operators.flowable.FlowableFromArray.BaseArraySubscription
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void slowPath(long r11) {
            /*
                r10 = this;
                T[] r0 = r10.array
                int r1 = r0.length
                int r2 = r10.index
                m6.c r3 = r10.downstream
                r4 = 0
            L9:
                r6 = r4
            La:
                int r8 = (r6 > r11 ? 1 : (r6 == r11 ? 0 : -1))
                if (r8 == 0) goto L33
                if (r2 == r1) goto L33
                boolean r8 = r10.cancelled
                if (r8 == 0) goto L15
                goto L50
            L15:
                r8 = r0[r2]
                if (r8 != 0) goto L2a
                java.lang.NullPointerException r11 = new java.lang.NullPointerException
                java.lang.String r12 = "The element at index "
                java.lang.String r0 = " is null"
                java.lang.String r12 = A.i.g(r2, r12, r0)
                r11.<init>(r12)
                r3.onError(r11)
                return
            L2a:
                r3.onNext(r8)
                r8 = 1
                long r6 = r6 + r8
                int r2 = r2 + 1
                goto La
            L33:
                if (r2 != r1) goto L3d
                boolean r11 = r10.cancelled
                if (r11 != 0) goto L50
                r3.onComplete()
                return
            L3d:
                long r11 = r10.get()
                int r8 = (r6 > r11 ? 1 : (r6 == r11 ? 0 : -1))
                if (r8 != 0) goto La
                r10.index = r2
                long r11 = -r6
                long r11 = r10.addAndGet(r11)
                int r6 = (r11 > r4 ? 1 : (r11 == r4 ? 0 : -1))
                if (r6 != 0) goto L9
            L50:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowableFromArray.ArraySubscription.slowPath(long):void");
        }
    }

    public static abstract class BaseArraySubscription<T> extends BasicQueueSubscription<T> {
        private static final long serialVersionUID = -2252972430506210021L;
        final T[] array;
        volatile boolean cancelled;
        int index;

        public BaseArraySubscription(T[] tArr) {
            this.array = tArr;
        }

        @Override // io.reactivex.internal.subscriptions.BasicQueueSubscription, io.reactivex.internal.fuseable.QueueSubscription, m6.d
        public final void cancel() {
            this.cancelled = true;
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public final void clear() {
            this.index = this.array.length;
        }

        public abstract void fastPath();

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public final boolean isEmpty() {
            return this.index == this.array.length;
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @Nullable
        public final T poll() {
            int i2 = this.index;
            T[] tArr = this.array;
            if (i2 == tArr.length) {
                return null;
            }
            this.index = i2 + 1;
            return (T) ObjectHelper.requireNonNull(tArr[i2], "array element is null");
        }

        @Override // io.reactivex.internal.subscriptions.BasicQueueSubscription, io.reactivex.internal.fuseable.QueueSubscription, m6.d
        public final void request(long j7) {
            if (SubscriptionHelper.validate(j7) && BackpressureHelper.add(this, j7) == 0) {
                if (j7 == Long.MAX_VALUE) {
                    fastPath();
                } else {
                    slowPath(j7);
                }
            }
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public final int requestFusion(int i2) {
            return i2 & 1;
        }

        public abstract void slowPath(long j7);
    }

    public FlowableFromArray(T[] tArr) {
        this.array = tArr;
    }

    @Override // io.reactivex.Flowable
    public void subscribeActual(c cVar) {
        if (cVar instanceof ConditionalSubscriber) {
            cVar.onSubscribe(new ArrayConditionalSubscription((ConditionalSubscriber) cVar, this.array));
        } else {
            cVar.onSubscribe(new ArraySubscription(cVar, this.array));
        }
    }
}
