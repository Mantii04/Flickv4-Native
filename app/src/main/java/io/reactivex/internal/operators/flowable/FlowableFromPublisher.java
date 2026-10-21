package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import m6.b;
import m6.c;

/* loaded from: classes2.dex */
public final class FlowableFromPublisher<T> extends Flowable<T> {
    final b publisher;

    public FlowableFromPublisher(b bVar) {
        this.publisher = bVar;
    }

    @Override // io.reactivex.Flowable
    public void subscribeActual(c cVar) {
        this.publisher.subscribe(cVar);
    }
}
