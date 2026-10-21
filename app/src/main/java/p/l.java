package p;

/* loaded from: classes.dex */
public final class l {

    /* renamed from: a, reason: collision with root package name */
    public int[] f19392a;

    /* renamed from: b, reason: collision with root package name */
    public int f19393b;

    /* renamed from: c, reason: collision with root package name */
    public int f19394c;

    /* renamed from: d, reason: collision with root package name */
    public int f19395d;

    public l() {
        this(0, 1, null);
    }

    public final void addLast(int i2) {
        int[] iArr = this.f19392a;
        int i7 = this.f19394c;
        iArr[i7] = i2;
        int i8 = this.f19395d & (i7 + 1);
        this.f19394c = i8;
        int i9 = this.f19393b;
        if (i8 == i9) {
            int length = iArr.length;
            int i10 = length - i9;
            int i11 = length << 1;
            if (i11 < 0) {
                throw new RuntimeException("Max array capacity exceeded");
            }
            int[] iArr2 = new int[i11];
            v5.m.copyInto(iArr, iArr2, 0, i9, length);
            v5.m.copyInto(this.f19392a, iArr2, i10, 0, this.f19393b);
            this.f19392a = iArr2;
            this.f19393b = 0;
            this.f19394c = length;
            this.f19395d = i11 - 1;
        }
    }

    public final void clear() {
        this.f19394c = this.f19393b;
    }

    public final int get(int i2) {
        if (i2 < 0 || i2 >= size()) {
            throw new ArrayIndexOutOfBoundsException();
        }
        return this.f19392a[this.f19395d & (this.f19393b + i2)];
    }

    public final int getLast() {
        int i2 = this.f19393b;
        int i7 = this.f19394c;
        if (i2 != i7) {
            return this.f19392a[(i7 - 1) & this.f19395d];
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public final boolean isEmpty() {
        return this.f19393b == this.f19394c;
    }

    public final int popFirst() {
        int i2 = this.f19393b;
        if (i2 == this.f19394c) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int i7 = this.f19392a[i2];
        this.f19393b = (i2 + 1) & this.f19395d;
        return i7;
    }

    public final int popLast() {
        int i2 = this.f19393b;
        int i7 = this.f19394c;
        if (i2 == i7) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int i8 = this.f19395d & (i7 - 1);
        int i9 = this.f19392a[i8];
        this.f19394c = i8;
        return i9;
    }

    public final int size() {
        return (this.f19394c - this.f19393b) & this.f19395d;
    }

    public l(int i2) {
        if (i2 < 1) {
            throw new IllegalArgumentException("capacity must be >= 1");
        }
        if (i2 > 1073741824) {
            throw new IllegalArgumentException("capacity must be <= 2^30");
        }
        i2 = Integer.bitCount(i2) != 1 ? Integer.highestOneBit(i2 - 1) << 1 : i2;
        this.f19395d = i2 - 1;
        this.f19392a = new int[i2];
    }

    public /* synthetic */ l(int i2, int i7, kotlin.jvm.internal.g gVar) {
        this((i7 & 1) != 0 ? 8 : i2);
    }
}
