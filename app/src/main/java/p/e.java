package p;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class e implements Collection {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ g f19379b;

    public e(g gVar) {
        this.f19379b = gVar;
    }

    @Override // java.util.Collection
    public boolean add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public boolean addAll(Collection<Object> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public void clear() {
        this.f19379b.clear();
    }

    @Override // java.util.Collection
    public boolean contains(Object obj) {
        return this.f19379b.__restricted$indexOfValue(obj) >= 0;
    }

    @Override // java.util.Collection
    public boolean containsAll(Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        return this.f19379b.isEmpty();
    }

    @Override // java.util.Collection, java.lang.Iterable
    public Iterator<Object> iterator() {
        return new f(this.f19379b);
    }

    @Override // java.util.Collection
    public boolean remove(Object obj) {
        g gVar = this.f19379b;
        int __restricted$indexOfValue = gVar.__restricted$indexOfValue(obj);
        if (__restricted$indexOfValue < 0) {
            return false;
        }
        gVar.removeAt(__restricted$indexOfValue);
        return true;
    }

    @Override // java.util.Collection
    public boolean removeAll(Collection<?> collection) {
        g gVar = this.f19379b;
        int size = gVar.size();
        int i2 = 0;
        boolean z6 = false;
        while (i2 < size) {
            if (collection.contains(gVar.valueAt(i2))) {
                gVar.removeAt(i2);
                i2--;
                size--;
                z6 = true;
            }
            i2++;
        }
        return z6;
    }

    @Override // java.util.Collection
    public boolean retainAll(Collection<?> collection) {
        g gVar = this.f19379b;
        int size = gVar.size();
        int i2 = 0;
        boolean z6 = false;
        while (i2 < size) {
            if (!collection.contains(gVar.valueAt(i2))) {
                gVar.removeAt(i2);
                i2--;
                size--;
                z6 = true;
            }
            i2++;
        }
        return z6;
    }

    @Override // java.util.Collection
    public int size() {
        return this.f19379b.size();
    }

    @Override // java.util.Collection
    public Object[] toArray() {
        g gVar = this.f19379b;
        int size = gVar.size();
        Object[] objArr = new Object[size];
        for (int i2 = 0; i2 < size; i2++) {
            objArr[i2] = gVar.valueAt(i2);
        }
        return objArr;
    }

    @Override // java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        int size = size();
        if (tArr.length < size) {
            tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), size));
        }
        for (int i2 = 0; i2 < size; i2++) {
            tArr[i2] = this.f19379b.valueAt(i2);
        }
        if (tArr.length > size) {
            tArr[size] = null;
        }
        return tArr;
    }
}
