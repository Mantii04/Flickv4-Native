package com.google.common.collect;

import Q3.N;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* renamed from: com.google.common.collect.b, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0763b extends N {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C0765d f13129b;

    public C0763b(C0765d c0765d) {
        this.f13129b = c0765d;
    }

    @Override // Q3.N
    public final Map a() {
        return this.f13129b;
    }

    @Override // Q3.N, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        Set entrySet = this.f13129b.f13133f.entrySet();
        P3.v.checkNotNull(entrySet);
        try {
            return entrySet.contains(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<Map.Entry<Object, Collection<Object>>> iterator() {
        return new C0764c(this.f13129b);
    }

    @Override // Q3.N, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        Object obj2;
        if (!contains(obj)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        Objects.requireNonNull(entry);
        AbstractMapBasedMultimap abstractMapBasedMultimap = this.f13129b.f13134j;
        Object key = entry.getKey();
        Map map = abstractMapBasedMultimap.f13036m;
        P3.v.checkNotNull(map);
        try {
            obj2 = map.remove(key);
        } catch (ClassCastException | NullPointerException unused) {
            obj2 = null;
        }
        Collection collection = (Collection) obj2;
        if (collection == null) {
            return true;
        }
        int size = collection.size();
        collection.clear();
        abstractMapBasedMultimap.f13037n -= size;
        return true;
    }
}
