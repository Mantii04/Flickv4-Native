package com.google.common.collect;

import Q3.C0254y;
import Q3.f0;
import Q3.g0;
import Q3.i0;
import Q3.j0;
import Q3.s0;
import Q3.x0;
import java.util.Arrays;
import java.util.Iterator;

/* loaded from: classes2.dex */
public abstract class ImmutableMultiset<E> extends ImmutableMultisetGwtSerializationDependencies<E> implements f0 {
    private static final long serialVersionUID = 912559;

    /* renamed from: e, reason: collision with root package name */
    public transient ImmutableList f13076e;

    /* renamed from: f, reason: collision with root package name */
    public transient ImmutableSet f13077f;

    public final class EntrySet extends IndexedImmutableSet<g0> {
        private static final long serialVersionUID = 0;

        public EntrySet() {
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            if (obj instanceof g0) {
                i0 i0Var = (i0) ((g0) obj);
                if (i0Var.getCount() > 0 && ImmutableMultiset.this.count(i0Var.getElement()) == i0Var.getCount()) {
                    return true;
                }
            }
            return false;
        }

        @Override // com.google.common.collect.IndexedImmutableSet
        public final Object get(int i2) {
            j0 j0Var = ((RegularImmutableMultiset) ImmutableMultiset.this).f13113j;
            P3.v.checkElementIndex(i2, j0Var.f2895c);
            return new i0(j0Var, i2);
        }

        @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
        public int hashCode() {
            return ImmutableMultiset.this.hashCode();
        }

        @Override // com.google.common.collect.ImmutableCollection
        public final boolean isPartialView() {
            ImmutableMultiset.this.getClass();
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return ImmutableMultiset.this.elementSet().size();
        }
    }

    public static <E> ImmutableMultiset<E> copyOf(Iterable<? extends E> iterable) {
        if (iterable instanceof ImmutableMultiset) {
            ImmutableMultiset<E> immutableMultiset = (ImmutableMultiset) iterable;
            immutableMultiset.getClass();
            return immutableMultiset;
        }
        int size = iterable instanceof f0 ? ((f0) iterable).elementSet().size() : 11;
        y yVar = new y();
        yVar.f13177b = false;
        j0 j0Var = new j0();
        j0Var.c(size);
        yVar.f13176a = j0Var;
        yVar.addAll((Iterable<Object>) iterable);
        return (ImmutableMultiset<E>) yVar.build();
    }

    public static <E> ImmutableMultiset<E> of() {
        return RegularImmutableMultiset.f13112p;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final int a(int i2, Object[] objArr) {
        x0 it = entrySet().iterator();
        while (it.hasNext()) {
            i0 i0Var = (i0) ((g0) it.next());
            Arrays.fill(objArr, i2, i0Var.getCount() + i2, i0Var.getElement());
            i2 += i0Var.getCount();
        }
        return i2;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public ImmutableList<E> asList() {
        ImmutableList<E> immutableList = this.f13076e;
        if (immutableList != null) {
            return immutableList;
        }
        ImmutableList<E> asList = super.asList();
        this.f13076e = asList;
        return asList;
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        return count(obj) > 0;
    }

    @Override // Q3.f0
    public abstract ImmutableSet<E> elementSet();

    @Override // java.util.Collection
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0)) {
            return false;
        }
        f0 f0Var = (f0) obj;
        if (size() != f0Var.size() || entrySet().size() != f0Var.entrySet().size()) {
            return false;
        }
        Iterator<g0> it = f0Var.entrySet().iterator();
        while (it.hasNext()) {
            i0 i0Var = (i0) it.next();
            if (count(i0Var.getElement()) != i0Var.getCount()) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection
    public int hashCode() {
        return s0.b(entrySet());
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        return entrySet().toString();
    }

    @Override // Q3.f0
    public ImmutableSet<g0> entrySet() {
        ImmutableSet<g0> immutableSet = this.f13077f;
        if (immutableSet == null) {
            immutableSet = isEmpty() ? ImmutableSet.of() : new EntrySet();
            this.f13077f = immutableSet;
        }
        return immutableSet;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public x0 iterator() {
        return new C0254y(entrySet().iterator());
    }
}
