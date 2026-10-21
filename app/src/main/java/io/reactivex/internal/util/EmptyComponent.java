package io.reactivex.internal.util;

import io.reactivex.CompletableObserver;
import io.reactivex.FlowableSubscriber;
import io.reactivex.MaybeObserver;
import io.reactivex.Observer;
import io.reactivex.SingleObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.plugins.RxJavaPlugins;
import m6.c;
import m6.d;

/* loaded from: classes2.dex */
public enum EmptyComponent implements FlowableSubscriber<Object>, Observer<Object>, MaybeObserver<Object>, SingleObserver<Object>, CompletableObserver, d, Disposable {
    INSTANCE;

    public static <T> Observer<T> asObserver() {
        return INSTANCE;
    }

    public static <T> c asSubscriber() {
        return INSTANCE;
    }

    @Override // m6.d
    public void cancel() {
    }

    @Override // io.reactivex.disposables.Disposable
    public void dispose() {
    }

    @Override // io.reactivex.disposables.Disposable
    public boolean isDisposed() {
        return true;
    }

    @Override // io.reactivex.FlowableSubscriber, m6.c
    public void onComplete() {
    }

    @Override // io.reactivex.FlowableSubscriber, m6.c
    public void onError(Throwable th) {
        RxJavaPlugins.onError(th);
    }

    @Override // io.reactivex.FlowableSubscriber, m6.c
    public void onNext(Object obj) {
    }

    @Override // io.reactivex.Observer
    public void onSubscribe(Disposable disposable) {
        disposable.dispose();
    }

    @Override // io.reactivex.MaybeObserver
    public void onSuccess(Object obj) {
    }

    @Override // m6.d
    public void request(long j7) {
    }

    @Override // io.reactivex.FlowableSubscriber, m6.c
    public void onSubscribe(d dVar) {
        dVar.cancel();
    }
}
