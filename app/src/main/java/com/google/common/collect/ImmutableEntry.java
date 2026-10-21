package com.google.common.collect;

import Q3.AbstractC0234d;
import java.io.Serializable;

/* loaded from: classes2.dex */
class ImmutableEntry<K, V> extends AbstractC0234d implements Serializable {
    private static final long serialVersionUID = 0;

    /* renamed from: b, reason: collision with root package name */
    public final Object f13063b;

    /* renamed from: e, reason: collision with root package name */
    public final Object f13064e;

    public ImmutableEntry(Object obj, Object obj2) {
        this.f13063b = obj;
        this.f13064e = obj2;
    }

    @Override // Q3.AbstractC0234d, java.util.Map.Entry
    public final K getKey() {
        return (K) this.f13063b;
    }

    @Override // Q3.AbstractC0234d, java.util.Map.Entry
    public final V getValue() {
        return (V) this.f13064e;
    }

    @Override // Q3.AbstractC0234d, java.util.Map.Entry
    public final V setValue(V v6) {
        throw new UnsupportedOperationException();
    }
}
