package com.google.common.collect;

import Q3.C0248s;
import Q3.C0249t;
import Q3.h0;
import Q3.x0;
import Q3.y0;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* loaded from: classes2.dex */
public abstract class ImmutableList<E> extends ImmutableCollection<E> implements List<E>, RandomAccess {

    /* renamed from: e, reason: collision with root package name */
    public static final C0249t f13065e = new C0249t(0, RegularImmutableList.f13096m);
    private static final long serialVersionUID = -889275714;

    public class SubList extends ImmutableList<E> {

        /* renamed from: f, reason: collision with root package name */
        public final transient int f13066f;

        /* renamed from: j, reason: collision with root package name */
        public final transient int f13067j;

        public SubList(int i2, int i7) {
            this.f13066f = i2;
            this.f13067j = i7;
        }

        @Override // com.google.common.collect.ImmutableCollection
        public final Object[] b() {
            return ImmutableList.this.b();
        }

        @Override // com.google.common.collect.ImmutableCollection
        public final int c() {
            return ImmutableList.this.d() + this.f13066f + this.f13067j;
        }

        @Override // com.google.common.collect.ImmutableCollection
        public final int d() {
            return ImmutableList.this.d() + this.f13066f;
        }

        @Override // java.util.List
        public E get(int i2) {
            P3.v.checkElementIndex(i2, this.f13067j);
            return ImmutableList.this.get(i2 + this.f13066f);
        }

        @Override // com.google.common.collect.ImmutableCollection
        public final boolean isPartialView() {
            return true;
        }

