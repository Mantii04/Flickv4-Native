package com.google.common.collect;

import Q3.C0250u;
import java.util.Collection;
import java.util.List;

/* loaded from: classes2.dex */
public class ImmutableListMultimap<K, V> extends ImmutableMultimap<K, V> implements Q3.G {
    private static final long serialVersionUID = 0;

    public static <K, V> C0250u builder() {
        return new C0250u();
    }

    public static <K, V> ImmutableListMultimap<K, V> of() {
        return EmptyImmutableListMultimap.f13059p;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // Q3.W
    public /* bridge */ /* synthetic */ Collection get(Object obj) {
        return get((ImmutableListMultimap<K, V>) obj);
    }

    public static <K, V> ImmutableListMultimap<K, V> of(K k7, V v6) {
        C0250u builder = builder();
        builder.put((Object) k7, (Object) v6);
        return (ImmutableListMultimap<K, V>) builder.build();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // Q3.W
    public /* bridge */ /* synthetic */ List get(Object obj) {
        return get((ImmutableListMultimap<K, V>) obj);
    }

    @Override // Q3.W
    public ImmutableList<V> get(K k7) {
        ImmutableList<V> immutableList = (ImmutableList) this.f13072m.get(k7);
        return immutableList == null ? ImmutableList.of() : immutableList;
    }
}
