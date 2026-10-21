package com.google.common.collect;

import Q3.C0249t;
import Q3.s0;
import Q3.x0;
import a.AbstractC0373c;
import java.util.Arrays;
import java.util.Collection;
import java.util.Objects;
import java.util.Set;
import java.util.SortedSet;

/* loaded from: classes2.dex */
public abstract class ImmutableSet<E> extends ImmutableCollection<E> implements Set<E> {
    private static final long serialVersionUID = 912559;

    /* renamed from: e, reason: collision with root package name */
    public transient ImmutableList f13079e;

    public static <E> z builder() {
        return new z();
    }

    public static <E> z builderWithExpectedSize(int i2) {
        V3.r.b(i2, "expectedSize");
        z zVar = new z(i2);
        zVar.f13178d = new Object[e(i2)];
        return zVar;
    }

    public static <E> ImmutableSet<E> copyOf(Collection<? extends E> collection) {
        if ((collection instanceof ImmutableSet) && !(collection instanceof SortedSet)) {
            ImmutableSet<E> immutableSet = (ImmutableSet) collection;
            if (!immutableSet.isPartialView()) {
                return immutableSet;
            }
        }
        Object[] array = collection.toArray();
        return f(array.length, array);
    }

    public static int e(int i2) {
        int max = Math.max(i2, 2);
        if (max >= 751619276) {
            P3.v.checkArgument(max < 1073741824, "collection too large");
            return 1073741824;
        }
        int highestOneBit = Integer.highestOneBit(max - 1) << 1;
        while (highestOneBit * 0.7d < max) {
            highestOneBit <<= 1;
        }
        return highestOneBit;
    }

    public static ImmutableSet f(int i2, Object... objArr) {
        if (i2 == 0) {
            return of();
        }
        if (i2 == 1) {
            Object obj = objArr[0];
            Objects.requireNonNull(obj);
            return of(obj);
        }
        int e3 = e(i2);
        Object[] objArr2 = new Object[e3];
        int i7 = e3 - 1;
        int i8 = 0;
        int i9 = 0;
        for (int i10 = 0; i10 < i2; i10++) {
            Object obj2 = objArr[i10];
            if (obj2 == null) {
                throw new NullPointerException(A.i.f(i10, "at index "));
            }
            int hashCode = obj2.hashCode();
            int d7 = AbstractC0373c.d(hashCode);
            while (true) {
                int i11 = d7 & i7;
                Object obj3 = objArr2[i11];
                if (obj3 == null) {
                    objArr[i9] = obj2;
                    objArr2[i11] = obj2;
                    i8 += hashCode;
                    i9++;
                    break;
                }
                if (obj3.equals(obj2)) {
                    break;
                }
                d7++;
            }
        }
        Arrays.fill(objArr, i9, i2, (Object) null);
        if (i9 == 1) {
            Object obj4 = objArr[0];
            Objects.requireNonNull(obj4);
            return new SingletonImmutableSet(obj4);
        }
        if (e(i9) < e3 / 2) {
            return f(i9, objArr);
        }
        int length = objArr.length;
        if (i9 < (length >> 1) + (length >> 2)) {
            objArr = Arrays.copyOf(objArr, i9);
        }
        return new RegularImmutableSet(objArr, i8, objArr2, i7, i9);
    }

    public static <E> ImmutableSet<E> of() {
        return RegularImmutableSet.f13118r;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public ImmutableList<E> asList() {
        ImmutableList<E> immutableList = this.f13079e;
        if (immutableList != null) {
            return immutableList;
        }
        ImmutableList<E> g7 = g();
        this.f13079e = g7;
        return g7;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof ImmutableSet) && (this instanceof RegularImmutableSet)) {
            ImmutableSet immutableSet = (ImmutableSet) obj;
            immutableSet.getClass();
            if ((immutableSet instanceof RegularImmutableSet) && hashCode() != obj.hashCode()) {
                return false;
            }
        }
        return s0.a(obj, this);
    }

    public ImmutableList g() {
        Object[] array = toArray();
        C0249t c0249t = ImmutableList.f13065e;
        return ImmutableList.e(array.length, array);
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return s0.b(this);
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public abstract x0 iterator();

    public static <E> ImmutableSet<E> of(E e3) {
        return new SingletonImmutableSet(e3);
    }

    public static <E> ImmutableSet<E> of(E e3, E e7) {
        return f(2, e3, e7);
    }

    public static <E> ImmutableSet<E> of(E e3, E e7, E e8) {
        return f(3, e3, e7, e8);
    }

    public static <E> ImmutableSet<E> of(E e3, E e7, E e8, E e9, E e10) {
        return f(5, e3, e7, e8, e9, e10);
    }

    public static <E> ImmutableSet<E> copyOf(E[] eArr) {
        int length = eArr.length;
        if (length == 0) {
            return of();
        }
        if (length != 1) {
            return f(eArr.length, (Object[]) eArr.clone());
        }
        return of((Object) eArr[0]);
    }

    @SafeVarargs
    public static <E> ImmutableSet<E> of(E e3, E e7, E e8, E e9, E e10, E e11, E... eArr) {
        P3.v.checkArgument(eArr.length <= 2147483641, "the total number of elements must fit in an int");
        int length = eArr.length + 6;
        Object[] objArr = new Object[length];
        objArr[0] = e3;
        objArr[1] = e7;
        objArr[2] = e8;
        objArr[3] = e9;
        objArr[4] = e10;
        objArr[5] = e11;
        System.arraycopy(eArr, 0, objArr, 6, eArr.length);
        return f(length, objArr);
    }
}
