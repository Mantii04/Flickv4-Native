package io.reactivex.internal.subscribers;

import androidx.media3.common.C;
import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BackpressureHelper;
import java.util.concurrent.atomic.AtomicLong;
import m6.c;
import m6.d;

/* loaded from: classes2.dex */
public abstract class SinglePostCompleteSubscriber<T, R> extends AtomicLong implements FlowableSubscriber<T>, d {
    static final long COMPLETE_MASK = Long.MIN_VALUE;
    static final long REQUEST_MASK = Long.MAX_VALUE;
    private static final long serialVersionUID = 7917814472626990048L;
    protected final c downstream;
    protected long produced;
    protected d upstream;
    protected R value;

    public SinglePostCompleteSubscriber(c cVar) {
        this.downstream = cVar;
    }

    public void cancel() {
        this.upstream.cancel();
    }

    public final void complete(R r6) {
        long j7 = this.produced;
        if (j7 != 0) {
            BackpressureHelper.produced(this, j7);
        }
        while (true) {
            long j8 = get();
            if ((j8 & Long.MIN_VALUE) != 0) {
                onDrop(r6);
                return;
            }
            if ((j8 & Long.MAX_VALUE) != 0) {
                lazySet(C.TIME_UNSET);
                this.downstream.onNext(r6);
                this.downstream.onComplete();
                return;
            } else {
                this.value = r6;
                if (compareAndSet(0L, Long.MIN_VALUE)) {
                    return;
                } else {
                    this.value = null;
                }
            }
        }
    }

    public abstract /* synthetic */ void onComplete();

    public void onDrop(R r6) {
    }

    public abstract /* synthetic */ void onError(Throwable th);

    public abstract /* synthetic */ void onNext(Object obj);

    @Override // io.reactivex.FlowableSubscriber, m6.c
    public void onSubscribe(d dVar) {
        if (SubscriptionHelper.validate(this.upstream, dVar)) {
            this.upstream = dVar;
            this.downstream.onSubscribe(this);
        }
    }

    @Override // m6.d
    public final void request(long j7) {
        long j8;
        if (SubscriptionHelper.validate(j7)) {
            do {
                j8 = get();
                if ((j8 & Long.MIN_VALUE) != 0) {
                    if (compareAndSet(Long.MIN_VALUE, C.TIME_UNSET)) {
                        this.downstream.onNext(this.value);
                        this.downstream.onComplete();
                        return;
                    }
                    return;
                }
            } while (!compareAndSet(j8, BackpressureHelper.addCap(j8, j7)));
            this.upstream.request(j7);
        }
    }
}
