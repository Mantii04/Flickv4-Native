package com.google.common.collect;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

/* renamed from: com.google.common.collect.c, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0764c implements Iterator {

    /* renamed from: b, reason: collision with root package name */
    public final Iterator f13130b;

    /* renamed from: e, reason: collision with root package name */
    public Collection f13131e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ C0765d f13132f;

    public C0764c(C0765d c0765d) {
        this.f13132f = c0765d;
        this.f13130b = c0765d.f13133f.entrySet().iterator();
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f13130b.hasNext();
    }

    @Override // java.util.Iterator
    public void remove() {
        P3.v.checkState(this.f13131e != null, "no calls to next() since the last call to remove()");
        this.f13130b.remove();
        C0765d c0765d = this.f13132f;
        c0765d.f13134j.f13037n -= this.f13131e.size();
        this.f13131e.clear();
        this.f13131e = null;
    }

    @Override // java.util.Iterator
    public Map.Entry<Object, Collection<Object>> next() {
        Map.Entry entry = (Map.Entry) this.f13130b.next();
        this.f13131e = (Collection) entry.getValue();
        return this.f13132f.a(entry);
    }
}
