package V3;

import Q3.AbstractC0246p;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes2.dex */
public abstract class u extends AbstractC0246p implements Future {
    public boolean cancel(boolean z6) {
        return delegate().cancel(z6);
    }

    @Override // Q3.AbstractC0246p
    public abstract Future<Object> delegate();

    @Override // java.util.concurrent.Future
    public Object get() throws InterruptedException, ExecutionException {
        return delegate().get();
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return delegate().isCancelled();
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return delegate().isDone();
    }

    @Override // java.util.concurrent.Future
    public Object get(long j7, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return delegate().get(j7, timeUnit);
    }
}