        @Override // com.google.common.collect.ImmutableList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
        public /* bridge */ /* synthetic */ Iterator iterator() {
            return super.iterator();
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        public /* bridge */ /* synthetic */ ListIterator listIterator() {
            return super.listIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f13067j;
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        public /* bridge */ /* synthetic */ ListIterator listIterator(int i2) {
            return super.listIterator(i2);
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        public ImmutableList<E> subList(int i2, int i7) {
            P3.v.checkPositionIndexes(i2, i7, this.f13067j);
            int i8 = this.f13066f;
            return ImmutableList.this.subList(i2 + i8, i7 + i8);
        }
    }

    public static <E> C0248s builder() {
        return new C0248s();
    }

    public static <E> C0248s builderWithExpectedSize(int i2) {
        V3.r.b(i2, "expectedSize");
        return new C0248s(i2);
    }

    public static <E> ImmutableList<E> copyOf(Iterable<? extends E> iterable) {
        P3.v.checkNotNull(iterable);
        return iterable instanceof Collection ? copyOf((Collection) iterable) : copyOf(iterable.iterator());
    }

    public static ImmutableList e(int i2, Object[] objArr) {
        return i2 == 0 ? of() : new RegularImmutableList(objArr, i2);
    }

    public static <E> ImmutableList<E> of() {
        return RegularImmutableList.f13096m;
    }

    public static <E> ImmutableList<E> sortedCopyOf(Comparator<? super E> comparator, Iterable<? extends E> iterable) {
        P3.v.checkNotNull(comparator);
        Object[] array = (iterable instanceof Collection ? (Collection) iterable : B.newArrayList(iterable.iterator())).toArray();
        h0.a(array.length, array);
        Arrays.sort(array, comparator);
        return e(array.length, array);
    }

    @Override // com.google.common.collect.ImmutableCollection
    public int a(int i2, Object[] objArr) {
        int size = size();
        for (int i7 = 0; i7 < size; i7++) {
            objArr[i2 + i7] = get(i7);
        }
        return i2 + size;
    }

    @Override // java.util.List
    @Deprecated
    public final void add(int i2, E e3) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @Deprecated
    public final boolean addAll(int i2, Collection<? extends E> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.ImmutableCollection
    @Deprecated
    public final ImmutableList<E> asList() {
        return this;
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (obj == P3.v.checkNotNull(this)) {
            return true;
        }
        if (obj instanceof List) {
            List list = (List) obj;
            int size = size();
            if (size == list.size()) {
                if (!(list instanceof RandomAccess)) {
                    return Q3.F.elementsEqual(iterator(), list.iterator());
                }
                for (int i2 = 0; i2 < size; i2++) {
                    if (P3.u.equal(get(i2), list.get(i2))) {
                    }
                }
                return true;
            }
        }
        return false;
    }

    @Override // java.util.Collection, java.util.List
    public int hashCode() {
        int size = size();
        int i2 = 1;
        for (int i7 = 0; i7 < size; i7++) {
            i2 = ~(~(get(i7).hashCode() + (i2 * 31)));
        }
        return i2;
    }

    @Override // java.util.List
    public int indexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            if (obj.equals(get(i2))) {
                return i2;
            }
        }
        return -1;
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        for (int size = size() - 1; size >= 0; size--) {
            if (obj.equals(get(size))) {
                return size;
            }
        }
        return -1;
    }

    @Override // java.util.List
    @Deprecated
    public final E remove(int i2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @Deprecated
    public final E set(int i2, E e3) {
        throw new UnsupportedOperationException();
    }

    public static <E> ImmutableList<E> of(E e3) {
        Object[] objArr = {e3};
        h0.a(1, objArr);
        return e(1, objArr);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public x0 iterator() {
        return listIterator();
    }

    @Override // java.util.List
    public ImmutableList<E> subList(int i2, int i7) {
        P3.v.checkPositionIndexes(i2, i7, size());
        int i8 = i7 - i2;
        return i8 == size() ? this : i8 == 0 ? of() : new SubList(i2, i8);
    }

    @Override // java.util.List
    public y0 listIterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    public y0 listIterator(int i2) {
        P3.v.checkPositionIndex(i2, size());
        if (isEmpty()) {
            return f13065e;
        }
        return new C0249t(i2, this);
    }

    public static <E> ImmutableList<E> copyOf(Collection<? extends E> collection) {
        if (collection instanceof ImmutableCollection) {
            ImmutableList<E> asList = ((ImmutableCollection) collection).asList();
            if (!asList.isPartialView()) {
                return asList;
            }
            Object[] array = asList.toArray();
            return e(array.length, array);
        }
        Object[] array2 = collection.toArray();
        h0.a(array2.length, array2);
        return e(array2.length, array2);
    }

    public static <E> ImmutableList<E> of(E e3, E e7) {
        Object[] objArr = {e3, e7};
        h0.a(2, objArr);
        return e(2, objArr);
    }

    public static <E> ImmutableList<E> of(E e3, E e7, E e8) {
        Object[] objArr = {e3, e7, e8};
        h0.a(3, objArr);
        return e(3, objArr);
    }

    public static <E> ImmutableList<E> of(E e3, E e7, E e8, E e9, E e10) {
        Object[] objArr = {e3, e7, e8, e9, e10};
        h0.a(5, objArr);
        return e(5, objArr);
    }

    public static <E> ImmutableList<E> copyOf(Iterator<? extends E> it) {
        if (!it.hasNext()) {
            return of();
        }
        E next = it.next();
        if (!it.hasNext()) {
            return of((Object) next);
        }
        return (ImmutableList<E>) new C0248s().add((Object) next).addAll((Iterator<Object>) it).build();
    }

    public static <E> ImmutableList<E> of(E e3, E e7, E e8, E e9, E e10, E e11) {
        Object[] objArr = {e3, e7, e8, e9, e10, e11};
        h0.a(6, objArr);
        return e(6, objArr);
    }

    public static <E> ImmutableList<E> of(E e3, E e7, E e8, E e9, E e10, E e11, E e12) {
        Object[] objArr = {e3, e7, e8, e9, e10, e11, e12};
        h0.a(7, objArr);
        return e(7, objArr);
    }

    public static <E> ImmutableList<E> copyOf(E[] eArr) {
        if (eArr.length == 0) {
            return of();
        }
        Object[] objArr = (Object[]) eArr.clone();
        h0.a(objArr.length, objArr);
        return e(objArr.length, objArr);
    }

    @SafeVarargs
    public static <E> ImmutableList<E> of(E e3, E e7, E e8, E e9, E e10, E e11, E e12, E e13, E e14, E e15, E e16, E e17, E... eArr) {
        P3.v.checkArgument(eArr.length <= 2147483635, "the total number of elements must fit in an int");
        int length = eArr.length + 12;
        Object[] objArr = new Object[length];
        objArr[0] = e3;
        objArr[1] = e7;
        objArr[2] = e8;
        objArr[3] = e9;
        objArr[4] = e10;
        objArr[5] = e11;
        objArr[6] = e12;
        objArr[7] = e13;
        objArr[8] = e14;
        objArr[9] = e15;
        objArr[10] = e16;
        objArr[11] = e17;
        System.arraycopy(eArr, 0, objArr, 12, eArr.length);
        h0.a(length, objArr);
        return e(length, objArr);
    }
}
