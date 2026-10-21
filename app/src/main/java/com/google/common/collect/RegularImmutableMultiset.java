package com.google.common.collect;

import Q3.j0;

/* loaded from: classes2.dex */
class RegularImmutableMultiset<E> extends ImmutableMultiset<E> {

    /* renamed from: p, reason: collision with root package name */
    public static final RegularImmutableMultiset f13112p;

    /* renamed from: j, reason: collision with root package name */
    public final transient j0 f13113j;

    /* renamed from: m, reason: collision with root package name */
    public final transient int f13114m;

    /* renamed from: n, reason: collision with root package name */
    public transient ImmutableSet f13115n;

    public final class ElementSet extends IndexedImmutableSet<E> {
        public ElementSet() {
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return RegularImmutableMultiset.this.contains(obj);
        }

        @Override // com.google.common.collect.IndexedImmutableSet
        public final Object get(int i2) {
            j0 j0Var = RegularImmutableMultiset.this.f13113j;
            P3.v.checkElementIndex(i2, j0Var.f2895c);
            return j0Var.f2893a[i2];
        }

        @Override // com.google.common.collect.ImmutableCollection
        public final boolean isPartialView() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return RegularImmutableMultiset.this.f13113j.f2895c;
        }
    }

    static {
        j0 j0Var = new j0();
        j0Var.c(3);
        f13112p = new RegularImmutableMultiset(j0Var);
    }

    public RegularImmutableMultiset(j0 j0Var) {
        this.f13113j = j0Var;
        long j7 = 0;
        int i2 = 0;
        while (true) {
            int i7 = j0Var.f2895c;
            if (i2 >= i7) {
                this.f13114m = com.google.common.primitives.a.saturatedCast(j7);
                return;
            } else {
                P3.v.checkElementIndex(i2, i7);
                j7 += j0Var.f2894b[i2];
                i2++;
            }
        }
    }

    @Override // Q3.f0
    public int count(Object obj) {
        return this.f13113j.get(obj);
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final boolean isPartialView() {
        throw null;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, Q3.f0
    public int size() {
        return this.f13114m;
    }

    @Override // Q3.f0
    public ImmutableSet<E> elementSet() {
        ImmutableSet<E> immutableSet = this.f13115n;
        if (immutableSet != null) {
            return immutableSet;
        }
        ElementSet elementSet = new ElementSet();
        this.f13115n = elementSet;
        return elementSet;
    }
}
