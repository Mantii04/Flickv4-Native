package com.google.common.collect;

import java.util.Iterator;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.SortedMap;

/* loaded from: classes2.dex */
public final class i extends k implements NavigableSet {

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Multimaps$CustomListMultimap f13145j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(Multimaps$CustomListMultimap multimaps$CustomListMultimap, NavigableMap navigableMap) {
        super(multimaps$CustomListMultimap, navigableMap);
        this.f13145j = multimaps$CustomListMultimap;
    }

    @Override // com.google.common.collect.k
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final NavigableMap a() {
        return (NavigableMap) ((SortedMap) this.f2868b);
    }

    @Override // java.util.NavigableSet
    public Object ceiling(Object obj) {
        return a().ceilingKey(obj);
    }

    @Override // java.util.NavigableSet
    public Iterator<Object> descendingIterator() {
        return descendingSet().iterator();
    }

    @Override // java.util.NavigableSet
    public NavigableSet<Object> descendingSet() {
        return new i(this.f13145j, a().descendingMap());
    }

    @Override // java.util.NavigableSet
    public Object floor(Object obj) {
        return a().floorKey(obj);
    }

    @Override // java.util.NavigableSet
    public Object higher(Object obj) {
        return a().higherKey(obj);
    }

    @Override // java.util.NavigableSet
    public Object lower(Object obj) {
        return a().lowerKey(obj);
    }

    @Override // java.util.NavigableSet
    public Object pollFirst() {
        Iterator<Object> it = iterator();
        if (!it.hasNext()) {
            return null;
        }
        Object next = it.next();
        it.remove();
        return next;
    }

    @Override // java.util.NavigableSet
    public Object pollLast() {
        Iterator<Object> descendingIterator = descendingIterator();
        if (!descendingIterator.hasNext()) {
            return null;
        }
        Object next = descendingIterator.next();
        descendingIterator.remove();
        return next;
    }

    @Override // com.google.common.collect.k, java.util.SortedSet, java.util.NavigableSet
    public NavigableSet<Object> headSet(Object obj) {
        return headSet(obj, false);
    }

    @Override // com.google.common.collect.k, java.util.SortedSet, java.util.NavigableSet
    public NavigableSet<Object> subSet(Object obj, Object obj2) {
        return subSet(obj, true, obj2, false);
    }

    @Override // com.google.common.collect.k, java.util.SortedSet, java.util.NavigableSet
    public NavigableSet<Object> tailSet(Object obj) {
        return tailSet(obj, true);
    }

    @Override // java.util.NavigableSet
    public NavigableSet<Object> headSet(Object obj, boolean z6) {
        return new i(this.f13145j, a().headMap(obj, z6));
    }

    @Override // java.util.NavigableSet
    public NavigableSet<Object> subSet(Object obj, boolean z6, Object obj2, boolean z7) {
        return new i(this.f13145j, a().subMap(obj, z6, obj2, z7));
    }

    @Override // java.util.NavigableSet
    public NavigableSet<Object> tailSet(Object obj, boolean z6) {
        return new i(this.f13145j, a().tailMap(obj, z6));
    }
}
