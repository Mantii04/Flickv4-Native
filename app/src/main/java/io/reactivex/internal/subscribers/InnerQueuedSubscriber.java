package io.reactivex.internal.subscribers;

import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.fuseable.QueueSubscription;
import io.reactivex.internal.fuseable.SimpleQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.QueueDrainHelper;
import java.util.concurrent.atomic.AtomicReference;
import m6.d;

/* loaded from: classes2.dex */
public final class InnerQueuedSubscriber<T> extends AtomicReference<d> implements FlowableSubscriber<T>, d {
    private static final long serialVersionUID = 22876611072430776L;
    volatile boolean done;
    int fusionMode;
    final int limit;
    final InnerQueuedSubscriberSupport<T> parent;
    final int prefetch;
    long produced;
    volatile SimpleQueue<T> queue;

    public InnerQueuedSubscriber(InnerQueuedSubscriberSupport<T> innerQueuedSubscriberSupport, int i2) {
        this.parent = innerQueuedSubscriberSupport;
        this.prefetch = i2;
        this.limit = i2 - (i2 >> 2);
    }

    @Override // m6.d
    public void cancel() {
        SubscriptionHelper.cancel(this);
    }

    public boolean isDone() {
        return this.done;
    }

    @Override // io.reactivex.FlowableSubscriber, m6.c
    public void onComplete() {
        this.parent.innerComplete(this);
    }

    @Override // io.reactivex.FlowableSubscriber, m6.c
    public void onError(Throwable th) {
        this.parent.innerError(this, th);
    }

    @Override // io.reactivex.FlowableSubscriber, m6.c
    public void onNext(T t6) {
        if (this.fusionMode == 0) {
            this.parent.innerNext(this, t6);
        } else {
            this.parent.drain();
        }
    }

    @Override // io.reactivex.FlowableSubscriber, m6.c
    public void onSubscribe(d dVar) {
        if (SubscriptionHelper.setOnce(this, dVar)) {
            if (dVar instanceof QueueSubscription) {
                QueueSubscription queueSubscription = (QueueSubscription) dVar;
                int requestFusion = queueSubscription.requestFusion(3);
                if (requestFusion == 1) {
                    this.fusionMode = requestFusion;
                    this.queue = queueSubscription;
                    this.done = true;
                    this.parent.innerComplete(this);
                    return;
                }
                if (requestFusion == 2) {
                    this.fusionMode = requestFusion;
                    this.queue = queueSubscription;
                    QueueDrainHelper.request(dVar, this.prefetch);
                    return;
                }
            }
            this.queue = QueueDrainHelper.createQueue(this.prefetch);
            QueueDrainHelper.request(dVar, this.prefetch);
        }
    }

    public SimpleQueue<T> queue() {
        return this.queue;
    }

    @Override // m6.d
    public void request(long j7) {
        if (this.fusionMode != 1) {
            long j8 = this.produced + j7;
            if (j8 < this.limit) {
                this.produced = j8;
            } else {
                this.produced = 0L;
                get().request(j8);
            }
        }
    }

    public void requestOne() {
        if (this.fusionMode != 1) {
            long j7 = this.produced + 1;
            if (j7 != this.limit) {
                this.produced = j7;
            } else {
                this.produced = 0L;
                get().request(j7);
            }
        }
    }

    public void setDone() {
        this.done = true;
    }
}
