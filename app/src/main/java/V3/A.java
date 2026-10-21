package V3;

import com.google.common.collect.ImmutableList;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;

/* loaded from: classes2.dex */
public abstract class A {
    public static <V> void addCallback(F f3, x xVar, Executor executor) {
        P3.v.checkNotNull(xVar);
        f3.addListener(new y(f3, xVar), executor);
    }

    public static <V> V getDone(Future<V> future) throws ExecutionException {
        P3.v.checkState(future.isDone(), "Future was expected to be done: %s", future);
        return (V) N.getUninterruptibly(future);
    }

    public static <V> F immediateFailedFuture(Throwable th) {
        P3.v.checkNotNull(th);
        B b7 = new B();
        b7.setException(th);
        return b7;
    }

    public static F immediateVoidFuture() {
        return C.f3977b;
    }

    public static <V> com.google.common.util.concurrent.f whenAllComplete(Iterable<? extends F> iterable) {
        return new com.google.common.util.concurrent.f(ImmutableList.copyOf(iterable));
    }
}
