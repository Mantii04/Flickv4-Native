package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.internal.operators.flowable.FlowableTake;
import m6.b;
import m6.c;

/* loaded from: classes2.dex */
public final class FlowableTakePublisher<T> extends Flowable<T> {
    final long limit;
    final b source;

    public FlowableTakePublisher(b bVar, long j7) {
        this.source = bVar;
        this.limit = j7;
    }

    @Override // io.reactivex.Flowable
    public void subscribeActual(c cVar) {
        this.source.subscribe(new FlowableTake.TakeSubscriber(cVar, this.limit));
    }
}
