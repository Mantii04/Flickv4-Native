package io.reactivex.internal.util;

import b.c;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.ProtocolViolationException;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicReference;
import m6.d;

/* loaded from: classes2.dex */
public final class EndConsumerHelper {
    private EndConsumerHelper() {
        throw new IllegalStateException("No instances!");
    }

    public static String composeMessage(String str) {
        return c.m("It is not allowed to subscribe with a(n) ", str, " multiple times. Please create a fresh instance of ", str, " and subscribe that to the target source instead.");
    }

    public static void reportDoubleSubscription(Class<?> cls) {
        RxJavaPlugins.onError(new ProtocolViolationException(composeMessage(cls.getName())));
    }

    public static boolean setOnce(AtomicReference<Disposable> atomicReference, Disposable disposable, Class<?> cls) {
        ObjectHelper.requireNonNull(disposable, "next is null");
        while (!atomicReference.compareAndSet(null, disposable)) {
            if (atomicReference.get() != null) {
                disposable.dispose();
                if (atomicReference.get() == DisposableHelper.DISPOSED) {
                    return false;
                }
                reportDoubleSubscription(cls);
                return false;
            }
        }
        return true;
    }

    public static boolean validate(Disposable disposable, Disposable disposable2, Class<?> cls) {
        ObjectHelper.requireNonNull(disposable2, "next is null");
        if (disposable == null) {
            return true;
        }
        disposable2.dispose();
        if (disposable == DisposableHelper.DISPOSED) {
            return false;
        }
        reportDoubleSubscription(cls);
        return false;
    }

    public static boolean validate(d dVar, d dVar2, Class<?> cls) {
        ObjectHelper.requireNonNull(dVar2, "next is null");
        if (dVar == null) {
            return true;
        }
        dVar2.cancel();
        if (dVar == SubscriptionHelper.CANCELLED) {
            return false;
        }
        reportDoubleSubscription(cls);
        return false;
    }

    public static boolean setOnce(AtomicReference<d> atomicReference, d dVar, Class<?> cls) {
        ObjectHelper.requireNonNull(dVar, "next is null");
        while (!atomicReference.compareAndSet(null, dVar)) {
            if (atomicReference.get() != null) {
                dVar.cancel();
                if (atomicReference.get() == SubscriptionHelper.CANCELLED) {
                    return false;
                }
                reportDoubleSubscription(cls);
                return false;
            }
        }
        return true;
    }
}
