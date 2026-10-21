package androidx.datastore.preferences.protobuf;

import java.util.ListIterator;

/* loaded from: classes.dex */
public final class z0 implements ListIterator {

    /* renamed from: b, reason: collision with root package name */
    public ListIterator f5934b;

    @Override // java.util.ListIterator, java.util.Iterator
    public boolean hasNext() {
        return this.f5934b.hasNext();
    }

    @Override // java.util.ListIterator
    public boolean hasPrevious() {
        return this.f5934b.hasPrevious();
    }

    @Override // java.util.ListIterator
    public int nextIndex() {
        return this.f5934b.nextIndex();
    }

    @Override // java.util.ListIterator
    public int previousIndex() {
        return this.f5934b.previousIndex();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    public void add(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public String next() {
        return (String) this.f5934b.next();
    }

    @Override // java.util.ListIterator
    public String previous() {
        return (String) this.f5934b.previous();
    }

    @Override // java.util.ListIterator
    public void set(String str) {
        throw new UnsupportedOperationException();
    }
}
