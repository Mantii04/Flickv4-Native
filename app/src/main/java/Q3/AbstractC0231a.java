package Q3;

import java.util.NoSuchElementException;

/* renamed from: Q3.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0231a extends y0 {

    /* renamed from: b, reason: collision with root package name */
    public final int f2875b;

    /* renamed from: e, reason: collision with root package name */
    public int f2876e;

    public AbstractC0231a(int i2, int i7) {
        P3.v.checkPositionIndex(i7, i2);
        this.f2875b = i2;
        this.f2876e = i7;
    }

    public abstract Object get(int i2);

    @Override // java.util.Iterator, java.util.ListIterator
    public final boolean hasNext() {
        return this.f2876e < this.f2875b;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f2876e > 0;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i2 = this.f2876e;
        this.f2876e = i2 + 1;
        return get(i2);
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f2876e;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        int i2 = this.f2876e - 1;
        this.f2876e = i2;
        return get(i2);
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f2876e - 1;
    }
}
