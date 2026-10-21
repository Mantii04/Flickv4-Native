package com.google.common.collect;

import Q3.x0;
import a.AbstractC0373c;

/* loaded from: classes2.dex */
final class RegularImmutableSet<E> extends ImmutableSet<E> {

    /* renamed from: q, reason: collision with root package name */
    public static final Object[] f13117q;

    /* renamed from: r, reason: collision with root package name */
    public static final RegularImmutableSet f13118r;

    /* renamed from: f, reason: collision with root package name */
    public final transient Object[] f13119f;

    /* renamed from: j, reason: collision with root package name */
    public final transient int f13120j;

    /* renamed from: m, reason: collision with root package name */
    public final transient Object[] f13121m;

    /* renamed from: n, reason: collision with root package name */
    public final transient int f13122n;

    /* renamed from: p, reason: collision with root package name */
    public final transient int f13123p;

    static {
        Object[] objArr = new Object[0];
        f13117q = objArr;
        f13118r = new RegularImmutableSet(objArr, 0, objArr, 0, 0);
    }

    public RegularImmutableSet(Object[] objArr, int i2, Object[] objArr2, int i7, int i8) {
        this.f13119f = objArr;
        this.f13120j = i2;
        this.f13121m = objArr2;
        this.f13122n = i7;
        this.f13123p = i8;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final int a(int i2, Object[] objArr) {
        Object[] objArr2 = this.f13119f;
        int i7 = this.f13123p;
        System.arraycopy(objArr2, 0, objArr, i2, i7);
        return i2 + i7;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final Object[] b() {
        return this.f13119f;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final int c() {
        return this.f13123p;
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        if (obj != null) {
            Object[] objArr = this.f13121m;
            if (objArr.length != 0) {
                int e3 = AbstractC0373c.e(obj);
                while (true) {
                    int i2 = e3 & this.f13122n;
                    Object obj2 = objArr[i2];
                    if (obj2 == null) {
                        return false;
                    }
                    if (obj2.equals(obj)) {
                        return true;
                    }
                    e3 = i2 + 1;
                }
            }
        }
        return false;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final int d() {
        return 0;
    }

    @Override // com.google.common.collect.ImmutableSet
    public final ImmutableList g() {
        return ImmutableList.e(this.f13123p, this.f13119f);
    }

    @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
    public int hashCode() {
        return this.f13120j;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final boolean isPartialView() {
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.f13123p;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public x0 iterator() {
        return asList().iterator();
    }
}
