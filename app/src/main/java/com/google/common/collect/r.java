package com.google.common.collect;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes2.dex */
public final class r extends AbstractSet {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ CompactHashMap f13162b;

    public r(CompactHashMap compactHashMap) {
        this.f13162b = compactHashMap;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        this.f13162b.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        CompactHashMap compactHashMap = this.f13162b;
        Map a7 = compactHashMap.a();
        if (a7 != null) {
            return a7.entrySet().contains(obj);
        }
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            int d7 = compactHashMap.d(entry.getKey());
            if (d7 != -1 && P3.u.equal(compactHashMap.j()[d7], entry.getValue())) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<Map.Entry<Object, Object>> iterator() {
        CompactHashMap compactHashMap = this.f13162b;
        Map a7 = compactHashMap.a();
        return a7 != null ? a7.entrySet().iterator() : new q(compactHashMap, 1);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        CompactHashMap compactHashMap = this.f13162b;
        Map a7 = compactHashMap.a();
        if (a7 != null) {
            return a7.entrySet().remove(obj);
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        if (compactHashMap.f()) {
            return false;
        }
        int c7 = compactHashMap.c();
        Object key = entry.getKey();
        Object value = entry.getValue();
        Object obj2 = compactHashMap.f13042b;
        Objects.requireNonNull(obj2);
        int q6 = V3.s.q(key, value, c7, obj2, compactHashMap.h(), compactHashMap.i(), compactHashMap.j());
        if (q6 == -1) {
            return false;
        }
        compactHashMap.e(q6, c7);
        compactHashMap.f13047n--;
        compactHashMap.f13046m += 32;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.f13162b.size();
    }
}
