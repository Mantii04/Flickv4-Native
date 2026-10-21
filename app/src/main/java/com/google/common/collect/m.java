package com.google.common.collect;

import java.util.AbstractCollection;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public abstract class m extends AbstractCollection {

    /* renamed from: b, reason: collision with root package name */
    public final Object f13152b;

    /* renamed from: e, reason: collision with root package name */
    public Collection f13153e;

    /* renamed from: f, reason: collision with root package name */
    public final o f13154f;

    /* renamed from: j, reason: collision with root package name */
    public final Collection f13155j;

    /* renamed from: m, reason: collision with root package name */
    public final /* synthetic */ AbstractMapBasedMultimap f13156m;

    public m(AbstractMapBasedMultimap abstractMapBasedMultimap, Object obj, List list, o oVar) {
        this.f13156m = abstractMapBasedMultimap;
        this.f13152b = obj;
        this.f13153e = list;
        this.f13154f = oVar;
        this.f13155j = oVar == null ? null : oVar.f13153e;
    }

    public final void a() {
        o oVar = this.f13154f;
        if (oVar != null) {
            oVar.a();
        } else {
            this.f13156m.f13036m.put(this.f13152b, this.f13153e);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean add(Object obj) {
        b();
        boolean isEmpty = this.f13153e.isEmpty();
        boolean add = this.f13153e.add(obj);
        if (add) {
            this.f13156m.f13037n++;
            if (isEmpty) {
                a();
            }
        }
        return add;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean addAll(Collection<Object> collection) {
        if (collection.isEmpty()) {
            return false;
        }
        int size = size();
        boolean addAll = this.f13153e.addAll(collection);
        if (addAll) {
            this.f13156m.f13037n += this.f13153e.size() - size;
            if (size == 0) {
                a();
            }
        }
        return addAll;
    }

    public final void b() {
        Collection collection;
        o oVar = this.f13154f;
        if (oVar != null) {
            oVar.b();
            if (oVar.f13153e != this.f13155j) {
                throw new ConcurrentModificationException();
            }
        } else {
            if (!this.f13153e.isEmpty() || (collection = (Collection) this.f13156m.f13036m.get(this.f13152b)) == null) {
                return;
            }
            this.f13153e = collection;
        }
    }

    public final void c() {
        o oVar = this.f13154f;
        if (oVar != null) {
            oVar.c();
        } else if (this.f13153e.isEmpty()) {
            this.f13156m.f13036m.remove(this.f13152b);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public void clear() {
        int size = size();
        if (size == 0) {
            return;
        }
        this.f13153e.clear();
        this.f13156m.f13037n -= size;
        c();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        b();
        return this.f13153e.contains(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean containsAll(Collection<?> collection) {
        b();
        return this.f13153e.containsAll(collection);
    }

    @Override // java.util.Collection
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        b();
        return this.f13153e.equals(obj);
    }

    @Override // java.util.Collection
    public int hashCode() {
        b();
        return this.f13153e.hashCode();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public Iterator<Object> iterator() {
        b();
        return new l(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean remove(Object obj) {
        b();
        boolean remove = this.f13153e.remove(obj);
        if (remove) {
            AbstractMapBasedMultimap abstractMapBasedMultimap = this.f13156m;
            abstractMapBasedMultimap.f13037n--;
            c();
        }
        return remove;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean removeAll(Collection<?> collection) {
        if (collection.isEmpty()) {
            return false;
        }
        int size = size();
        boolean removeAll = this.f13153e.removeAll(collection);
        if (removeAll) {
            this.f13156m.f13037n += this.f13153e.size() - size;
            c();
        }
        return removeAll;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean retainAll(Collection<?> collection) {
        P3.v.checkNotNull(collection);
        int size = size();
        boolean retainAll = this.f13153e.retainAll(collection);
        if (retainAll) {
            this.f13156m.f13037n += this.f13153e.size() - size;
            c();
        }
        return retainAll;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public int size() {
        b();
        return this.f13153e.size();
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        b();
        return this.f13153e.toString();
    }
}
