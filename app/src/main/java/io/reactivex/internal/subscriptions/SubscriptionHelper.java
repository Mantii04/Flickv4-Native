package io.reactivex.internal.subscriptions;

import A.i;
import io.reactivex.exceptions.ProtocolViolationException;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import m6.d;

/* loaded from: classes2.dex */
public enum SubscriptionHelper implements d {
    CANCELLED;

    public static void deferredRequest(AtomicReference<d> atomicReference, AtomicLong atomicLong, long j7) {
        d dVar = atomicReference.get();
        if (dVar != null) {
            dVar.request(j7);
            return;
        }
        if (validate(j7)) {
            BackpressureHelper.add(atomicLong, j7);
            d dVar2 = atomicReference.get();
            if (dVar2 != null) {
                long andSet = atomicLong.getAndSet(0L);
                if (andSet != 0) {
                    dVar2.request(andSet);
                }
            }
        }
    }

    public static boolean deferredSetOnce(AtomicReference<d> atomicReference, AtomicLong atomicLong, d dVar) {
        if (!setOnce(atomicReference, dVar)) {
            return false;
        }
        long andSet = atomicLong.getAndSet(0L);
        if (andSet == 0) {
            return true;
        }
        dVar.request(andSet);
        return true;
    }

    public static boolean replace(AtomicReference<d> atomicReference, d dVar) {
        while (true) {
            d dVar2 = atomicReference.get();
            if (dVar2 == CANCELLED) {
                if (dVar == null) {
                    return false;
                }
                dVar.cancel();
                return false;
            }
            while (!atomicReference.compareAndSet(dVar2, dVar)) {
                if (atomicReference.get() != dVar2) {
                    break;
                }
            }
            return true;
        }
    }

    public static void reportMoreProduced(long j7) {
        RxJavaPlugins.onError(new ProtocolViolationException(i.i("More produced than requested: ", j7)));
    }

    public static void reportSubscriptionSet() {
        RxJavaPlugins.onError(new ProtocolViolationException("Subscription already set!"));
    }

    public static boolean set(AtomicReference<d> atomicReference, d dVar) {
        while (true) {
            d dVar2 = atomicReference.get();
            if (dVar2 == CANCELLED) {
                if (dVar == null) {
                    return false;
                }
                dVar.cancel();
                return false;
            }
            while (!atomicReference.compareAndSet(dVar2, dVar)) {
                if (atomicReference.get() != dVar2) {
                    break;
                }
            }
            if (dVar2 == null) {
                return true;
            }
            dVar2.cancel();
            return true;
        }
    }

    public static boolean setOnce(AtomicReference<d> atomicReference, d dVar) {
        ObjectHelper.requireNonNull(dVar, "s is null");
        while (!atomicReference.compareAndSet(null, dVar)) {
            if (atomicReference.get() != null) {
                dVar.cancel();
                if (atomicReference.get() == CANCELLED) {
                    return false;
                }
                reportSubscriptionSet();
                return false;
            }
        }
        return true;
    }

    public static boolean validate(d dVar, d dVar2) {
        if (dVar2 == null) {
            RxJavaPlugins.onError(new NullPointerException("next is null"));
            return false;
        }
        if (dVar == null) {
            return true;
        }
        dVar2.cancel();
        reportSubscriptionSet();
        return false;
    }

    @Override // m6.d
    public void cancel() {
    }

    @Override // m6.d
    public void request(long j7) {
    }

    public static boolean cancel(AtomicReference<d> atomicReference) {
        d andSet;
        d dVar = atomicReference.get();
        SubscriptionHelper subscriptionHelper = CANCELLED;
        if (dVar == subscriptionHelper || (andSet = atomicReference.getAndSet(subscriptionHelper)) == subscriptionHelper) {
            return false;
        }
        if (andSet == null) {
            return true;
        }
        andSet.cancel();
        return true;
    }

    public static boolean validate(long j7) {
        if (j7 > 0) {
            return true;
        }
        RxJavaPlugins.onError(new IllegalArgumentException(i.i("n > 0 required but it was ", j7)));
        return false;
    }

    public static boolean setOnce(AtomicReference<d> atomicReference, d dVar, long j7) {
        if (!setOnce(atomicReference, dVar)) {
            return false;
        }
        dVar.request(j7);
        return true;
    }
}
