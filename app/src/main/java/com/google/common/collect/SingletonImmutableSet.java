package com.google.common.collect;

import Q3.x0;

/* loaded from: classes2.dex */
final class SingletonImmutableSet<E> extends ImmutableSet<E> {

    /* renamed from: f, reason: collision with root package name */
    public final transient Object f13126f;

    public SingletonImmutableSet(Object obj) {
        this.f13126f = P3.v.checkNotNull(obj);
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final int a(int i2, Object[] objArr) {
        objArr[i2] = this.f13126f;
        return i2 + 1;
    }

    @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection
    public ImmutableList<E> asList() {
        return ImmutableList.of(this.f13126f);
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        return this.f13126f.equals(obj);
    }

    @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.f13126f.hashCode();
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final boolean isPartialView() {
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        return "[" + this.f13126f.toString() + ']';
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public x0 iterator() {
        return Q3.F.singletonIterator(this.f13126f);
    }
}
