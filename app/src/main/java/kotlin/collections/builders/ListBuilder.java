package kotlin.collections.builders;

import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import kotlin.jvm.internal.g;
import kotlin.jvm.internal.j;
import v5.AbstractC1769e;
import v5.AbstractC1771g;
import v5.m;
import v5.o;
import w5.AbstractC1784d;
import w5.C1782b;
import w5.C1783c;

/* loaded from: classes2.dex */
public final class ListBuilder<E> extends AbstractC1771g implements List<E>, RandomAccess, Serializable {

    /* renamed from: j, reason: collision with root package name */
    public static final ListBuilder f17399j;

    /* renamed from: b, reason: collision with root package name */
    public Object[] f17400b;

    /* renamed from: e, reason: collision with root package name */
    public int f17401e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f17402f;

    public static final class BuilderSubList<E> extends AbstractC1771g implements List<E>, RandomAccess, Serializable {

        /* renamed from: b, reason: collision with root package name */
        public Object[] f17403b;

        /* renamed from: e, reason: collision with root package name */
        public final int f17404e;

        /* renamed from: f, reason: collision with root package name */
        public int f17405f;

        /* renamed from: j, reason: collision with root package name */
        public final BuilderSubList f17406j;

        /* renamed from: m, reason: collision with root package name */
        public final ListBuilder f17407m;

        public BuilderSubList(E[] backing, int i2, int i7, BuilderSubList<E> builderSubList, ListBuilder<E> root) {
            j.checkNotNullParameter(backing, "backing");
            j.checkNotNullParameter(root, "root");
            this.f17403b = backing;
            this.f17404e = i2;
            this.f17405f = i7;
            this.f17406j = builderSubList;
            this.f17407m = root;
            ((AbstractList) this).modCount = ((AbstractList) root).modCount;
        }

