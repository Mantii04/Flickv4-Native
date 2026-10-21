package com.google.common.primitives;

import P3.v;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

/* loaded from: classes2.dex */
class Ints$IntArrayAsList extends AbstractList<Integer> implements RandomAccess, Serializable {
    private static final long serialVersionUID = 0;

    /* renamed from: b, reason: collision with root package name */
    public final int[] f13183b;

    /* renamed from: e, reason: collision with root package name */
    public final int f13184e;

    /* renamed from: f, reason: collision with root package name */
    public final int f13185f;

    public Ints$IntArrayAsList(int i2, int i7, int[] iArr) {
        this.f13183b = iArr;
        this.f13184e = i2;
        this.f13185f = i7;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        if (obj instanceof Integer) {
            return a.a(this.f13183b, ((Integer) obj).intValue(), this.f13184e, this.f13185f) != -1;
        }
        return false;
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Ints$IntArrayAsList)) {
            return super.equals(obj);
        }
        Ints$IntArrayAsList ints$IntArrayAsList = (Ints$IntArrayAsList) obj;
        int size = size();
        if (ints$IntArrayAsList.size() != size) {
            return false;
        }
        for (int i2 = 0; i2 < size; i2++) {
            if (this.f13183b[this.f13184e + i2] != ints$IntArrayAsList.f13183b[ints$IntArrayAsList.f13184e + i2]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int i2 = 1;
        for (int i7 = this.f13184e; i7 < this.f13185f; i7++) {
            i2 = (i2 * 31) + a.hashCode(this.f13183b[i7]);
        }
        return i2;
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object obj) {
        if (!(obj instanceof Integer)) {
            return -1;
        }
        int intValue = ((Integer) obj).intValue();
        int[] iArr = this.f13183b;
        int i2 = this.f13184e;
        int a7 = a.a(iArr, intValue, i2, this.f13185f);
        if (a7 >= 0) {
            return a7 - i2;
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean isEmpty() {
        return false;
    }

    @Override // java.util.AbstractList, java.util.List
    public int lastIndexOf(Object obj) {
        int i2;
        if (obj instanceof Integer) {
            int intValue = ((Integer) obj).intValue();
            int i7 = this.f13185f;
            while (true) {
                i7--;
                i2 = this.f13184e;
                if (i7 < i2) {
                    i7 = -1;
                    break;
                }
                if (this.f13183b[i7] == intValue) {
                    break;
                }
            }
            if (i7 >= 0) {
                return i7 - i2;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f13185f - this.f13184e;
    }

    @Override // java.util.AbstractList, java.util.List
    public List<Integer> subList(int i2, int i7) {
        v.checkPositionIndexes(i2, i7, size());
        if (i2 == i7) {
            return Collections.EMPTY_LIST;
        }
        int i8 = this.f13184e;
        return new Ints$IntArrayAsList(i2 + i8, i8 + i7, this.f13183b);
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        StringBuilder sb = new StringBuilder(size() * 5);
        sb.append('[');
        int[] iArr = this.f13183b;
        int i2 = this.f13184e;
        sb.append(iArr[i2]);
        while (true) {
            i2++;
            if (i2 >= this.f13185f) {
                sb.append(']');
                return sb.toString();
            }
            sb.append(", ");
            sb.append(iArr[i2]);
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public Integer get(int i2) {
        v.checkElementIndex(i2, size());
        return Integer.valueOf(this.f13183b[this.f13184e + i2]);
    }

    @Override // java.util.AbstractList, java.util.List
    public Integer set(int i2, Integer num) {
        v.checkElementIndex(i2, size());
        int i7 = this.f13184e;
        int[] iArr = this.f13183b;
        int i8 = iArr[i7 + i2];
        iArr[i7 + i2] = ((Integer) v.checkNotNull(num)).intValue();
        return Integer.valueOf(i8);
    }
}
