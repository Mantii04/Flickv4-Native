package org.apache.commons.lang3.concurrent;

import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public abstract class AtomicInitializer<T> implements ConcurrentInitializer<T> {
    private final AtomicReference<T> reference = new AtomicReference<>();

    @Override // org.apache.commons.lang3.concurrent.ConcurrentInitializer
    public T get() throws ConcurrentException {
        T t6 = this.reference.get();
        if (t6 != null) {
            return t6;
        }
        T initialize = initialize();
        AtomicReference<T> atomicReference = this.reference;
        while (!atomicReference.compareAndSet(null, initialize)) {
            if (atomicReference.get() != null) {
                return this.reference.get();
            }
        }
        return initialize;
    }

    public abstract T initialize() throws ConcurrentException;
}
