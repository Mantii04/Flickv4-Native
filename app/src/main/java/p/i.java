package p;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Set;
import q.AbstractC1506a;
import v5.u;

/* loaded from: classes.dex */
public final class i implements Collection, Set, I5.a {

    /* renamed from: b, reason: collision with root package name */
    public int[] f19385b;

    /* renamed from: e, reason: collision with root package name */
    public Object[] f19386e;

    /* renamed from: f, reason: collision with root package name */
    public int f19387f;

    public i() {
        this(0, 1, null);
    }

    @Override // java.util.Collection, java.util.Set
    public boolean add(Object obj) {
        int i2;
        int indexOf;
        int i7 = get_size$collection();
        if (obj == null) {
            indexOf = j.indexOfNull(this);
            i2 = 0;
        } else {
            int hashCode = obj.hashCode();
            i2 = hashCode;
            indexOf = j.indexOf(this, obj, hashCode);
        }
        if (indexOf >= 0) {
            return false;
        }
        int i8 = ~indexOf;
        if (i7 >= getHashes$collection().length) {
            int i9 = 8;
            if (i7 >= 8) {
                i9 = (i7 >> 1) + i7;
            } else if (i7 < 4) {
                i9 = 4;
            }
            int[] hashes$collection = getHashes$collection();
            Object[] array$collection = getArray$collection();
            j.allocArrays(this, i9);
            if (i7 != get_size$collection()) {
                throw new ConcurrentModificationException();
            }
            if (!(getHashes$collection().length == 0)) {
                v5.m.copyInto$default(hashes$collection, getHashes$collection(), 0, 0, hashes$collection.length, 6, (Object) null);
                v5.m.copyInto$default(array$collection, getArray$collection(), 0, 0, array$collection.length, 6, (Object) null);
            }
        }
        if (i8 < i7) {
            int i10 = i8 + 1;
            v5.m.copyInto(getHashes$collection(), getHashes$collection(), i10, i8, i7);
            v5.m.copyInto(getArray$collection(), getArray$collection(), i10, i8, i7);
        }
        if (i7 != get_size$collection() || i8 >= getHashes$collection().length) {
            throw new ConcurrentModificationException();
        }
        getHashes$collection()[i8] = i2;
        getArray$collection()[i8] = obj;
        set_size$collection(get_size$collection() + 1);
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean addAll(Collection<Object> elements) {
        kotlin.jvm.internal.j.checkNotNullParameter(elements, "elements");
        ensureCapacity(elements.size() + get_size$collection());
        Iterator<Object> it = elements.iterator();
        boolean z6 = false;
        while (it.hasNext()) {
            z6 |= add(it.next());
        }
        return z6;
    }

    @Override // java.util.Collection, java.util.Set
    public void clear() {
        if (get_size$collection() != 0) {
            setHashes$collection(AbstractC1506a.f19544a);
            setArray$collection(AbstractC1506a.f19546c);
            set_size$collection(0);
        }
        if (get_size$collection() != 0) {
            throw new ConcurrentModificationException();
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean containsAll(Collection<? extends Object> elements) {
        kotlin.jvm.internal.j.checkNotNullParameter(elements, "elements");
        Iterator<? extends Object> it = elements.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    public final void ensureCapacity(int i2) {
        int i7 = get_size$collection();
        if (getHashes$collection().length < i2) {
            int[] hashes$collection = getHashes$collection();
            Object[] array$collection = getArray$collection();
            j.allocArrays(this, i2);
            if (get_size$collection() > 0) {
                v5.m.copyInto$default(hashes$collection, getHashes$collection(), 0, 0, get_size$collection(), 6, (Object) null);
                v5.m.copyInto$default(array$collection, getArray$collection(), 0, 0, get_size$collection(), 6, (Object) null);
            }
        }
        if (get_size$collection() != i7) {
            throw new ConcurrentModificationException();
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Set) || size() != ((Set) obj).size()) {
            return false;
        }
        try {
            int i2 = get_size$collection();
            for (int i7 = 0; i7 < i2; i7++) {
                if (!((Set) obj).contains(valueAt(i7))) {
                    return false;
                }
            }
            return true;
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    public final Object[] getArray$collection() {
        return this.f19386e;
    }

    public final int[] getHashes$collection() {
        return this.f19385b;
    }

    public int getSize() {
        return this.f19387f;
    }

    public final int get_size$collection() {
        return this.f19387f;
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        int[] hashes$collection = getHashes$collection();
        int i2 = get_size$collection();
        int i7 = 0;
        for (int i8 = 0; i8 < i2; i8++) {
            i7 += hashes$collection[i8];
        }
        return i7;
    }

    public final int indexOf(Object obj) {
        return obj == null ? j.indexOfNull(this) : j.indexOf(this, obj, obj.hashCode());
    }

    @Override // java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return get_size$collection() <= 0;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<Object> iterator() {
        return new h(this);
    }

    @Override // java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        int indexOf = indexOf(obj);
        if (indexOf < 0) {
            return false;
        }
        removeAt(indexOf);
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean removeAll(Collection<? extends Object> elements) {
        kotlin.jvm.internal.j.checkNotNullParameter(elements, "elements");
        Iterator<? extends Object> it = elements.iterator();
        boolean z6 = false;
        while (it.hasNext()) {
            z6 |= remove(it.next());
        }
        return z6;
    }

    public final Object removeAt(int i2) {
        int i7;
        Object[] objArr;
        int i8 = get_size$collection();
        Object obj = getArray$collection()[i2];
        if (i8 <= 1) {
            clear();
            return obj;
        }
        int i9 = i8 - 1;
        if (getHashes$collection().length <= 8 || get_size$collection() >= getHashes$collection().length / 3) {
            if (i2 < i9) {
                int i10 = i2 + 1;
                v5.m.copyInto(getHashes$collection(), getHashes$collection(), i2, i10, i8);
                v5.m.copyInto(getArray$collection(), getArray$collection(), i2, i10, i8);
            }
            getArray$collection()[i9] = null;
        } else {
            int i11 = get_size$collection() > 8 ? get_size$collection() + (get_size$collection() >> 1) : 8;
            int[] hashes$collection = getHashes$collection();
            Object[] array$collection = getArray$collection();
            j.allocArrays(this, i11);
            if (i2 > 0) {
                v5.m.copyInto$default(hashes$collection, getHashes$collection(), 0, 0, i2, 6, (Object) null);
                objArr = array$collection;
                v5.m.copyInto$default(objArr, getArray$collection(), 0, 0, i2, 6, (Object) null);
                i7 = i2;
            } else {
                i7 = i2;
                objArr = array$collection;
            }
            if (i7 < i9) {
                int i12 = i7 + 1;
                v5.m.copyInto(hashes$collection, getHashes$collection(), i7, i12, i8);
                v5.m.copyInto(objArr, getArray$collection(), i7, i12, i8);
            }
        }
        if (i8 != get_size$collection()) {
            throw new ConcurrentModificationException();
        }
        set_size$collection(i9);
        return obj;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean retainAll(Collection<? extends Object> elements) {
        kotlin.jvm.internal.j.checkNotNullParameter(elements, "elements");
        boolean z6 = false;
        for (int i2 = get_size$collection() - 1; -1 < i2; i2--) {
            if (!u.contains(elements, getArray$collection()[i2])) {
                removeAt(i2);
                z6 = true;
            }
        }
        return z6;
    }

    public final void setArray$collection(Object[] objArr) {
        kotlin.jvm.internal.j.checkNotNullParameter(objArr, "<set-?>");
        this.f19386e = objArr;
    }

    public final void setHashes$collection(int[] iArr) {
        kotlin.jvm.internal.j.checkNotNullParameter(iArr, "<set-?>");
        this.f19385b = iArr;
    }

    public final void set_size$collection(int i2) {
        this.f19387f = i2;
    }

    @Override // java.util.Collection, java.util.Set
    public final /* bridge */ int size() {
        return getSize();
    }

    @Override // java.util.Collection, java.util.Set
    public final Object[] toArray() {
        return v5.m.copyOfRange(this.f19386e, 0, this.f19387f);
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(get_size$collection() * 14);
        sb.append('{');
        int i2 = get_size$collection();
        for (int i7 = 0; i7 < i2; i7++) {
            if (i7 > 0) {
                sb.append(", ");
            }
            Object valueAt = valueAt(i7);
            if (valueAt != this) {
                sb.append(valueAt);
            } else {
                sb.append("(this Set)");
            }
        }
        sb.append('}');
        String sb2 = sb.toString();
        kotlin.jvm.internal.j.checkNotNullExpressionValue(sb2, "StringBuilder(capacity).…builderAction).toString()");
        return sb2;
    }

    public final Object valueAt(int i2) {
        return getArray$collection()[i2];
    }

    public i(int i2) {
        this.f19385b = AbstractC1506a.f19544a;
        this.f19386e = AbstractC1506a.f19546c;
        if (i2 > 0) {
            j.allocArrays(this, i2);
        }
    }

    @Override // java.util.Collection, java.util.Set
    public final <T> T[] toArray(T[] array) {
        kotlin.jvm.internal.j.checkNotNullParameter(array, "array");
        int i2 = this.f19387f;
        if (array.length < i2) {
            array = (T[]) ((Object[]) Array.newInstance(array.getClass().getComponentType(), i2));
        } else if (array.length > i2) {
            array[i2] = null;
        }
        v5.m.copyInto(this.f19386e, array, 0, 0, this.f19387f);
        T[] result = array;
        kotlin.jvm.internal.j.checkNotNullExpressionValue(result, "result");
        return array;
    }

    public /* synthetic */ i(int i2, int i7, kotlin.jvm.internal.g gVar) {
        this((i7 & 1) != 0 ? 0 : i2);
    }
}
