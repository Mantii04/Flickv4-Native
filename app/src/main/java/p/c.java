package p;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes.dex */
public final class c implements Set {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ g f19374b;

    public c(g gVar) {
        this.f19374b = gVar;
    }

    @Override // java.util.Set, java.util.Collection
    public boolean add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Set, java.util.Collection
    public boolean addAll(Collection<Object> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Set, java.util.Collection
    public void clear() {
        this.f19374b.clear();
    }

    @Override // java.util.Set, java.util.Collection
    public boolean contains(Object obj) {
        return this.f19374b.containsKey(obj);
    }

    @Override // java.util.Set, java.util.Collection
    public boolean containsAll(Collection<?> collection) {
        return this.f19374b.containsAll(collection);
    }

    @Override // java.util.Set, java.util.Collection
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Set)) {
            return false;
        }
        Set set = (Set) obj;
        try {
            if (size() == set.size()) {
                return containsAll(set);
            }
            return false;
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    @Override // java.util.Set, java.util.Collection
    public int hashCode() {
        g gVar = this.f19374b;
        int i2 = 0;
        for (int size = gVar.size() - 1; size >= 0; size--) {
            Object keyAt = gVar.keyAt(size);
            i2 += keyAt == null ? 0 : keyAt.hashCode();
        }
        return i2;
    }

    @Override // java.util.Set, java.util.Collection
    public boolean isEmpty() {
        return this.f19374b.isEmpty();
    }

    @Override // java.util.Set, java.util.Collection, java.lang.Iterable
    public Iterator<Object> iterator() {
        return new b(this.f19374b);
    }

    @Override // java.util.Set, java.util.Collection
    public boolean remove(Object obj) {
        g gVar = this.f19374b;
        int indexOfKey = gVar.indexOfKey(obj);
        if (indexOfKey < 0) {
            return false;
        }
        gVar.removeAt(indexOfKey);
        return true;
    }

    @Override // java.util.Set, java.util.Collection
    public boolean removeAll(Collection<?> collection) {
        return this.f19374b.removeAll(collection);
    }

    @Override // java.util.Set, java.util.Collection
    public boolean retainAll(Collection<?> collection) {
        return this.f19374b.retainAll(collection);
    }

    @Override // java.util.Set, java.util.Collection
    public int size() {
        return this.f19374b.size();
    }

    @Override // java.util.Set, java.util.Collection
    public Object[] toArray() {
        g gVar = this.f19374b;
        int size = gVar.size();
        Object[] objArr = new Object[size];
        for (int i2 = 0; i2 < size; i2++) {
            objArr[i2] = gVar.keyAt(i2);
        }
        return objArr;
    }

    @Override // java.util.Set, java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        int size = size();
        if (tArr.length < size) {
            tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), size));
        }
        for (int i2 = 0; i2 < size; i2++) {
            tArr[i2] = this.f19374b.keyAt(i2);
        }
        if (tArr.length > size) {
            tArr[size] = null;
        }
        return tArr;
    }
}
