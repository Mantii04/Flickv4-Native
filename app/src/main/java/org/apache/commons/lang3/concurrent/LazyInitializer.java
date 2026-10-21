package org.apache.commons.lang3.concurrent;

/* loaded from: classes2.dex */
public abstract class LazyInitializer<T> implements ConcurrentInitializer<T> {
    private static final Object NO_INIT = new Object();
    private volatile T object = (T) NO_INIT;

    @Override // org.apache.commons.lang3.concurrent.ConcurrentInitializer
    public T get() throws ConcurrentException {
        T t6;
        T t7 = this.object;
        Object obj = NO_INIT;
        if (t7 != obj) {
            return t7;
        }
        synchronized (this) {
            try {
                t6 = this.object;
                if (t6 == obj) {
                    t6 = initialize();
                    this.object = t6;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return t6;
    }

    public abstract T initialize() throws ConcurrentException;
}
