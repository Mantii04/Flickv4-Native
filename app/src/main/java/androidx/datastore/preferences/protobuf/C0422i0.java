package androidx.datastore.preferences.protobuf;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.RandomAccess;

/* renamed from: androidx.datastore.preferences.protobuf.i0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0422i0 extends AbstractC0411d implements RandomAccess {

    /* renamed from: j, reason: collision with root package name */
    public static final C0422i0 f5867j;

    /* renamed from: e, reason: collision with root package name */
    public Object[] f5868e;

    /* renamed from: f, reason: collision with root package name */
    public int f5869f;

    static {
        C0422i0 c0422i0 = new C0422i0(new Object[0], 0);
        f5867j = c0422i0;
        c0422i0.makeImmutable();
    }

    public C0422i0(Object[] objArr, int i2) {
        this.f5868e = objArr;
        this.f5869f = i2;
    }

    public static <E> C0422i0 emptyList() {
        return f5867j;
    }

    public final void a(int i2) {
        if (i2 < 0 || i2 >= this.f5869f) {
            StringBuilder q6 = A.i.q(i2, "Index:", ", Size:");
            q6.append(this.f5869f);
            throw new IndexOutOfBoundsException(q6.toString());
        }
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0411d, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(Object obj) {
        ensureIsMutable();
        int i2 = this.f5869f;
        Object[] objArr = this.f5868e;
        if (i2 == objArr.length) {
            this.f5868e = Arrays.copyOf(objArr, ((i2 * 3) / 2) + 1);
        }
        Object[] objArr2 = this.f5868e;
        int i7 = this.f5869f;
        this.f5869f = i7 + 1;
        objArr2[i7] = obj;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public Object get(int i2) {
        a(i2);
        return this.f5868e[i2];
    }

    @Override // java.util.AbstractList, java.util.List
    public Object remove(int i2) {
        ensureIsMutable();
        a(i2);
        Object[] objArr = this.f5868e;
        Object obj = objArr[i2];
        if (i2 < this.f5869f - 1) {
            System.arraycopy(objArr, i2 + 1, objArr, i2, (r2 - i2) - 1);
        }
        this.f5869f--;
        ((AbstractList) this).modCount++;
        return obj;
    }

    @Override // java.util.AbstractList, java.util.List
    public Object set(int i2, Object obj) {
        ensureIsMutable();
        a(i2);
        Object[] objArr = this.f5868e;
        Object obj2 = objArr[i2];
        objArr[i2] = obj;
        ((AbstractList) this).modCount++;
        return obj2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f5869f;
    }

    @Override // androidx.datastore.preferences.protobuf.H
    public C0422i0 mutableCopyWithCapacity(int i2) {
        if (i2 >= this.f5869f) {
            return new C0422i0(Arrays.copyOf(this.f5868e, i2), this.f5869f);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int i2, Object obj) {
        int i7;
        ensureIsMutable();
        if (i2 >= 0 && i2 <= (i7 = this.f5869f)) {
            Object[] objArr = this.f5868e;
            if (i7 < objArr.length) {
                System.arraycopy(objArr, i2, objArr, i2 + 1, i7 - i2);
            } else {
                Object[] objArr2 = new Object[A.i.D(i7, 3, 2, 1)];
                System.arraycopy(objArr, 0, objArr2, 0, i2);
                System.arraycopy(this.f5868e, i2, objArr2, i2 + 1, this.f5869f - i2);
                this.f5868e = objArr2;
            }
            this.f5868e[i2] = obj;
            this.f5869f++;
            ((AbstractList) this).modCount++;
            return;
        }
        StringBuilder q6 = A.i.q(i2, "Index:", ", Size:");
        q6.append(this.f5869f);
        throw new IndexOutOfBoundsException(q6.toString());
    }
}
