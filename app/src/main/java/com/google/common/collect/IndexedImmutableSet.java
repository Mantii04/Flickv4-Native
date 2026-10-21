package com.google.common.collect;

import Q3.x0;

/* loaded from: classes2.dex */
abstract class IndexedImmutableSet<E> extends ImmutableSet<E> {
    @Override // com.google.common.collect.ImmutableCollection
    public final int a(int i2, Object[] objArr) {
        return asList().a(i2, objArr);
    }

    @Override // com.google.common.collect.ImmutableSet
    public final ImmutableList g() {
        return new ImmutableList<Object>() { // from class: com.google.common.collect.IndexedImmutableSet.1
            @Override // java.util.List
            public Object get(int i2) {
                return IndexedImmutableSet.this.get(i2);
            }

            @Override // com.google.common.collect.ImmutableCollection
            public final boolean isPartialView() {
                return IndexedImmutableSet.this.isPartialView();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
            public int size() {
                return IndexedImmutableSet.this.size();
            }
        };
    }

    public abstract Object get(int i2);

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public x0 iterator() {
        return asList().iterator();
    }
}
