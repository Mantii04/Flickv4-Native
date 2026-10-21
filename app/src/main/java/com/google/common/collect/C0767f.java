package com.google.common.collect;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

/* renamed from: com.google.common.collect.f, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0767f implements Iterator {

    /* renamed from: b, reason: collision with root package name */
    public Map.Entry f13140b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Iterator f13141e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ C0768g f13142f;

    public C0767f(C0768g c0768g, Iterator it) {
        this.f13141e = it;
        this.f13142f = c0768g;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f13141e.hasNext();
    }

    @Override // java.util.Iterator
    public Object next() {
        Map.Entry entry = (Map.Entry) this.f13141e.next();
        this.f13140b = entry;
        return entry.getKey();
    }

    @Override // java.util.Iterator
    public void remove() {
        P3.v.checkState(this.f13140b != null, "no calls to next() since the last call to remove()");
        Collection collection = (Collection) this.f13140b.getValue();
        this.f13141e.remove();
        C0768g c0768g = this.f13142f;
        c0768g.f13143e.f13037n -= collection.size();
        collection.clear();
        this.f13140b = null;
    }
}
