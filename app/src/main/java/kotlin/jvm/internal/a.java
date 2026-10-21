package kotlin.jvm.internal;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes2.dex */
public final class a implements Iterator, I5.a {

    /* renamed from: b, reason: collision with root package name */
    public final Object[] f17448b;

    /* renamed from: e, reason: collision with root package name */
    public int f17449e;

    public a(Object[] array) {
        j.checkNotNullParameter(array, "array");
        this.f17448b = array;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f17449e < this.f17448b.length;
    }

    @Override // java.util.Iterator
    public Object next() {
        try {
            Object[] objArr = this.f17448b;
            int i2 = this.f17449e;
            this.f17449e = i2 + 1;
            return objArr[i2];
        } catch (ArrayIndexOutOfBoundsException e3) {
            this.f17449e--;
            throw new NoSuchElementException(e3.getMessage());
        }
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
