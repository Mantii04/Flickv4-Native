package com.google.common.collect;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;

/* renamed from: com.google.common.collect.e, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0766e implements Iterator {

    /* renamed from: b, reason: collision with root package name */
    public final Iterator f13135b;

    /* renamed from: e, reason: collision with root package name */
    public Object f13136e = null;

    /* renamed from: f, reason: collision with root package name */
    public Collection f13137f = null;

    /* renamed from: j, reason: collision with root package name */
    public Iterator f13138j = Iterators$EmptyModifiableIterator.f13084b;

    /* renamed from: m, reason: collision with root package name */
    public final /* synthetic */ AbstractMapBasedMultimap f13139m;

    public AbstractC0766e(AbstractMapBasedMultimap abstractMapBasedMultimap) {
        this.f13139m = abstractMapBasedMultimap;
        this.f13135b = abstractMapBasedMultimap.f13036m.entrySet().iterator();
    }

    public abstract Object a(Object obj, Object obj2);

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f13135b.hasNext() || this.f13138j.hasNext();
    }

    @Override // java.util.Iterator
    public Object next() {
        if (!this.f13138j.hasNext()) {
            Map.Entry entry = (Map.Entry) this.f13135b.next();
            this.f13136e = entry.getKey();
            Collection collection = (Collection) entry.getValue();
            this.f13137f = collection;
            this.f13138j = collection.iterator();
        }
        return a(this.f13136e, this.f13138j.next());
    }

    @Override // java.util.Iterator
    public void remove() {
        this.f13138j.remove();
        Collection collection = this.f13137f;
        Objects.requireNonNull(collection);
        if (collection.isEmpty()) {
            this.f13135b.remove();
        }
        AbstractMapBasedMultimap abstractMapBasedMultimap = this.f13139m;
        abstractMapBasedMultimap.f13037n--;
    }
}
