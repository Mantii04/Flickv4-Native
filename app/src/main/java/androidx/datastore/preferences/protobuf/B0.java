package androidx.datastore.preferences.protobuf;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class B0 extends AbstractList implements K, RandomAccess {

    /* renamed from: b, reason: collision with root package name */
    public final K f5742b;

    public B0(K k7) {
        this.f5742b = k7;
    }

    @Override // androidx.datastore.preferences.protobuf.K
    public void add(ByteString byteString) {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.datastore.preferences.protobuf.K
    public Object getRaw(int i2) {
        return this.f5742b.getRaw(i2);
    }

    @Override // androidx.datastore.preferences.protobuf.K
    public List<?> getUnderlyingElements() {
        return this.f5742b.getUnderlyingElements();
    }

    @Override // androidx.datastore.preferences.protobuf.K
    public K getUnmodifiableView() {
        return this;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator<String> iterator() {
        A0 a02 = new A0();
        a02.f5741b = this.f5742b.iterator();
        return a02;
    }

    @Override // java.util.AbstractList, java.util.List
    public ListIterator<String> listIterator(int i2) {
        z0 z0Var = new z0();
        z0Var.f5934b = this.f5742b.listIterator(i2);
        return z0Var;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f5742b.size();
    }

    @Override // java.util.AbstractList, java.util.List
    public String get(int i2) {
        return (String) this.f5742b.get(i2);
    }
}
