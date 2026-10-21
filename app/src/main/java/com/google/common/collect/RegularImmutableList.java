package com.google.common.collect;

import java.util.Objects;

/* loaded from: classes2.dex */
class RegularImmutableList<E> extends ImmutableList<E> {

    /* renamed from: m, reason: collision with root package name */
    public static final ImmutableList f13096m = new RegularImmutableList(new Object[0], 0);

    /* renamed from: f, reason: collision with root package name */
    public final transient Object[] f13097f;

    /* renamed from: j, reason: collision with root package name */
    public final transient int f13098j;

    public RegularImmutableList(Object[] objArr, int i2) {
        this.f13097f = objArr;
        this.f13098j = i2;
    }

    @Override // com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection
    public final int a(int i2, Object[] objArr) {
        Object[] objArr2 = this.f13097f;
        int i7 = this.f13098j;
        System.arraycopy(objArr2, 0, objArr, i2, i7);
        return i2 + i7;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final Object[] b() {
        return this.f13097f;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final int c() {
        return this.f13098j;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final int d() {
        return 0;
    }

    @Override // java.util.List
    public E get(int i2) {
        P3.v.checkElementIndex(i2, this.f13098j);
        E e3 = (E) this.f13097f[i2];
        Objects.requireNonNull(e3);
        return e3;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final boolean isPartialView() {
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f13098j;
    }
}
