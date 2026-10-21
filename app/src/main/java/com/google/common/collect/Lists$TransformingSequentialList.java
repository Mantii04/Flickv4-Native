package com.google.common.collect;

import java.io.Serializable;
import java.util.AbstractSequentialList;
import java.util.List;
import java.util.ListIterator;

/* loaded from: classes2.dex */
class Lists$TransformingSequentialList<F, T> extends AbstractSequentialList<T> implements Serializable {
    private static final long serialVersionUID = 0;

    /* renamed from: b, reason: collision with root package name */
    public final List f13088b;

    /* renamed from: e, reason: collision with root package name */
    public final P3.p f13089e;

    public Lists$TransformingSequentialList(List list, P3.p pVar) {
        this.f13088b = (List) P3.v.checkNotNull(list);
        this.f13089e = (P3.p) P3.v.checkNotNull(pVar);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean isEmpty() {
        return this.f13088b.isEmpty();
    }

    @Override // java.util.AbstractSequentialList, java.util.AbstractList, java.util.List
    public ListIterator<T> listIterator(int i2) {
        return new A(this, this.f13088b.listIterator(i2), 1);
    }

    @Override // java.util.AbstractList
    public void removeRange(int i2, int i7) {
        this.f13088b.subList(i2, i7).clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f13088b.size();
    }
}
