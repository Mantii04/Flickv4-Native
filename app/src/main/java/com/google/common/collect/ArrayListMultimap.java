package com.google.common.collect;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes2.dex */
public final class ArrayListMultimap<K, V> extends ArrayListMultimapGwtSerializationDependencies<K, V> {
    private static final long serialVersionUID = 0;

    /* renamed from: p, reason: collision with root package name */
    public final transient int f13038p;

    private ArrayListMultimap() {
        super(CompactHashMap.createWithExpectedSize(12));
        V3.r.b(3, "expectedValuesPerKey");
        this.f13038p = 3;
    }

    public static <K, V> ArrayListMultimap<K, V> create() {
        return new ArrayListMultimap<>();
    }

    @Override // com.google.common.collect.AbstractListMultimap, Q3.AbstractC0237g, Q3.W
    public /* bridge */ /* synthetic */ Map asMap() {
        return super.asMap();
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap, Q3.W
    public /* bridge */ /* synthetic */ void clear() {
        super.clear();
    }

    @Override // Q3.AbstractC0237g, Q3.W
    public /* bridge */ /* synthetic */ boolean containsEntry(Object obj, Object obj2) {
        return super.containsEntry(obj, obj2);
    }

    @Override // Q3.AbstractC0237g
    public /* bridge */ /* synthetic */ boolean containsValue(Object obj) {
        return super.containsValue(obj);
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap
    public final Collection createCollection() {
        return new ArrayList(this.f13038p);
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap, Q3.AbstractC0237g, Q3.W
    public /* bridge */ /* synthetic */ Collection entries() {
        return super.entries();
    }

    @Override // com.google.common.collect.AbstractListMultimap, Q3.AbstractC0237g
    public /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.AbstractListMultimap, com.google.common.collect.AbstractMapBasedMultimap, Q3.W
    public /* bridge */ /* synthetic */ List get(Object obj) {
        return super.get((ArrayListMultimap<K, V>) obj);
    }

    @Override // Q3.AbstractC0237g
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // Q3.AbstractC0237g, Q3.W
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    @Override // Q3.AbstractC0237g, Q3.W
    public /* bridge */ /* synthetic */ Set keySet() {
        return super.keySet();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.AbstractListMultimap, com.google.common.collect.AbstractMapBasedMultimap, Q3.W
    public /* bridge */ /* synthetic */ boolean put(Object obj, Object obj2) {
        return super.put(obj, obj2);
    }

    @Override // Q3.AbstractC0237g
    public /* bridge */ /* synthetic */ boolean putAll(Object obj, Iterable iterable) {
        return super.putAll(obj, iterable);
    }

    @Override // Q3.AbstractC0237g, Q3.W
    public /* bridge */ /* synthetic */ boolean remove(Object obj, Object obj2) {
        return super.remove(obj, obj2);
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap, Q3.W
    public /* bridge */ /* synthetic */ int size() {
        return super.size();
    }

    @Override // Q3.AbstractC0237g
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap, Q3.AbstractC0237g, Q3.W
    public /* bridge */ /* synthetic */ Collection values() {
        return super.values();
    }
}
