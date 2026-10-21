package com.google.common.collect;

import Q3.C0233c;
import java.util.Collection;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* loaded from: classes2.dex */
public class o extends m implements List {

    /* renamed from: n, reason: collision with root package name */
    public final /* synthetic */ AbstractMapBasedMultimap f13158n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o(AbstractMapBasedMultimap abstractMapBasedMultimap, Object obj, List list, o oVar) {
        super(abstractMapBasedMultimap, obj, list, oVar);
        this.f13158n = abstractMapBasedMultimap;
    }

    @Override // java.util.List
    public void add(int i2, Object obj) {
        b();
        boolean isEmpty = this.f13153e.isEmpty();
        ((List) this.f13153e).add(i2, obj);
        this.f13158n.f13037n++;
        if (isEmpty) {
            a();
        }
    }

    @Override // java.util.List
    public boolean addAll(int i2, Collection<Object> collection) {
        if (collection.isEmpty()) {
            return false;
        }
        int size = size();
        boolean addAll = ((List) this.f13153e).addAll(i2, collection);
        if (addAll) {
            this.f13158n.f13037n += this.f13153e.size() - size;
            if (size == 0) {
                a();
            }
        }
        return addAll;
    }

    @Override // java.util.List
    public Object get(int i2) {
        b();
        return ((List) this.f13153e).get(i2);
    }

    @Override // java.util.List
    public int indexOf(Object obj) {
        b();
        return ((List) this.f13153e).indexOf(obj);
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        b();
        return ((List) this.f13153e).lastIndexOf(obj);
    }

    @Override // java.util.List
    public ListIterator<Object> listIterator() {
        b();
        return new n(this);
    }

    @Override // java.util.List
    public Object remove(int i2) {
        b();
        Object remove = ((List) this.f13153e).remove(i2);
        AbstractMapBasedMultimap abstractMapBasedMultimap = this.f13158n;
        abstractMapBasedMultimap.f13037n--;
        c();
        return remove;
    }

    @Override // java.util.List
    public Object set(int i2, Object obj) {
        b();
        return ((List) this.f13153e).set(i2, obj);
    }

    @Override // java.util.List
    public List<Object> subList(int i2, int i7) {
        b();
        List subList = ((List) this.f13153e).subList(i2, i7);
        o oVar = this.f13154f;
        if (oVar == null) {
            oVar = this;
        }
        AbstractMapBasedMultimap abstractMapBasedMultimap = this.f13158n;
        abstractMapBasedMultimap.getClass();
        boolean z6 = subList instanceof RandomAccess;
        Object obj = this.f13152b;
        return z6 ? new C0233c(abstractMapBasedMultimap, obj, subList, oVar) : new o(abstractMapBasedMultimap, obj, subList, oVar);
    }

    @Override // java.util.List
    public ListIterator<Object> listIterator(int i2) {
        b();
        return new n(this, i2);
    }
}
