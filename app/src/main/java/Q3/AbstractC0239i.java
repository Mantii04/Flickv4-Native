package Q3;

import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

/* renamed from: Q3.i, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0239i extends AbstractCollection {

    /* renamed from: b, reason: collision with root package name */
    public final Set f2886b;

    /* renamed from: e, reason: collision with root package name */
    public final P3.w f2887e;

    public AbstractC0239i(Set set, P3.w wVar) {
        this.f2886b = set;
        this.f2887e = wVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean add(Object obj) {
        P3.v.checkArgument(this.f2887e.apply(obj));
        return this.f2886b.add(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean addAll(Collection<Object> collection) {
        Iterator<Object> it = collection.iterator();
        while (it.hasNext()) {
            P3.v.checkArgument(this.f2887e.apply(it.next()));
        }
        return this.f2886b.addAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public void clear() {
        A.removeIf(this.f2886b, this.f2887e);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        boolean z6;
        Set set = this.f2886b;
        P3.v.checkNotNull(set);
        try {
            z6 = set.contains(obj);
        } catch (ClassCastException | NullPointerException unused) {
            z6 = false;
        }
        if (z6) {
            return this.f2887e.apply(obj);
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean containsAll(Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        return !A.any(this.f2886b, this.f2887e);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public Iterator<Object> iterator() {
        return F.filter(this.f2886b.iterator(), this.f2887e);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean remove(Object obj) {
        return contains(obj) && this.f2886b.remove(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean removeAll(Collection<?> collection) {
        Iterator it = this.f2886b.iterator();
        boolean z6 = false;
        while (it.hasNext()) {
            Object next = it.next();
            if (this.f2887e.apply(next) && collection.contains(next)) {
                it.remove();
                z6 = true;
            }
        }
        return z6;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean retainAll(Collection<?> collection) {
        Iterator it = this.f2886b.iterator();
        boolean z6 = false;
        while (it.hasNext()) {
            Object next = it.next();
            if (this.f2887e.apply(next) && !collection.contains(next)) {
                it.remove();
                z6 = true;
            }
        }
        return z6;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public int size() {
        Iterator it = this.f2886b.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            if (this.f2887e.apply(it.next())) {
                i2++;
            }
        }
        return i2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public Object[] toArray() {
        return com.google.common.collect.B.newArrayList(iterator()).toArray();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        return (T[]) com.google.common.collect.B.newArrayList(iterator()).toArray(tArr);
    }
}
