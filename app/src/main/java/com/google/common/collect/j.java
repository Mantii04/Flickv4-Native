package com.google.common.collect;

import java.util.Collection;
import java.util.Comparator;
import java.util.SortedMap;
import java.util.SortedSet;

/* loaded from: classes2.dex */
public class j extends C0765d implements SortedMap {

    /* renamed from: m, reason: collision with root package name */
    public SortedSet f13146m;

    /* renamed from: n, reason: collision with root package name */
    public final /* synthetic */ Multimaps$CustomListMultimap f13147n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(Multimaps$CustomListMultimap multimaps$CustomListMultimap, SortedMap sortedMap) {
        super(multimaps$CustomListMultimap, sortedMap);
        this.f13147n = multimaps$CustomListMultimap;
    }

    public SortedSet c() {
        return new k(this.f13147n, d());
    }

    @Override // java.util.SortedMap
    public Comparator<Object> comparator() {
        return d().comparator();
    }

    public SortedMap d() {
        return (SortedMap) this.f13133f;
    }

    @Override // java.util.SortedMap
    public Object firstKey() {
        return d().firstKey();
    }

    public SortedMap<Object, Collection<Object>> headMap(Object obj) {
        return new j(this.f13147n, d().headMap(obj));
    }

    @Override // java.util.SortedMap
    public Object lastKey() {
        return d().lastKey();
    }

    public SortedMap<Object, Collection<Object>> subMap(Object obj, Object obj2) {
        return new j(this.f13147n, d().subMap(obj, obj2));
    }

    public SortedMap<Object, Collection<Object>> tailMap(Object obj) {
        return new j(this.f13147n, d().tailMap(obj));
    }

    @Override // com.google.common.collect.C0765d, java.util.AbstractMap, java.util.Map
    public SortedSet<Object> keySet() {
        SortedSet<Object> sortedSet = this.f13146m;
        if (sortedSet != null) {
            return sortedSet;
        }
        SortedSet<Object> c7 = c();
        this.f13146m = c7;
        return c7;
    }
}
