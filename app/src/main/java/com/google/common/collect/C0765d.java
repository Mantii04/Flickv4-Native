package com.google.common.collect;

import Q3.C0233c;
import Q3.V;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.RandomAccess;
import java.util.Set;

/* renamed from: com.google.common.collect.d, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0765d extends V {

    /* renamed from: f, reason: collision with root package name */
    public final transient Map f13133f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ AbstractMapBasedMultimap f13134j;

    public C0765d(AbstractMapBasedMultimap abstractMapBasedMultimap, Map map) {
        this.f13134j = abstractMapBasedMultimap;
        this.f13133f = map;
    }

    public final Map.Entry a(Map.Entry entry) {
        Object key = entry.getKey();
        Collection collection = (Collection) entry.getValue();
        AbstractListMultimap abstractListMultimap = (AbstractListMultimap) this.f13134j;
        abstractListMultimap.getClass();
        List list = (List) collection;
        return C.immutableEntry(key, list instanceof RandomAccess ? new C0233c(abstractListMultimap, key, list, null) : new o(abstractListMultimap, key, list, null));
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        AbstractMapBasedMultimap abstractMapBasedMultimap = this.f13134j;
        if (this.f13133f == abstractMapBasedMultimap.f13036m) {
            abstractMapBasedMultimap.clear();
        } else {
            Q3.F.a(new C0764c(this));
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        Map map = this.f13133f;
        P3.v.checkNotNull(map);
        try {
            return map.containsKey(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    @Override // Q3.V
    public Set<Map.Entry<Object, Collection<Object>>> createEntrySet() {
        return new C0763b(this);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean equals(Object obj) {
        return this == obj || this.f13133f.equals(obj);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int hashCode() {
        return this.f13133f.hashCode();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Object> keySet() {
        return this.f13134j.keySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.f13133f.size();
    }

    @Override // java.util.AbstractMap
    public String toString() {
        return this.f13133f.toString();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Collection<Object> get(Object obj) {
        Object obj2;
        Map map = this.f13133f;
        P3.v.checkNotNull(map);
        try {
            obj2 = map.get(obj);
        } catch (ClassCastException | NullPointerException unused) {
            obj2 = null;
        }
        Collection collection = (Collection) obj2;
        if (collection == null) {
            return null;
        }
        AbstractListMultimap abstractListMultimap = (AbstractListMultimap) this.f13134j;
        abstractListMultimap.getClass();
        List list = (List) collection;
        return list instanceof RandomAccess ? new C0233c(abstractListMultimap, obj, list, null) : new o(abstractListMultimap, obj, list, null);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Collection<Object> remove(Object obj) {
        Collection<? extends Object> collection = (Collection) this.f13133f.remove(obj);
        if (collection == null) {
            return null;
        }
        AbstractMapBasedMultimap abstractMapBasedMultimap = this.f13134j;
        Collection<Object> createCollection = abstractMapBasedMultimap.createCollection();
        createCollection.addAll(collection);
        abstractMapBasedMultimap.f13037n -= collection.size();
        collection.clear();
        return createCollection;
    }
}
