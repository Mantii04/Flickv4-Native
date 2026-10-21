package io.reactivex.internal.observers;

import io.reactivex.CompletableObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import m6.c;
import m6.d;

/* loaded from: classes2.dex */
public final class SubscriberCompletableObserver<T> implements CompletableObserver, d {
    final c subscriber;
    Disposable upstream;

    public SubscriberCompletableObserver(c cVar) {
        this.subscriber = cVar;
    }

    @Override // m6.d
    public void cancel() {
        this.upstream.dispose();
    }

    @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
    public void onComplete() {
        this.subscriber.onComplete();
    }

    @Override // io.reactivex.CompletableObserver
    public void onError(Throwable th) {
        this.subscriber.onError(th);
    }

    @Override // io.reactivex.CompletableObserver
    public void onSubscribe(Disposable disposable) {
        if (DisposableHelper.validate(this.upstream, disposable)) {
            this.upstream = disposable;
            this.subscriber.onSubscribe(this);
        }
    }

    @Override // m6.d
    public void request(long j7) {
    }
}
