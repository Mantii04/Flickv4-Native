package w5;

import java.util.AbstractList;
import java.util.ConcurrentModificationException;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import kotlin.collections.builders.ListBuilder;

/* renamed from: w5.c, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1783c implements ListIterator, I5.a {

    /* renamed from: b, reason: collision with root package name */
    public final ListBuilder f20681b;

    /* renamed from: e, reason: collision with root package name */
    public int f20682e;

    /* renamed from: f, reason: collision with root package name */
    public int f20683f;

    /* renamed from: j, reason: collision with root package name */
    public int f20684j;

    public C1783c(ListBuilder<Object> list, int i2) {
        kotlin.jvm.internal.j.checkNotNullParameter(list, "list");
        this.f20681b = list;
        this.f20682e = i2;
        this.f20683f = -1;
        this.f20684j = ((AbstractList) list).modCount;
    }

    public final void a() {
        if (((AbstractList) this.f20681b).modCount != this.f20684j) {
            throw new ConcurrentModificationException();
        }
    }

    @Override // java.util.ListIterator
    public void add(Object obj) {
        a();
        int i2 = this.f20682e;
        this.f20682e = i2 + 1;
        ListBuilder listBuilder = this.f20681b;
        listBuilder.add(i2, obj);
        this.f20683f = -1;
        this.f20684j = ((AbstractList) listBuilder).modCount;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public boolean hasNext() {
        int i2;
        int i7 = this.f20682e;
        i2 = this.f20681b.f17401e;
        return i7 < i2;
    }

    @Override // java.util.ListIterator
    public boolean hasPrevious() {
        return this.f20682e > 0;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public Object next() {
        int i2;
        a();
        int i7 = this.f20682e;
        ListBuilder listBuilder = this.f20681b;
        i2 = listBuilder.f17401e;
        if (i7 >= i2) {
            throw new NoSuchElementException();
        }
        int i8 = this.f20682e;
        this.f20682e = i8 + 1;
        this.f20683f = i8;
        return listBuilder.f17400b[this.f20683f];
    }

    @Override // java.util.ListIterator
    public int nextIndex() {
        return this.f20682e;
    }

    @Override // java.util.ListIterator
    public Object previous() {
        a();
        int i2 = this.f20682e;
        if (i2 <= 0) {
            throw new NoSuchElementException();
        }
        int i7 = i2 - 1;
        this.f20682e = i7;
        this.f20683f = i7;
        return this.f20681b.f17400b[this.f20683f];
    }

    @Override // java.util.ListIterator
    public int previousIndex() {
        return this.f20682e - 1;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public void remove() {
        a();
        int i2 = this.f20683f;
        if (i2 == -1) {
            throw new IllegalStateException("Call next() or previous() before removing element from the iterator.");
        }
        ListBuilder listBuilder = this.f20681b;
        listBuilder.remove(i2);
        this.f20682e = this.f20683f;
        this.f20683f = -1;
        this.f20684j = ((AbstractList) listBuilder).modCount;
    }

    @Override // java.util.ListIterator
    public void set(Object obj) {
        a();
        int i2 = this.f20683f;
        if (i2 == -1) {
            throw new IllegalStateException("Call next() or previous() before replacing element from the iterator.");
        }
        this.f20681b.set(i2, obj);
    }
}
