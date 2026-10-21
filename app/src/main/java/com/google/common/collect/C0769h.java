package com.google.common.collect;

import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.SortedMap;
import java.util.SortedSet;

/* renamed from: com.google.common.collect.h, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0769h extends j implements NavigableMap {

    /* renamed from: p, reason: collision with root package name */
    public final /* synthetic */ Multimaps$CustomListMultimap f13144p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0769h(Multimaps$CustomListMultimap multimaps$CustomListMultimap, NavigableMap navigableMap) {
        super(multimaps$CustomListMultimap, navigableMap);
        this.f13144p = multimaps$CustomListMultimap;
    }

    @Override // com.google.common.collect.j
    public final SortedSet c() {
        return new i(this.f13144p, d());
    }

    @Override // java.util.NavigableMap
    public Map.Entry<Object, Collection<Object>> ceilingEntry(Object obj) {
        Map.Entry ceilingEntry = d().ceilingEntry(obj);
        if (ceilingEntry == null) {
            return null;
        }
        return a(ceilingEntry);
    }

    @Override // java.util.NavigableMap
    public Object ceilingKey(Object obj) {
        return d().ceilingKey(obj);
    }

    @Override // java.util.NavigableMap
    public NavigableSet<Object> descendingKeySet() {
        return descendingMap().navigableKeySet();
    }

    @Override // java.util.NavigableMap
    public NavigableMap<Object, Collection<Object>> descendingMap() {
        return new C0769h(this.f13144p, d().descendingMap());
    }

    public final Map.Entry e(Iterator it) {
        if (!it.hasNext()) {
            return null;
        }
        Map.Entry entry = (Map.Entry) it.next();
        Collection createCollection = this.f13144p.createCollection();
        createCollection.addAll((Collection) entry.getValue());
        it.remove();
        return C.immutableEntry(entry.getKey(), Collections.unmodifiableList((List) createCollection));
    }

    @Override // com.google.common.collect.j
    /* renamed from: f, reason: merged with bridge method [inline-methods] */
    public final NavigableMap d() {
        return (NavigableMap) ((SortedMap) this.f13133f);
    }

    @Override // java.util.NavigableMap
    public Map.Entry<Object, Collection<Object>> firstEntry() {
        Map.Entry firstEntry = d().firstEntry();
        if (firstEntry == null) {
            return null;
        }
        return a(firstEntry);
    }

    @Override // java.util.NavigableMap
    public Map.Entry<Object, Collection<Object>> floorEntry(Object obj) {
        Map.Entry floorEntry = d().floorEntry(obj);
        if (floorEntry == null) {
            return null;
        }
        return a(floorEntry);
    }

    @Override // java.util.NavigableMap
    public Object floorKey(Object obj) {
        return d().floorKey(obj);
    }

    @Override // java.util.NavigableMap
    public Map.Entry<Object, Collection<Object>> higherEntry(Object obj) {
        Map.Entry higherEntry = d().higherEntry(obj);
        if (higherEntry == null) {
            return null;
        }
        return a(higherEntry);
    }

    @Override // java.util.NavigableMap
    public Object higherKey(Object obj) {
        return d().higherKey(obj);
    }

    @Override // java.util.NavigableMap
    public Map.Entry<Object, Collection<Object>> lastEntry() {
        Map.Entry lastEntry = d().lastEntry();
        if (lastEntry == null) {
            return null;
        }
        return a(lastEntry);
    }

    @Override // java.util.NavigableMap
    public Map.Entry<Object, Collection<Object>> lowerEntry(Object obj) {
        Map.Entry lowerEntry = d().lowerEntry(obj);
        if (lowerEntry == null) {
            return null;
        }
        return a(lowerEntry);
    }

    @Override // java.util.NavigableMap
    public Object lowerKey(Object obj) {
        return d().lowerKey(obj);
    }

    @Override // java.util.NavigableMap
    public NavigableSet<Object> navigableKeySet() {
        return keySet();
    }

    @Override // java.util.NavigableMap
    public Map.Entry<Object, Collection<Object>> pollFirstEntry() {
        return e(entrySet().iterator());
    }

    @Override // java.util.NavigableMap
    public Map.Entry<Object, Collection<Object>> pollLastEntry() {
        return e(descendingMap().entrySet().iterator());
    }

    @Override // com.google.common.collect.j, java.util.SortedMap, java.util.NavigableMap
    public NavigableMap<Object, Collection<Object>> headMap(Object obj) {
        return headMap(obj, false);
    }

    @Override // com.google.common.collect.j, java.util.SortedMap, java.util.NavigableMap
    public NavigableMap<Object, Collection<Object>> subMap(Object obj, Object obj2) {
        return subMap(obj, true, obj2, false);
    }

    @Override // com.google.common.collect.j, java.util.SortedMap, java.util.NavigableMap
    public NavigableMap<Object, Collection<Object>> tailMap(Object obj) {
        return tailMap(obj, true);
    }

    @Override // java.util.NavigableMap
    public NavigableMap<Object, Collection<Object>> headMap(Object obj, boolean z6) {
        return new C0769h(this.f13144p, d().headMap(obj, z6));
    }

    @Override // com.google.common.collect.j, com.google.common.collect.C0765d, java.util.AbstractMap, java.util.Map
    public NavigableSet<Object> keySet() {
        return (NavigableSet) super.keySet();
    }

    @Override // java.util.NavigableMap
    public NavigableMap<Object, Collection<Object>> subMap(Object obj, boolean z6, Object obj2, boolean z7) {
        return new C0769h(this.f13144p, d().subMap(obj, z6, obj2, z7));
    }

    @Override // java.util.NavigableMap
    public NavigableMap<Object, Collection<Object>> tailMap(Object obj, boolean z6) {
        return new C0769h(this.f13144p, d().tailMap(obj, z6));
    }
}
