package com.google.common.collect;

import java.util.Collection;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
abstract class AbstractListMultimap<K, V> extends AbstractMapBasedMultimap<K, V> implements Q3.G {
    private static final long serialVersionUID = 6588350623831699109L;

    public AbstractListMultimap(Map<K, Collection<V>> map) {
        super(map);
    }

    @Override // Q3.AbstractC0237g, Q3.W
    public Map<K, Collection<V>> asMap() {
        return (Map<K, Collection<V>>) super.asMap();
    }

    @Override // Q3.AbstractC0237g
    public boolean equals(Object obj) {
        return super.equals(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.AbstractMapBasedMultimap, Q3.W
    public /* bridge */ /* synthetic */ Collection get(Object obj) {
        return get((AbstractListMultimap<K, V>) obj);
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap, Q3.W
    public boolean put(K k7, V v6) {
        return super.put(k7, v6);
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap, Q3.W
    public List<V> get(K k7) {
        return (List) super.get((AbstractListMultimap<K, V>) k7);
    }
}
