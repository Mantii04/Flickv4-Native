package v5;

import java.util.AbstractList;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes2.dex */
public final class k extends AbstractC1771g {

    /* renamed from: j, reason: collision with root package name */
    public static final Object[] f20640j;

    /* renamed from: b, reason: collision with root package name */
    public int f20641b;

    /* renamed from: e, reason: collision with root package name */
    public Object[] f20642e = f20640j;

    /* renamed from: f, reason: collision with root package name */
    public int f20643f;

    static {
        new j(null);
        f20640j = new Object[0];
    }

    public final void a(int i2, Collection collection) {
        Iterator it = collection.iterator();
        int length = this.f20642e.length;
        while (i2 < length && it.hasNext()) {
            this.f20642e[i2] = it.next();
            i2++;
        }
        int i7 = this.f20641b;
        for (int i8 = 0; i8 < i7 && it.hasNext(); i8++) {
            this.f20642e[i8] = it.next();
        }
        this.f20643f = collection.size() + size();
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(Object obj) {
        addLast(obj);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<Object> elements) {
        kotlin.jvm.internal.j.checkNotNullParameter(elements, "elements");
        if (elements.isEmpty()) {
            return false;
        }
        h();
        c(elements.size() + size());
        a(g(size() + this.f20641b), elements);
        return true;
    }

    public final void addFirst(Object obj) {
        h();
        c(size() + 1);
        int i2 = this.f20641b;
        int lastIndex = i2 == 0 ? n.getLastIndex(this.f20642e) : i2 - 1;
        this.f20641b = lastIndex;
        this.f20642e[lastIndex] = obj;
        this.f20643f = size() + 1;
    }

    public final void addLast(Object obj) {
        h();
        c(size() + 1);
        this.f20642e[g(size() + this.f20641b)] = obj;
        this.f20643f = size() + 1;
    }

    public final void c(int i2) {
        if (i2 < 0) {
            throw new IllegalStateException("Deque is too big.");
        }
        Object[] objArr = this.f20642e;
        if (i2 <= objArr.length) {
            return;
        }
        if (objArr == f20640j) {
            this.f20642e = new Object[M5.g.coerceAtLeast(i2, 10)];
            return;
        }
        Object[] objArr2 = new Object[AbstractC1769e.f20637b.newCapacity$kotlin_stdlib(objArr.length, i2)];
        Object[] objArr3 = this.f20642e;
        m.copyInto(objArr3, objArr2, 0, this.f20641b, objArr3.length);
        Object[] objArr4 = this.f20642e;
        int length = objArr4.length;
        int i7 = this.f20641b;
        m.copyInto(objArr4, objArr2, length - i7, 0, i7);
        this.f20641b = 0;
        this.f20642e = objArr2;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        if (!isEmpty()) {
            h();
            f(this.f20641b, g(size() + this.f20641b));
        }
        this.f20641b = 0;
        this.f20643f = 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    public final int d(int i2) {
        if (i2 == n.getLastIndex(this.f20642e)) {
            return 0;
        }
        return i2 + 1;
    }

    public final int e(int i2) {
        return i2 < 0 ? i2 + this.f20642e.length : i2;
    }

    public final void f(int i2, int i7) {
        if (i2 < i7) {
            m.fill(this.f20642e, (Object) null, i2, i7);
            return;
        }
        Object[] objArr = this.f20642e;
        m.fill(objArr, (Object) null, i2, objArr.length);
        m.fill(this.f20642e, (Object) null, 0, i7);
    }

    public final int g(int i2) {
        Object[] objArr = this.f20642e;
        return i2 >= objArr.length ? i2 - objArr.length : i2;
    }

    @Override // java.util.AbstractList, java.util.List
    public Object get(int i2) {
        AbstractC1769e.f20637b.checkElementIndex$kotlin_stdlib(i2, size());
        return this.f20642e[g(this.f20641b + i2)];
    }

    @Override // v5.AbstractC1771g
    public int getSize() {
        return this.f20643f;
    }

    public final void h() {
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object obj) {
        int i2;
        int g7 = g(size() + this.f20641b);
        int i7 = this.f20641b;
        if (i7 < g7) {
            while (i7 < g7) {
                if (kotlin.jvm.internal.j.areEqual(obj, this.f20642e[i7])) {
                    i2 = this.f20641b;
                } else {
                    i7++;
                }
            }
            return -1;
        }
        if (i7 < g7) {
            return -1;
        }
        int length = this.f20642e.length;
        while (true) {
            if (i7 >= length) {
                for (int i8 = 0; i8 < g7; i8++) {
                    if (kotlin.jvm.internal.j.areEqual(obj, this.f20642e[i8])) {
                        i7 = i8 + this.f20642e.length;
                        i2 = this.f20641b;
                    }
                }
                return -1;
            }
            if (kotlin.jvm.internal.j.areEqual(obj, this.f20642e[i7])) {
                i2 = this.f20641b;
                break;
            }
            i7++;
        }
        return i7 - i2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.AbstractList, java.util.List
    public int lastIndexOf(Object obj) {
        int lastIndex;
        int i2;
        int g7 = g(size() + this.f20641b);
        int i7 = this.f20641b;
        if (i7 < g7) {
            lastIndex = g7 - 1;
            if (i7 <= lastIndex) {
                while (!kotlin.jvm.internal.j.areEqual(obj, this.f20642e[lastIndex])) {
                    if (lastIndex != i7) {
                        lastIndex--;
                    }
                }
                i2 = this.f20641b;
                return lastIndex - i2;
            }
            return -1;
        }
        if (i7 > g7) {
            int i8 = g7 - 1;
            while (true) {
                if (-1 >= i8) {
                    lastIndex = n.getLastIndex(this.f20642e);
                    int i9 = this.f20641b;
                    if (i9 <= lastIndex) {
                        while (!kotlin.jvm.internal.j.areEqual(obj, this.f20642e[lastIndex])) {
                            if (lastIndex != i9) {
                                lastIndex--;
                            }
                        }
                        i2 = this.f20641b;
                    }
                } else {
                    if (kotlin.jvm.internal.j.areEqual(obj, this.f20642e[i8])) {
                        lastIndex = i8 + this.f20642e.length;
                        i2 = this.f20641b;
                        break;
                    }
                    i8--;
                }
            }
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object obj) {
        int indexOf = indexOf(obj);
        if (indexOf == -1) {
            return false;
        }
        remove(indexOf);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean removeAll(Collection<? extends Object> elements) {
        int g7;
        kotlin.jvm.internal.j.checkNotNullParameter(elements, "elements");
        boolean z6 = false;
        z6 = false;
        z6 = false;
        if (!isEmpty() && this.f20642e.length != 0) {
            int g8 = g(size() + this.f20641b);
            int i2 = this.f20641b;
            if (i2 < g8) {
                g7 = i2;
                while (i2 < g8) {
                    Object obj = this.f20642e[i2];
                    if (elements.contains(obj)) {
                        z6 = true;
                    } else {
                        this.f20642e[g7] = obj;
                        g7++;
                    }
                    i2++;
                }
                m.fill(this.f20642e, (Object) null, g7, g8);
            } else {
                int length = this.f20642e.length;
                boolean z7 = false;
                int i7 = i2;
                while (i2 < length) {
                    Object[] objArr = this.f20642e;
                    Object obj2 = objArr[i2];
                    objArr[i2] = null;
                    if (elements.contains(obj2)) {
                        z7 = true;
                    } else {
                        this.f20642e[i7] = obj2;
                        i7++;
                    }
                    i2++;
                }
                g7 = g(i7);
                for (int i8 = 0; i8 < g8; i8++) {
                    Object[] objArr2 = this.f20642e;
                    Object obj3 = objArr2[i8];
                    objArr2[i8] = null;
                    if (elements.contains(obj3)) {
                        z7 = true;
                    } else {
                        this.f20642e[g7] = obj3;
                        g7 = d(g7);
                    }
                }
                z6 = z7;
            }
            if (z6) {
                h();
                this.f20643f = e(g7 - this.f20641b);
            }
        }
        return z6;
    }

    @Override // v5.AbstractC1771g
    public Object removeAt(int i2) {
        AbstractC1769e.f20637b.checkElementIndex$kotlin_stdlib(i2, size());
        if (i2 == p.getLastIndex(this)) {
            return removeLast();
        }
        if (i2 == 0) {
            return removeFirst();
        }
        h();
        int g7 = g(this.f20641b + i2);
        Object obj = this.f20642e[g7];
        if (i2 < (size() >> 1)) {
            int i7 = this.f20641b;
            if (g7 >= i7) {
                Object[] objArr = this.f20642e;
                m.copyInto(objArr, objArr, i7 + 1, i7, g7);
            } else {
                Object[] objArr2 = this.f20642e;
                m.copyInto(objArr2, objArr2, 1, 0, g7);
                Object[] objArr3 = this.f20642e;
                objArr3[0] = objArr3[objArr3.length - 1];
                int i8 = this.f20641b;
                m.copyInto(objArr3, objArr3, i8 + 1, i8, objArr3.length - 1);
            }
            Object[] objArr4 = this.f20642e;
            int i9 = this.f20641b;
            objArr4[i9] = null;
            this.f20641b = d(i9);
        } else {
            int g8 = g(p.getLastIndex(this) + this.f20641b);
            if (g7 <= g8) {
                Object[] objArr5 = this.f20642e;
                m.copyInto(objArr5, objArr5, g7, g7 + 1, g8 + 1);
            } else {
                Object[] objArr6 = this.f20642e;
                m.copyInto(objArr6, objArr6, g7, g7 + 1, objArr6.length);
                Object[] objArr7 = this.f20642e;
                objArr7[objArr7.length - 1] = objArr7[0];
                m.copyInto(objArr7, objArr7, 0, 1, g8 + 1);
            }
            this.f20642e[g8] = null;
        }
        this.f20643f = size() - 1;
        return obj;
    }

    public final Object removeFirst() {
        if (isEmpty()) {
            throw new NoSuchElementException("ArrayDeque is empty.");
        }
        h();
        Object[] objArr = this.f20642e;
        int i2 = this.f20641b;
        Object obj = objArr[i2];
        objArr[i2] = null;
        this.f20641b = d(i2);
        this.f20643f = size() - 1;
        return obj;
    }

    public final Object removeFirstOrNull() {
        if (isEmpty()) {
            return null;
        }
        return removeFirst();
    }

    public final Object removeLast() {
        if (isEmpty()) {
            throw new NoSuchElementException("ArrayDeque is empty.");
        }
        h();
        int g7 = g(p.getLastIndex(this) + this.f20641b);
        Object[] objArr = this.f20642e;
        Object obj = objArr[g7];
        objArr[g7] = null;
        this.f20643f = size() - 1;
        return obj;
    }

    @Override // java.util.AbstractList
    public void removeRange(int i2, int i7) {
        AbstractC1769e.f20637b.checkRangeIndexes$kotlin_stdlib(i2, i7, size());
        int i8 = i7 - i2;
        if (i8 == 0) {
            return;
        }
        if (i8 == size()) {
            clear();
            return;
        }
        if (i8 == 1) {
            remove(i2);
            return;
        }
        h();
        if (i2 < size() - i7) {
            int g7 = g((i2 - 1) + this.f20641b);
            int g8 = g((i7 - 1) + this.f20641b);
            while (i2 > 0) {
                int i9 = g7 + 1;
                int min = Math.min(i2, Math.min(i9, g8 + 1));
                Object[] objArr = this.f20642e;
                int i10 = g8 - min;
                int i11 = g7 - min;
                m.copyInto(objArr, objArr, i10 + 1, i11 + 1, i9);
                g7 = e(i11);
                g8 = e(i10);
                i2 -= min;
            }
            int g9 = g(this.f20641b + i8);
            f(this.f20641b, g9);
            this.f20641b = g9;
        } else {
            int g10 = g(this.f20641b + i7);
            int g11 = g(this.f20641b + i2);
            int size = size();
            while (true) {
                size -= i7;
                if (size <= 0) {
                    break;
                }
                Object[] objArr2 = this.f20642e;
                i7 = Math.min(size, Math.min(objArr2.length - g10, objArr2.length - g11));
                Object[] objArr3 = this.f20642e;
                int i12 = g10 + i7;
                m.copyInto(objArr3, objArr3, g11, g10, i12);
                g10 = g(i12);
                g11 = g(g11 + i7);
            }
            int g12 = g(size() + this.f20641b);
            f(e(g12 - i8), g12);
        }
        this.f20643f = size() - i8;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean retainAll(Collection<? extends Object> elements) {
        int g7;
        kotlin.jvm.internal.j.checkNotNullParameter(elements, "elements");
        boolean z6 = false;
        z6 = false;
        z6 = false;
        if (!isEmpty() && this.f20642e.length != 0) {
            int g8 = g(size() + this.f20641b);
            int i2 = this.f20641b;
            if (i2 < g8) {
                g7 = i2;
                while (i2 < g8) {
                    Object obj = this.f20642e[i2];
                    if (elements.contains(obj)) {
                        this.f20642e[g7] = obj;
                        g7++;
                    } else {
                        z6 = true;
                    }
                    i2++;
                }
                m.fill(this.f20642e, (Object) null, g7, g8);
            } else {
                int length = this.f20642e.length;
                boolean z7 = false;
                int i7 = i2;
                while (i2 < length) {
                    Object[] objArr = this.f20642e;
                    Object obj2 = objArr[i2];
                    objArr[i2] = null;
                    if (elements.contains(obj2)) {
                        this.f20642e[i7] = obj2;
                        i7++;
                    } else {
                        z7 = true;
                    }
                    i2++;
                }
                g7 = g(i7);
                for (int i8 = 0; i8 < g8; i8++) {
                    Object[] objArr2 = this.f20642e;
                    Object obj3 = objArr2[i8];
                    objArr2[i8] = null;
                    if (elements.contains(obj3)) {
                        this.f20642e[g7] = obj3;
                        g7 = d(g7);
                    } else {
                        z7 = true;
                    }
                }
                z6 = z7;
            }
            if (z6) {
                h();
                this.f20643f = e(g7 - this.f20641b);
            }
        }
        return z6;
    }

    @Override // java.util.AbstractList, java.util.List
    public Object set(int i2, Object obj) {
        AbstractC1769e.f20637b.checkElementIndex$kotlin_stdlib(i2, size());
        int g7 = g(this.f20641b + i2);
        Object[] objArr = this.f20642e;
        Object obj2 = objArr[g7];
        objArr[g7] = obj;
        return obj2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public <T> T[] toArray(T[] array) {
        kotlin.jvm.internal.j.checkNotNullParameter(array, "array");
        if (array.length < size()) {
            array = (T[]) l.arrayOfNulls(array, size());
        }
        T[] tArr = array;
        int g7 = g(size() + this.f20641b);
        int i2 = this.f20641b;
        if (i2 < g7) {
            m.copyInto$default(this.f20642e, tArr, 0, i2, g7, 2, (Object) null);
        } else if (!isEmpty()) {
            Object[] objArr = this.f20642e;
            m.copyInto(objArr, tArr, 0, this.f20641b, objArr.length);
            Object[] objArr2 = this.f20642e;
            m.copyInto(objArr2, tArr, objArr2.length - this.f20641b, 0, g7);
        }
        return (T[]) o.terminateCollectionToArray(size(), tArr);
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int i2, Object obj) {
        AbstractC1769e.f20637b.checkPositionIndex$kotlin_stdlib(i2, size());
        if (i2 == size()) {
            addLast(obj);
            return;
        }
        if (i2 == 0) {
            addFirst(obj);
            return;
        }
        h();
        c(size() + 1);
        int g7 = g(this.f20641b + i2);
        if (i2 < ((size() + 1) >> 1)) {
            int lastIndex = g7 == 0 ? n.getLastIndex(this.f20642e) : g7 - 1;
            int i7 = this.f20641b;
            int lastIndex2 = i7 == 0 ? n.getLastIndex(this.f20642e) : i7 - 1;
            int i8 = this.f20641b;
            if (lastIndex >= i8) {
                Object[] objArr = this.f20642e;
                objArr[lastIndex2] = objArr[i8];
                m.copyInto(objArr, objArr, i8, i8 + 1, lastIndex + 1);
            } else {
                Object[] objArr2 = this.f20642e;
                m.copyInto(objArr2, objArr2, i8 - 1, i8, objArr2.length);
                Object[] objArr3 = this.f20642e;
                objArr3[objArr3.length - 1] = objArr3[0];
                m.copyInto(objArr3, objArr3, 0, 1, lastIndex + 1);
            }
            this.f20642e[lastIndex] = obj;
            this.f20641b = lastIndex2;
        } else {
            int g8 = g(size() + this.f20641b);
            if (g7 < g8) {
                Object[] objArr4 = this.f20642e;
                m.copyInto(objArr4, objArr4, g7 + 1, g7, g8);
            } else {
                Object[] objArr5 = this.f20642e;
                m.copyInto(objArr5, objArr5, 1, 0, g8);
                Object[] objArr6 = this.f20642e;
                objArr6[0] = objArr6[objArr6.length - 1];
                m.copyInto(objArr6, objArr6, g7 + 1, g7, objArr6.length - 1);
            }
            this.f20642e[g7] = obj;
        }
        this.f20643f = size() + 1;
    }

    @Override // java.util.AbstractList, java.util.List
    public boolean addAll(int i2, Collection<Object> elements) {
        kotlin.jvm.internal.j.checkNotNullParameter(elements, "elements");
        AbstractC1769e.f20637b.checkPositionIndex$kotlin_stdlib(i2, size());
        if (elements.isEmpty()) {
            return false;
        }
        if (i2 == size()) {
            return addAll(elements);
        }
        h();
        c(elements.size() + size());
        int g7 = g(size() + this.f20641b);
        int g8 = g(this.f20641b + i2);
        int size = elements.size();
        if (i2 < ((size() + 1) >> 1)) {
            int i7 = this.f20641b;
            int i8 = i7 - size;
            if (g8 < i7) {
                Object[] objArr = this.f20642e;
                m.copyInto(objArr, objArr, i8, i7, objArr.length);
                if (size >= g8) {
                    Object[] objArr2 = this.f20642e;
                    m.copyInto(objArr2, objArr2, objArr2.length - size, 0, g8);
                } else {
                    Object[] objArr3 = this.f20642e;
                    m.copyInto(objArr3, objArr3, objArr3.length - size, 0, size);
                    Object[] objArr4 = this.f20642e;
                    m.copyInto(objArr4, objArr4, 0, size, g8);
                }
            } else if (i8 >= 0) {
                Object[] objArr5 = this.f20642e;
                m.copyInto(objArr5, objArr5, i8, i7, g8);
            } else {
                Object[] objArr6 = this.f20642e;
                i8 += objArr6.length;
                int i9 = g8 - i7;
                int length = objArr6.length - i8;
                if (length >= i9) {
                    m.copyInto(objArr6, objArr6, i8, i7, g8);
                } else {
                    m.copyInto(objArr6, objArr6, i8, i7, i7 + length);
                    Object[] objArr7 = this.f20642e;
                    m.copyInto(objArr7, objArr7, 0, this.f20641b + length, g8);
                }
            }
            this.f20641b = i8;
            a(e(g8 - size), elements);
        } else {
            int i10 = g8 + size;
            if (g8 < g7) {
                int i11 = size + g7;
                Object[] objArr8 = this.f20642e;
                if (i11 <= objArr8.length) {
                    m.copyInto(objArr8, objArr8, i10, g8, g7);
                } else if (i10 >= objArr8.length) {
                    m.copyInto(objArr8, objArr8, i10 - objArr8.length, g8, g7);
                } else {
                    int length2 = g7 - (i11 - objArr8.length);
                    m.copyInto(objArr8, objArr8, 0, length2, g7);
                    Object[] objArr9 = this.f20642e;
                    m.copyInto(objArr9, objArr9, i10, g8, length2);
                }
            } else {
                Object[] objArr10 = this.f20642e;
                m.copyInto(objArr10, objArr10, size, 0, g7);
                Object[] objArr11 = this.f20642e;
                if (i10 >= objArr11.length) {
                    m.copyInto(objArr11, objArr11, i10 - objArr11.length, g8, objArr11.length);
                } else {
                    m.copyInto(objArr11, objArr11, 0, objArr11.length - size, objArr11.length);
                    Object[] objArr12 = this.f20642e;
                    m.copyInto(objArr12, objArr12, i10, g8, objArr12.length - size);
                }
            }
            a(g8, elements);
        }
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public Object[] toArray() {
        return toArray(new Object[size()]);
    }
}
