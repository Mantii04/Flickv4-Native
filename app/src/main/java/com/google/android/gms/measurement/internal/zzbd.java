package com.google.android.gms.measurement.internal;

import java.util.Iterator;

/* loaded from: classes2.dex */
final class zzbd implements Iterator<String> {

    /* renamed from: b, reason: collision with root package name */
    public Iterator f11256b;

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f11256b.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ String next() {
        return (String) this.f11256b.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Remove not supported");
    }
}
