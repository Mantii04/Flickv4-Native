package v5;

import java.util.Collection;
import java.util.Iterator;

/* loaded from: classes2.dex */
public final class i implements Collection, I5.a {

    /* renamed from: b, reason: collision with root package name */
    public final Object[] f20638b;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f20639e;

    public i(Object[] values, boolean z6) {
        kotlin.jvm.internal.j.checkNotNullParameter(values, "values");
        this.f20638b = values;
        this.f20639e = z6;
    }

    @Override // java.util.Collection
    public boolean add(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean addAll(Collection<Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean contains(Object obj) {
        return n.contains(this.f20638b, obj);
    }

    @Override // java.util.Collection
    public boolean containsAll(Collection<? extends Object> elements) {
        kotlin.jvm.internal.j.checkNotNullParameter(elements, "elements");
        Collection<? extends Object> collection = elements;
        if (collection.isEmpty()) {
            return true;
        }
        Iterator<T> it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    public int getSize() {
        return this.f20638b.length;
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        return this.f20638b.length == 0;
    }

    @Override // java.util.Collection, java.lang.Iterable
    public Iterator<Object> iterator() {
        return kotlin.jvm.internal.b.iterator(this.f20638b);
    }

    @Override // java.util.Collection
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean removeAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean retainAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final /* bridge */ int size() {
        return getSize();
    }

    @Override // java.util.Collection
    public <T> T[] toArray(T[] array) {
        kotlin.jvm.internal.j.checkNotNullParameter(array, "array");
        return (T[]) kotlin.jvm.internal.f.toArray(this, array);
    }

    @Override // java.util.Collection
    public final Object[] toArray() {
        return o.copyToArrayOfAny(this.f20638b, this.f20639e);
    }
}
