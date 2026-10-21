package androidx.datastore.preferences.protobuf;

import java.util.Iterator;

/* loaded from: classes.dex */
public final class A0 implements Iterator {

    /* renamed from: b, reason: collision with root package name */
    public Iterator f5741b;

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f5741b.hasNext();
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Iterator
    public String next() {
        return (String) this.f5741b.next();
    }
}
