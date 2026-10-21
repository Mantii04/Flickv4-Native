package com.google.common.collect;

import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

/* loaded from: classes2.dex */
public class l implements Iterator {

    /* renamed from: b, reason: collision with root package name */
    public final Iterator f13149b;

    /* renamed from: e, reason: collision with root package name */
    public final Collection f13150e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ m f13151f;

    public l(m mVar) {
        this.f13151f = mVar;
        Collection collection = mVar.f13153e;
        this.f13150e = collection;
        this.f13149b = collection instanceof List ? ((List) collection).listIterator() : collection.iterator();
    }

    public final void a() {
        m mVar = this.f13151f;
        mVar.b();
        if (mVar.f13153e != this.f13150e) {
            throw new ConcurrentModificationException();
        }
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        a();
        return this.f13149b.hasNext();
    }

    @Override // java.util.Iterator
    public Object next() {
        a();
        return this.f13149b.next();
    }

    @Override // java.util.Iterator
    public void remove() {
        this.f13149b.remove();
        m mVar = this.f13151f;
        AbstractMapBasedMultimap abstractMapBasedMultimap = mVar.f13156m;
        abstractMapBasedMultimap.f13037n--;
        mVar.c();
    }

    public l(o oVar, ListIterator listIterator) {
        this.f13151f = oVar;
        this.f13150e = oVar.f13153e;
        this.f13149b = listIterator;
    }
}
