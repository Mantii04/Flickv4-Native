package p;

/* loaded from: classes.dex */
public final class k {

    /* renamed from: a, reason: collision with root package name */
    public Object[] f19388a;

    /* renamed from: b, reason: collision with root package name */
    public int f19389b;

    /* renamed from: c, reason: collision with root package name */
    public int f19390c;

    /* renamed from: d, reason: collision with root package name */
    public int f19391d;

    public k(int i2) {
        if (i2 < 1) {
            throw new IllegalArgumentException("capacity must be >= 1");
        }
        if (i2 > 1073741824) {
            throw new IllegalArgumentException("capacity must be <= 2^30");
        }
        i2 = Integer.bitCount(i2) != 1 ? Integer.highestOneBit(i2 - 1) << 1 : i2;
        this.f19391d = i2 - 1;
        this.f19388a = new Object[i2];
    }

    public final void a() {
        Object[] objArr = this.f19388a;
        int length = objArr.length;
        int i2 = this.f19389b;
        int i7 = length - i2;
        int i8 = length << 1;
        if (i8 < 0) {
            throw new RuntimeException("Max array capacity exceeded");
        }
        Object[] objArr2 = new Object[i8];
        v5.m.copyInto(objArr, objArr2, 0, i2, length);
        v5.m.copyInto(this.f19388a, objArr2, i7, 0, this.f19389b);
        this.f19388a = objArr2;
        this.f19389b = 0;
        this.f19390c = length;
        this.f19391d = i8 - 1;
    }

    public final void addFirst(Object obj) {
        int i2 = (this.f19389b - 1) & this.f19391d;
        this.f19389b = i2;
        this.f19388a[i2] = obj;
        if (i2 == this.f19390c) {
            a();
        }
    }

    public final void addLast(Object obj) {
        Object[] objArr = this.f19388a;
        int i2 = this.f19390c;
        objArr[i2] = obj;
        int i7 = this.f19391d & (i2 + 1);
        this.f19390c = i7;
        if (i7 == this.f19389b) {
            a();
        }
    }

    public final void clear() {
        removeFromStart(size());
    }

    public final Object get(int i2) {
        if (i2 < 0 || i2 >= size()) {
            throw new ArrayIndexOutOfBoundsException();
        }
        Object obj = this.f19388a[this.f19391d & (this.f19389b + i2)];
        kotlin.jvm.internal.j.checkNotNull(obj);
        return obj;
    }

    public final void removeFromEnd(int i2) {
        if (i2 <= 0) {
            return;
        }
        if (i2 > size()) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int i7 = this.f19390c;
        int i8 = i2 < i7 ? i7 - i2 : 0;
        for (int i9 = i8; i9 < i7; i9++) {
            this.f19388a[i9] = null;
        }
        int i10 = this.f19390c;
        int i11 = i10 - i8;
        int i12 = i2 - i11;
        this.f19390c = i10 - i11;
        if (i12 > 0) {
            int length = this.f19388a.length;
            this.f19390c = length;
            int i13 = length - i12;
            for (int i14 = i13; i14 < length; i14++) {
                this.f19388a[i14] = null;
            }
            this.f19390c = i13;
        }
    }

    public final void removeFromStart(int i2) {
        if (i2 <= 0) {
            return;
        }
        if (i2 > size()) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int length = this.f19388a.length;
        int i7 = this.f19389b;
        if (i2 < length - i7) {
            length = i7 + i2;
        }
        while (i7 < length) {
            this.f19388a[i7] = null;
            i7++;
        }
        int i8 = this.f19389b;
        int i9 = length - i8;
        int i10 = i2 - i9;
        this.f19389b = this.f19391d & (i8 + i9);
        if (i10 > 0) {
            for (int i11 = 0; i11 < i10; i11++) {
                this.f19388a[i11] = null;
            }
            this.f19389b = i10;
        }
    }

    public final int size() {
        return (this.f19390c - this.f19389b) & this.f19391d;
    }
}
