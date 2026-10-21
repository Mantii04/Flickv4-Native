package com.google.common.collect;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes2.dex */
public final class t extends AbstractSet {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ CompactHashMap f13167b;

    public t(CompactHashMap compactHashMap) {
        this.f13167b = compactHashMap;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        this.f13167b.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return this.f13167b.containsKey(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<Object> iterator() {
        CompactHashMap compactHashMap = this.f13167b;
        Map a7 = compactHashMap.a();
        return a7 != null ? a7.keySet().iterator() : new q(compactHashMap, 0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        CompactHashMap compactHashMap = this.f13167b;
        Map a7 = compactHashMap.a();
        return a7 != null ? a7.keySet().remove(obj) : compactHashMap.g(obj) != CompactHashMap.f13041s;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.f13167b.size();
    }
}
