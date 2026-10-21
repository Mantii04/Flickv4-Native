package androidx.datastore.preferences.protobuf;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class J extends AbstractC0411d implements K, RandomAccess {

    /* renamed from: e, reason: collision with root package name */
    public final ArrayList f5782e;

    static {
        new J().makeImmutable();
    }

    public J() {
        this(10);
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0411d, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends String> collection) {
        return addAll(size(), collection);
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0411d, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        ensureIsMutable();
        this.f5782e.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0411d, java.util.AbstractList, java.util.Collection, java.util.List
    public /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // androidx.datastore.preferences.protobuf.K
    public Object getRaw(int i2) {
        return this.f5782e.get(i2);
    }

    @Override // androidx.datastore.preferences.protobuf.K
    public List<?> getUnderlyingElements() {
        return Collections.unmodifiableList(this.f5782e);
    }

    @Override // androidx.datastore.preferences.protobuf.K
    public K getUnmodifiableView() {
        return isModifiable() ? new B0(this) : this;
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0411d, java.util.AbstractList, java.util.Collection, java.util.List
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0411d, androidx.datastore.preferences.protobuf.H
    public /* bridge */ /* synthetic */ boolean isModifiable() {
        return super.isModifiable();
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0411d, java.util.AbstractCollection, java.util.Collection, java.util.List
    public /* bridge */ /* synthetic */ boolean removeAll(Collection collection) {
        return super.removeAll(collection);
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0411d, java.util.AbstractCollection, java.util.Collection, java.util.List
    public /* bridge */ /* synthetic */ boolean retainAll(Collection collection) {
        return super.retainAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f5782e.size();
    }

    public J(int i2) {
        this(new ArrayList(i2));
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int i2, String str) {
        ensureIsMutable();
        this.f5782e.add(i2, str);
        ((AbstractList) this).modCount++;
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0411d, java.util.AbstractList, java.util.List
    public boolean addAll(int i2, Collection<? extends String> collection) {
        ensureIsMutable();
        if (collection instanceof K) {
            collection = ((K) collection).getUnderlyingElements();
        }
        boolean addAll = this.f5782e.addAll(i2, collection);
        ((AbstractList) this).modCount++;
        return addAll;
    }

    @Override // java.util.AbstractList, java.util.List
    public String get(int i2) {
        ArrayList arrayList = this.f5782e;
        Object obj = arrayList.get(i2);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof ByteString) {
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                arrayList.set(i2, stringUtf8);
            }
            return stringUtf8;
        }
        byte[] bArr = (byte[]) obj;
        String stringUtf82 = I.toStringUtf8(bArr);
        if (I.isValidUtf8(bArr)) {
            arrayList.set(i2, stringUtf82);
        }
        return stringUtf82;
    }

    @Override // androidx.datastore.preferences.protobuf.H
    public J mutableCopyWithCapacity(int i2) {
        if (i2 < size()) {
            throw new IllegalArgumentException();
        }
        ArrayList arrayList = new ArrayList(i2);
        arrayList.addAll(this.f5782e);
        return new J(arrayList);
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0411d, java.util.AbstractCollection, java.util.Collection, java.util.List
    public /* bridge */ /* synthetic */ boolean remove(Object obj) {
        return super.remove(obj);
    }

    @Override // java.util.AbstractList, java.util.List
    public String set(int i2, String str) {
        ensureIsMutable();
        Object obj = this.f5782e.set(i2, str);
        return obj instanceof String ? (String) obj : obj instanceof ByteString ? ((ByteString) obj).toStringUtf8() : I.toStringUtf8((byte[]) obj);
    }

    public J(ArrayList arrayList) {
        this.f5782e = arrayList;
    }

    @Override // java.util.AbstractList, java.util.List
    public String remove(int i2) {
        ensureIsMutable();
        Object remove = this.f5782e.remove(i2);
        ((AbstractList) this).modCount++;
        if (remove instanceof String) {
            return (String) remove;
        }
        if (remove instanceof ByteString) {
            return ((ByteString) remove).toStringUtf8();
        }
        return I.toStringUtf8((byte[]) remove);
    }

    @Override // androidx.datastore.preferences.protobuf.K
    public void add(ByteString byteString) {
        ensureIsMutable();
        this.f5782e.add(byteString);
        ((AbstractList) this).modCount++;
    }
}
