package cz.msebera.android.httpclient.concurrent;

import cz.msebera.android.httpclient.util.Args;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes2.dex */
public class BasicFuture<T> implements Future<T>, Cancellable {
    private final FutureCallback<T> callback;
    private volatile boolean cancelled;
    private volatile boolean completed;
    private volatile Exception ex;
    private volatile T result;

    public BasicFuture(FutureCallback<T> futureCallback) {
        this.callback = futureCallback;
    }

    private T getResult() throws ExecutionException {
        if (this.ex != null) {
            throw new ExecutionException(this.ex);
        }
        if (this.cancelled) {
            throw new CancellationException();
        }
        return this.result;
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z6) {
        synchronized (this) {
            try {
                if (this.completed) {
                    return false;
                }
                this.completed = true;
                this.cancelled = true;
                notifyAll();
                FutureCallback<T> futureCallback = this.callback;
                if (futureCallback != null) {
                    futureCallback.cancelled();
                }
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean completed(T t6) {
        synchronized (this) {
            try {
                if (this.completed) {
                    return false;
                }
                this.completed = true;
                this.result = t6;
                notifyAll();
                FutureCallback<T> futureCallback = this.callback;
                if (futureCallback != null) {
                    futureCallback.completed(t6);
                }
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean failed(Exception exc) {
        synchronized (this) {
            try {
                if (this.completed) {
                    return false;
                }
                this.completed = true;
                this.ex = exc;
                notifyAll();
                FutureCallback<T> futureCallback = this.callback;
                if (futureCallback != null) {
                    futureCallback.failed(exc);
                }
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // java.util.concurrent.Future
    public synchronized T get() throws InterruptedException, ExecutionException {
        while (!this.completed) {
            try {
                wait();
            } catch (Throwable th) {
                throw th;
            }
        }
        return getResult();
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.cancelled;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return this.completed;
    }

    @Override // java.util.concurrent.Future
    public synchronized T get(long j7, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        Args.notNull(timeUnit, "Time unit");
        long millis = timeUnit.toMillis(j7);
        long currentTimeMillis = millis <= 0 ? 0L : System.currentTimeMillis();
        if (this.completed) {
            return getResult();
        }
        if (millis > 0) {
            long j8 = millis;
            do {
                wait(j8);
                if (this.completed) {
                    return getResult();
                }
                j8 = millis - (System.currentTimeMillis() - currentTimeMillis);
            } while (j8 > 0);
            throw new TimeoutException();
        }
        throw new TimeoutException();
    }

    @Override // cz.msebera.android.httpclient.concurrent.Cancellable
    public boolean cancel() {
        return cancel(true);
    }
}
