package com.google.common.collect;

import Q3.s0;
import com.google.common.collect.RegularImmutableMap;
import java.io.Serializable;
import java.util.Collection;
import java.util.Map;
import java.util.SortedMap;

/* loaded from: classes2.dex */
public abstract class ImmutableMap<K, V> implements Map<K, V>, Serializable {
    private static final long serialVersionUID = 912559;

    /* renamed from: b, reason: collision with root package name */
    public transient ImmutableSet f13069b;

    /* renamed from: e, reason: collision with root package name */
    public transient ImmutableSet f13070e;

    /* renamed from: f, reason: collision with root package name */
    public transient ImmutableCollection f13071f;

    public static <K, V> w builder() {
        return new w();
    }

    public static <K, V> ImmutableMap<K, V> copyOf(Map<? extends K, ? extends V> map) {
        if (!(map instanceof ImmutableMap) || (map instanceof SortedMap)) {
            return copyOf(map.entrySet());
        }
        ImmutableMap<K, V> immutableMap = (ImmutableMap) map;
        immutableMap.getClass();
        return immutableMap;
    }

    public static <K, V> ImmutableMap<K, V> of() {
        return RegularImmutableMap.f13099p;
    }

    @Override // java.util.Map
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.Map
    public boolean containsValue(Object obj) {
        return values().contains(obj);
    }

    @Override // java.util.Map
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Map) {
            return entrySet().equals(((Map) obj).entrySet());
        }
        return false;
    }

    @Override // java.util.Map
    public abstract V get(Object obj);

    @Override // java.util.Map
    public final V getOrDefault(Object obj, V v6) {
        V v7 = get(obj);
        return v7 != null ? v7 : v6;
    }

    @Override // java.util.Map
    public int hashCode() {
        return s0.b(entrySet());
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.Map
    @Deprecated
    public final V put(K k7, V v6) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @Deprecated
    public final void putAll(Map<? extends K, ? extends V> map) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @Deprecated
    public final V remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    public String toString() {
        return C.b(this);
    }

    public static <K, V> ImmutableMap<K, V> of(K k7, V v6, K k8, V v7) {
        V3.r.a(k7, v6);
        V3.r.a(k8, v7);
        return RegularImmutableMap.a(2, new Object[]{k7, v6, k8, v7}, null);
    }

    @Override // java.util.Map
    public ImmutableSet<Map.Entry<K, V>> entrySet() {
        ImmutableSet<Map.Entry<K, V>> immutableSet = this.f13069b;
        if (immutableSet != null) {
            return immutableSet;
        }
        RegularImmutableMap regularImmutableMap = (RegularImmutableMap) this;
        RegularImmutableMap.EntrySet entrySet = new RegularImmutableMap.EntrySet(regularImmutableMap, regularImmutableMap.f13101m, regularImmutableMap.f13102n);
        this.f13069b = entrySet;
        return entrySet;
    }

    @Override // java.util.Map
    public ImmutableSet<K> keySet() {
        ImmutableSet<K> immutableSet = this.f13070e;
        if (immutableSet != null) {
            return immutableSet;
        }
        RegularImmutableMap regularImmutableMap = (RegularImmutableMap) this;
        RegularImmutableMap.KeySet keySet = new RegularImmutableMap.KeySet(regularImmutableMap, new RegularImmutableMap.KeysOrValuesAsList(regularImmutableMap.f13101m, 0, regularImmutableMap.f13102n));
        this.f13070e = keySet;
        return keySet;
    }

    @Override // java.util.Map
    public ImmutableCollection<V> values() {
        ImmutableCollection<V> immutableCollection = this.f13071f;
        if (immutableCollection != null) {
            return immutableCollection;
        }
        RegularImmutableMap regularImmutableMap = (RegularImmutableMap) this;
        RegularImmutableMap.KeysOrValuesAsList keysOrValuesAsList = new RegularImmutableMap.KeysOrValuesAsList(regularImmutableMap.f13101m, 1, regularImmutableMap.f13102n);
        this.f13071f = keysOrValuesAsList;
        return keysOrValuesAsList;
    }

    public static <K, V> ImmutableMap<K, V> copyOf(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
        w wVar = new w(iterable instanceof Collection ? ((Collection) iterable).size() : 4);
        wVar.putAll(iterable);
        return (ImmutableMap<K, V>) wVar.build();
    }
}