        public final void a(int i2, Collection collection, int i7) {
            ((AbstractList) this).modCount++;
            ListBuilder listBuilder = this.f17407m;
            BuilderSubList builderSubList = this.f17406j;
            if (builderSubList != null) {
                builderSubList.a(i2, collection, i7);
            } else {
                listBuilder.a(i2, collection, i7);
            }
            this.f17403b = listBuilder.f17400b;
            this.f17405f += i7;
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean add(E e3) {
            e();
            d();
            c(this.f17404e + this.f17405f, e3);
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean addAll(Collection<? extends E> elements) {
            j.checkNotNullParameter(elements, "elements");
            e();
            d();
            int size = elements.size();
            a(this.f17404e + this.f17405f, elements, size);
            return size > 0;
        }

        public final void c(int i2, Object obj) {
            ((AbstractList) this).modCount++;
            ListBuilder listBuilder = this.f17407m;
            BuilderSubList builderSubList = this.f17406j;
            if (builderSubList != null) {
                builderSubList.c(i2, obj);
            } else {
                ListBuilder.access$addAtInternal(listBuilder, i2, obj);
            }
            this.f17403b = listBuilder.f17400b;
            this.f17405f++;
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public void clear() {
            e();
            d();
            g(this.f17404e, this.f17405f);
        }

        public final void d() {
            if (((AbstractList) this.f17407m).modCount != ((AbstractList) this).modCount) {
                throw new ConcurrentModificationException();
            }
        }

        public final void e() {
            if (this.f17407m.f17402f) {
                throw new UnsupportedOperationException();
            }
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public boolean equals(Object obj) {
            d();
            if (obj == this) {
                return true;
            }
            if (obj instanceof List) {
                return AbstractC1784d.access$subarrayContentEquals(this.f17403b, this.f17404e, this.f17405f, (List) obj);
            }
            return false;
        }

        public final Object f(int i2) {
            ((AbstractList) this).modCount++;
            BuilderSubList builderSubList = this.f17406j;
            this.f17405f--;
            return builderSubList != null ? builderSubList.f(i2) : this.f17407m.e(i2);
        }

        public final void g(int i2, int i7) {
            if (i7 > 0) {
                ((AbstractList) this).modCount++;
            }
            BuilderSubList builderSubList = this.f17406j;
            if (builderSubList != null) {
                builderSubList.g(i2, i7);
            } else {
                this.f17407m.f(i2, i7);
            }
            this.f17405f -= i7;
        }

        @Override // java.util.AbstractList, java.util.List
        public E get(int i2) {
            d();
            AbstractC1769e.f20637b.checkElementIndex$kotlin_stdlib(i2, this.f17405f);
            return (E) this.f17403b[this.f17404e + i2];
        }

        @Override // v5.AbstractC1771g
        public int getSize() {
            d();
            return this.f17405f;
        }

        public final int h(int i2, int i7, Collection collection, boolean z6) {
            BuilderSubList builderSubList = this.f17406j;
            int h7 = builderSubList != null ? builderSubList.h(i2, i7, collection, z6) : this.f17407m.g(i2, i7, collection, z6);
            if (h7 > 0) {
                ((AbstractList) this).modCount++;
            }
            this.f17405f -= h7;
            return h7;
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public int hashCode() {
            d();
            return AbstractC1784d.access$subarrayContentHashCode(this.f17403b, this.f17404e, this.f17405f);
        }

        @Override // java.util.AbstractList, java.util.List
        public int indexOf(Object obj) {
            d();
            for (int i2 = 0; i2 < this.f17405f; i2++) {
                if (j.areEqual(this.f17403b[this.f17404e + i2], obj)) {
                    return i2;
                }
            }
            return -1;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean isEmpty() {
            d();
            return this.f17405f == 0;
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
        public Iterator<E> iterator() {
            return listIterator(0);
        }

        @Override // java.util.AbstractList, java.util.List
        public int lastIndexOf(Object obj) {
            d();
            for (int i2 = this.f17405f - 1; i2 >= 0; i2--) {
                if (j.areEqual(this.f17403b[this.f17404e + i2], obj)) {
                    return i2;
                }
            }
            return -1;
        }

        @Override // java.util.AbstractList, java.util.List
        public ListIterator<E> listIterator() {
            return listIterator(0);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean remove(Object obj) {
            e();
            d();
            int indexOf = indexOf(obj);
            if (indexOf >= 0) {
                remove(indexOf);
            }
            return indexOf >= 0;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean removeAll(Collection<? extends Object> elements) {
            j.checkNotNullParameter(elements, "elements");
            e();
            d();
            return h(this.f17404e, this.f17405f, elements, false) > 0;
        }

        @Override // v5.AbstractC1771g
        public E removeAt(int i2) {
            e();
            d();
            AbstractC1769e.f20637b.checkElementIndex$kotlin_stdlib(i2, this.f17405f);
            return (E) f(this.f17404e + i2);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean retainAll(Collection<? extends Object> elements) {
            j.checkNotNullParameter(elements, "elements");
            e();
            d();
            return h(this.f17404e, this.f17405f, elements, true) > 0;
        }

        @Override // java.util.AbstractList, java.util.List
        public E set(int i2, E e3) {
            e();
            d();
            AbstractC1769e.f20637b.checkElementIndex$kotlin_stdlib(i2, this.f17405f);
            Object[] objArr = this.f17403b;
            int i7 = this.f17404e;
            E e7 = (E) objArr[i7 + i2];
            objArr[i7 + i2] = e3;
            return e7;
        }

        @Override // java.util.AbstractList, java.util.List
        public List<E> subList(int i2, int i7) {
            AbstractC1769e.f20637b.checkRangeIndexes$kotlin_stdlib(i2, i7, this.f17405f);
            return new BuilderSubList(this.f17403b, this.f17404e + i2, i7 - i2, this, this.f17407m);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public <T> T[] toArray(T[] array) {
            j.checkNotNullParameter(array, "array");
            d();
            int length = array.length;
            int i2 = this.f17405f;
            int i7 = this.f17404e;
            if (length >= i2) {
                m.copyInto(this.f17403b, array, 0, i7, i2 + i7);
                return (T[]) o.terminateCollectionToArray(this.f17405f, array);
            }
            T[] tArr = (T[]) Arrays.copyOfRange(this.f17403b, i7, i2 + i7, array.getClass());
            j.checkNotNullExpressionValue(tArr, "copyOfRange(...)");
            return tArr;
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            d();
            return AbstractC1784d.access$subarrayContentToString(this.f17403b, this.f17404e, this.f17405f, this);
        }

        @Override // java.util.AbstractList, java.util.List
        public ListIterator<E> listIterator(int i2) {
            d();
            AbstractC1769e.f20637b.checkPositionIndex$kotlin_stdlib(i2, this.f17405f);
            return new a(this, i2);
        }

        @Override // java.util.AbstractList, java.util.List
        public void add(int i2, E e3) {
            e();
            d();
            AbstractC1769e.f20637b.checkPositionIndex$kotlin_stdlib(i2, this.f17405f);
            c(this.f17404e + i2, e3);
        }

        @Override // java.util.AbstractList, java.util.List
        public boolean addAll(int i2, Collection<? extends E> elements) {
            j.checkNotNullParameter(elements, "elements");
            e();
            d();
            AbstractC1769e.f20637b.checkPositionIndex$kotlin_stdlib(i2, this.f17405f);
            int size = elements.size();
            a(this.f17404e + i2, elements, size);
            return size > 0;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public Object[] toArray() {
            d();
            Object[] objArr = this.f17403b;
            int i2 = this.f17405f;
            int i7 = this.f17404e;
            return m.copyOfRange(objArr, i7, i2 + i7);
        }
    }

    static {
        new C1782b(null);
        ListBuilder listBuilder = new ListBuilder(0);
        listBuilder.f17402f = true;
        f17399j = listBuilder;
    }

    public ListBuilder(int i2) {
        this.f17400b = AbstractC1784d.arrayOfUninitializedElements(i2);
    }

    public static final void access$addAtInternal(ListBuilder listBuilder, int i2, Object obj) {
        ((AbstractList) listBuilder).modCount++;
        listBuilder.d(i2, 1);
        listBuilder.f17400b[i2] = obj;
    }

    public final void a(int i2, Collection collection, int i7) {
        ((AbstractList) this).modCount++;
        d(i2, i7);
        Iterator<E> it = collection.iterator();
        for (int i8 = 0; i8 < i7; i8++) {
            this.f17400b[i2 + i8] = it.next();
        }
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(E e3) {
        c();
        int i2 = this.f17401e;
        ((AbstractList) this).modCount++;
        d(i2, 1);
        this.f17400b[i2] = e3;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends E> elements) {
        j.checkNotNullParameter(elements, "elements");
        c();
        int size = elements.size();
        a(this.f17401e, elements, size);
        return size > 0;
    }

    public final List<E> build() {
        c();
        this.f17402f = true;
        return this.f17401e > 0 ? this : f17399j;
    }

    public final void c() {
        if (this.f17402f) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        c();
        f(0, this.f17401e);
    }

    public final void d(int i2, int i7) {
        int i8 = this.f17401e + i7;
        if (i8 < 0) {
            throw new OutOfMemoryError();
        }
        Object[] objArr = this.f17400b;
        if (i8 > objArr.length) {
            this.f17400b = AbstractC1784d.copyOfUninitializedElements(this.f17400b, AbstractC1769e.f20637b.newCapacity$kotlin_stdlib(objArr.length, i8));
        }
        Object[] objArr2 = this.f17400b;
        m.copyInto(objArr2, objArr2, i2 + i7, i2, this.f17401e);
        this.f17401e += i7;
    }

    public final Object e(int i2) {
        ((AbstractList) this).modCount++;
        Object[] objArr = this.f17400b;
        Object obj = objArr[i2];
        m.copyInto(objArr, objArr, i2, i2 + 1, this.f17401e);
        AbstractC1784d.resetAt(this.f17400b, this.f17401e - 1);
        this.f17401e--;
        return obj;
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof List) {
            if (AbstractC1784d.access$subarrayContentEquals(this.f17400b, 0, this.f17401e, (List) obj)) {
                return true;
            }
        }
        return false;
    }

    public final void f(int i2, int i7) {
        if (i7 > 0) {
            ((AbstractList) this).modCount++;
        }
        Object[] objArr = this.f17400b;
        m.copyInto(objArr, objArr, i2, i2 + i7, this.f17401e);
        Object[] objArr2 = this.f17400b;
        int i8 = this.f17401e;
        AbstractC1784d.resetRange(objArr2, i8 - i7, i8);
        this.f17401e -= i7;
    }

    public final int g(int i2, int i7, Collection collection, boolean z6) {
        int i8 = 0;
        int i9 = 0;
        while (i8 < i7) {
            int i10 = i2 + i8;
            if (collection.contains(this.f17400b[i10]) == z6) {
                Object[] objArr = this.f17400b;
                i8++;
                objArr[i9 + i2] = objArr[i10];
                i9++;
            } else {
                i8++;
            }
        }
        int i11 = i7 - i9;
        Object[] objArr2 = this.f17400b;
        m.copyInto(objArr2, objArr2, i2 + i9, i7 + i2, this.f17401e);
        Object[] objArr3 = this.f17400b;
        int i12 = this.f17401e;
        AbstractC1784d.resetRange(objArr3, i12 - i11, i12);
        if (i11 > 0) {
            ((AbstractList) this).modCount++;
        }
        this.f17401e -= i11;
        return i11;
    }

    @Override // java.util.AbstractList, java.util.List
    public E get(int i2) {
        AbstractC1769e.f20637b.checkElementIndex$kotlin_stdlib(i2, this.f17401e);
        return (E) this.f17400b[i2];
    }

    @Override // v5.AbstractC1771g
    public int getSize() {
        return this.f17401e;
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        return AbstractC1784d.access$subarrayContentHashCode(this.f17400b, 0, this.f17401e);
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object obj) {
        for (int i2 = 0; i2 < this.f17401e; i2++) {
            if (j.areEqual(this.f17400b[i2], obj)) {
                return i2;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean isEmpty() {
        return this.f17401e == 0;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator<E> iterator() {
        return listIterator(0);
    }

    @Override // java.util.AbstractList, java.util.List
    public int lastIndexOf(Object obj) {
        for (int i2 = this.f17401e - 1; i2 >= 0; i2--) {
            if (j.areEqual(this.f17400b[i2], obj)) {
                return i2;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractList, java.util.List
    public ListIterator<E> listIterator() {
        return listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object obj) {
        c();
        int indexOf = indexOf(obj);
        if (indexOf >= 0) {
            remove(indexOf);
        }
        return indexOf >= 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean removeAll(Collection<? extends Object> elements) {
        j.checkNotNullParameter(elements, "elements");
        c();
        return g(0, this.f17401e, elements, false) > 0;
    }

    @Override // v5.AbstractC1771g
    public E removeAt(int i2) {
        c();
        AbstractC1769e.f20637b.checkElementIndex$kotlin_stdlib(i2, this.f17401e);
        return (E) e(i2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean retainAll(Collection<? extends Object> elements) {
        j.checkNotNullParameter(elements, "elements");
        c();
        return g(0, this.f17401e, elements, true) > 0;
    }

    @Override // java.util.AbstractList, java.util.List
    public E set(int i2, E e3) {
        c();
        AbstractC1769e.f20637b.checkElementIndex$kotlin_stdlib(i2, this.f17401e);
        Object[] objArr = this.f17400b;
        E e7 = (E) objArr[i2];
        objArr[i2] = e3;
        return e7;
    }

    @Override // java.util.AbstractList, java.util.List
    public List<E> subList(int i2, int i7) {
        AbstractC1769e.f20637b.checkRangeIndexes$kotlin_stdlib(i2, i7, this.f17401e);
        return new BuilderSubList(this.f17400b, i2, i7 - i2, null, this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public <T> T[] toArray(T[] array) {
        j.checkNotNullParameter(array, "array");
        int length = array.length;
        int i2 = this.f17401e;
        if (length >= i2) {
            m.copyInto(this.f17400b, array, 0, 0, i2);
            return (T[]) o.terminateCollectionToArray(this.f17401e, array);
        }
        T[] tArr = (T[]) Arrays.copyOfRange(this.f17400b, 0, i2, array.getClass());
        j.checkNotNullExpressionValue(tArr, "copyOfRange(...)");
        return tArr;
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        return AbstractC1784d.access$subarrayContentToString(this.f17400b, 0, this.f17401e, this);
    }

    @Override // java.util.AbstractList, java.util.List
    public ListIterator<E> listIterator(int i2) {
        AbstractC1769e.f20637b.checkPositionIndex$kotlin_stdlib(i2, this.f17401e);
        return new C1783c(this, i2);
    }

    public /* synthetic */ ListBuilder(int i2, int i7, g gVar) {
        this((i7 & 1) != 0 ? 10 : i2);
    }

    @Override // java.util.AbstractList, java.util.List
    public boolean addAll(int i2, Collection<? extends E> elements) {
        j.checkNotNullParameter(elements, "elements");
        c();
        AbstractC1769e.f20637b.checkPositionIndex$kotlin_stdlib(i2, this.f17401e);
        int size = elements.size();
        a(i2, elements, size);
        return size > 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public Object[] toArray() {
        return m.copyOfRange(this.f17400b, 0, this.f17401e);
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int i2, E e3) {
        c();
        AbstractC1769e.f20637b.checkPositionIndex$kotlin_stdlib(i2, this.f17401e);
        ((AbstractList) this).modCount++;
        d(i2, 1);
        this.f17400b[i2] = e3;
    }
}
