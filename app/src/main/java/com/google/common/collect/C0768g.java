package com.google.common.collect;

import Q3.S;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

/* renamed from: com.google.common.collect.g, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0768g extends S {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ AbstractMapBasedMultimap f13143e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0768g(AbstractMapBasedMultimap abstractMapBasedMultimap, Map map) {
        super(map);
        this.f13143e = abstractMapBasedMultimap;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        Q3.F.a(iterator());
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean containsAll(Collection<?> collection) {
        return this.f2868b.keySet().containsAll(collection);
    }

    @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        return this == obj || this.f2868b.keySet().equals(obj);
    }

    @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
    public int hashCode() {
        return this.f2868b.keySet().hashCode();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<Object> iterator() {
        return new C0767f(this, this.f2868b.entrySet().iterator());
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        int i2;
        Collection collection = (Collection) this.f2868b.remove(obj);
        if (collection != null) {
            i2 = collection.size();
            collection.clear();
            this.f13143e.f13037n -= i2;
        } else {
            i2 = 0;
        }
        return i2 > 0;
    }
}
