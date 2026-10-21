package kotlin.collections.builders;

import java.util.AbstractList;
import java.util.ConcurrentModificationException;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import kotlin.collections.builders.ListBuilder;
import kotlin.jvm.internal.j;

/* loaded from: classes2.dex */
public final class a implements ListIterator, I5.a {

    /* renamed from: b, reason: collision with root package name */
    public final ListBuilder.BuilderSubList f17425b;

    /* renamed from: e, reason: collision with root package name */
    public int f17426e;

    /* renamed from: f, reason: collision with root package name */
    public int f17427f;

    /* renamed from: j, reason: collision with root package name */
    public int f17428j;

    public a(ListBuilder.BuilderSubList<Object> list, int i2) {
        int i7;
        j.checkNotNullParameter(list, "list");
        this.f17425b = list;
        this.f17426e = i2;
        this.f17427f = -1;
        i7 = ((AbstractList) list).modCount;
        this.f17428j = i7;
    }

    public final void a() {
        ListBuilder listBuilder;
        listBuilder = this.f17425b.f17407m;
        if (((AbstractList) listBuilder).modCount != this.f17428j) {
            throw new ConcurrentModificationException();
        }
    }

    @Override // java.util.ListIterator
    public void add(Object obj) {
        int i2;
        a();
        int i7 = this.f17426e;
        this.f17426e = i7 + 1;
        ListBuilder.BuilderSubList builderSubList = this.f17425b;
        builderSubList.add(i7, obj);
        this.f17427f = -1;
        i2 = ((AbstractList) builderSubList).modCount;
        this.f17428j = i2;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public boolean hasNext() {
        int i2;
        int i7 = this.f17426e;
        i2 = this.f17425b.f17405f;
        return i7 < i2;
    }

    @Override // java.util.ListIterator
    public boolean hasPrevious() {
        return this.f17426e > 0;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public Object next() {
        int i2;
        Object[] objArr;
        int i7;
        a();
        int i8 = this.f17426e;
        ListBuilder.BuilderSubList builderSubList = this.f17425b;
        i2 = builderSubList.f17405f;
        if (i8 >= i2) {
            throw new NoSuchElementException();
        }
        int i9 = this.f17426e;
        this.f17426e = i9 + 1;
        this.f17427f = i9;
        objArr = builderSubList.f17403b;
        i7 = builderSubList.f17404e;
        return objArr[i7 + this.f17427f];
    }

    @Override // java.util.ListIterator
    public int nextIndex() {
        return this.f17426e;
    }

    @Override // java.util.ListIterator
    public Object previous() {
        Object[] objArr;
        int i2;
        a();
        int i7 = this.f17426e;
        if (i7 <= 0) {
            throw new NoSuchElementException();
        }
        int i8 = i7 - 1;
        this.f17426e = i8;
        this.f17427f = i8;
        ListBuilder.BuilderSubList builderSubList = this.f17425b;
        objArr = builderSubList.f17403b;
        i2 = builderSubList.f17404e;
        return objArr[i2 + this.f17427f];
    }

    @Override // java.util.ListIterator
    public int previousIndex() {
        return this.f17426e - 1;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public void remove() {
        int i2;
        a();
        int i7 = this.f17427f;
        if (i7 == -1) {
            throw new IllegalStateException("Call next() or previous() before removing element from the iterator.");
        }
        ListBuilder.BuilderSubList builderSubList = this.f17425b;
        builderSubList.remove(i7);
        this.f17426e = this.f17427f;
        this.f17427f = -1;
        i2 = ((AbstractList) builderSubList).modCount;
        this.f17428j = i2;
    }

    @Override // java.util.ListIterator
    public void set(Object obj) {
        a();
        int i2 = this.f17427f;
        if (i2 == -1) {
            throw new IllegalStateException("Call next() or previous() before replacing element from the iterator.");
        }
        this.f17425b.set(i2, obj);
    }
}
