package com.google.common.collect;

import Q3.AbstractC0237g;
import Q3.C0232b;
import java.util.AbstractCollection;
import java.util.Iterator;

/* loaded from: classes2.dex */
public final class p extends AbstractCollection {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AbstractC0237g f13159b;

    public p(AbstractC0237g abstractC0237g) {
        this.f13159b = abstractC0237g;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public void clear() {
        this.f13159b.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        return this.f13159b.containsValue(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public Iterator<Object> iterator() {
        return new C0232b((AbstractMapBasedMultimap) this.f13159b, 0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public int size() {
        return this.f13159b.size();
    }
}
