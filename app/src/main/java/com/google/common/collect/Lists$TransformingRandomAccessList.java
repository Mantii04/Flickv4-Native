package com.google.common.collect;

import java.io.Serializable;
import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* loaded from: classes2.dex */
class Lists$TransformingRandomAccessList<F, T> extends AbstractList<T> implements RandomAccess, Serializable {
    private static final long serialVersionUID = 0;

    /* renamed from: b, reason: collision with root package name */
    public final List f13086b;

    /* renamed from: e, reason: collision with root package name */
    public final P3.p f13087e;

    public Lists$TransformingRandomAccessList(List list, P3.p pVar) {
        this.f13086b = (List) P3.v.checkNotNull(list);
        this.f13087e = (P3.p) P3.v.checkNotNull(pVar);
    }

    @Override // java.util.AbstractList, java.util.List
    public T get(int i2) {
        return (T) this.f13087e.apply(this.f13086b.get(i2));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean isEmpty() {
        return this.f13086b.isEmpty();
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator<T> iterator() {
        return listIterator();
    }

    @Override // java.util.AbstractList, java.util.List
    public ListIterator<T> listIterator(int i2) {
        return new A(this, this.f13086b.listIterator(i2), 0);
    }

    @Override // java.util.AbstractList, java.util.List
    public T remove(int i2) {
        return (T) this.f13087e.apply(this.f13086b.remove(i2));
    }

    @Override // java.util.AbstractList
    public void removeRange(int i2, int i7) {
        this.f13086b.subList(i2, i7).clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f13086b.size();
    }
}
