package io.reactivex;

import io.reactivex.annotations.NonNull;
import m6.c;
import m6.d;

/* loaded from: classes2.dex */
public interface FlowableSubscriber<T> extends c {
    @Override // m6.c
    /* synthetic */ void onComplete();

    @Override // m6.c
    /* synthetic */ void onError(Throwable th);

    @Override // m6.c
    /* synthetic */ void onNext(Object obj);

    @Override // m6.c
    void onSubscribe(@NonNull d dVar);
}
