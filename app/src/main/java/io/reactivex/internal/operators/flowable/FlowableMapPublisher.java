package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.functions.Function;
import io.reactivex.internal.operators.flowable.FlowableMap;
import m6.b;
import m6.c;

/* loaded from: classes2.dex */
public final class FlowableMapPublisher<T, U> extends Flowable<U> {
    final Function<? super T, ? extends U> mapper;
    final b source;

    public FlowableMapPublisher(b bVar, Function<? super T, ? extends U> function) {
        this.source = bVar;
        this.mapper = function;
    }

    @Override // io.reactivex.Flowable
    public void subscribeActual(c cVar) {
        this.source.subscribe(new FlowableMap.MapSubscriber(cVar, this.mapper));
    }
}
