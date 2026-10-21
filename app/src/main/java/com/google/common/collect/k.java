package com.google.common.collect;

import java.util.Comparator;
import java.util.SortedMap;
import java.util.SortedSet;

/* loaded from: classes2.dex */
public class k extends C0768g implements SortedSet {

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Multimaps$CustomListMultimap f13148f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(Multimaps$CustomListMultimap multimaps$CustomListMultimap, SortedMap sortedMap) {
        super(multimaps$CustomListMultimap, sortedMap);
        this.f13148f = multimaps$CustomListMultimap;
    }

    public SortedMap a() {
        return (SortedMap) this.f2868b;
    }

    @Override // java.util.SortedSet
    public Comparator<Object> comparator() {
        return a().comparator();
    }

    @Override // java.util.SortedSet
    public Object first() {
        return a().firstKey();
    }

    public SortedSet<Object> headSet(Object obj) {
        return new k(this.f13148f, a().headMap(obj));
    }

    @Override // java.util.SortedSet
    public Object last() {
        return a().lastKey();
    }

    public SortedSet<Object> subSet(Object obj, Object obj2) {
        return new k(this.f13148f, a().subMap(obj, obj2));
    }

    public SortedSet<Object> tailSet(Object obj) {
        return new k(this.f13148f, a().tailMap(obj));
    }
}
