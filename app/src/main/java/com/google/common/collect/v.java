package com.google.common.collect;

import java.util.AbstractCollection;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes2.dex */
public final class v extends AbstractCollection {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ CompactHashMap f13171b;

    public v(CompactHashMap compactHashMap) {
        this.f13171b = compactHashMap;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public void clear() {
        this.f13171b.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public Iterator<Object> iterator() {
        CompactHashMap compactHashMap = this.f13171b;
        Map a7 = compactHashMap.a();
        return a7 != null ? a7.values().iterator() : new q(compactHashMap, 2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public int size() {
        return this.f13171b.size();
    }
}
