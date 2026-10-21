package io.reactivex.internal.observers;

import io.reactivex.internal.fuseable.QueueDisposable;

/* loaded from: classes2.dex */
public abstract class BasicQueueDisposable<T> implements QueueDisposable<T> {
    @Override // io.reactivex.internal.fuseable.SimpleQueue
    public final boolean offer(T t6) {
        throw new UnsupportedOperationException("Should not be called");
    }

    @Override // io.reactivex.internal.fuseable.SimpleQueue
    public final boolean offer(T t6, T t7) {
        throw new UnsupportedOperationException("Should not be called");
    }
}
