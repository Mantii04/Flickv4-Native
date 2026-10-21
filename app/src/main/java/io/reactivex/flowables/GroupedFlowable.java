package io.reactivex.flowables;

import io.reactivex.Flowable;
import io.reactivex.annotations.Nullable;

/* loaded from: classes2.dex */
public abstract class GroupedFlowable<K, T> extends Flowable<T> {
    final K key;

    public GroupedFlowable(@Nullable K k7) {
        this.key = k7;
    }

    @Nullable
    public K getKey() {
        return this.key;
    }
}
