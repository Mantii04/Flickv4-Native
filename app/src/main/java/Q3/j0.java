package Q3;

import a.AbstractC0373c;
import androidx.media3.common.util.Log;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class j0 {

    /* renamed from: a, reason: collision with root package name */
    public transient Object[] f2893a;

    /* renamed from: b, reason: collision with root package name */
    public transient int[] f2894b;

    /* renamed from: c, reason: collision with root package name */
    public transient int f2895c;

    /* renamed from: d, reason: collision with root package name */
    public transient int[] f2896d;

    /* renamed from: e, reason: collision with root package name */
    public transient long[] f2897e;

    /* renamed from: f, reason: collision with root package name */
    public transient float f2898f;

    /* renamed from: g, reason: collision with root package name */
    public transient int f2899g;

    public final void a(int i2) {
        if (i2 > this.f2897e.length) {
            d(i2);
        }
        if (i2 >= this.f2899g) {
            e(Math.max(2, Integer.highestOneBit(i2 - 1) << 1));
        }
    }

    public final int b(Object obj) {
        int e3 = AbstractC0373c.e(obj);
        int i2 = this.f2896d[(r1.length - 1) & e3];
        while (i2 != -1) {
            long j7 = this.f2897e[i2];
            if (((int) (j7 >>> 32)) == e3 && P3.u.equal(obj, this.f2893a[i2])) {
                return i2;
            }
            i2 = (int) j7;
        }
        return -1;
    }

    public final void c(int i2) {
        P3.v.checkArgument(i2 >= 0, "Initial capacity must be non-negative");
        P3.v.checkArgument(true, "Illegal load factor");
        int max = Math.max(i2, 2);
        int highestOneBit = Integer.highestOneBit(max);
        if (max > ((int) (1.0f * highestOneBit)) && (highestOneBit = highestOneBit << 1) <= 0) {
            highestOneBit = 1073741824;
        }
        int[] iArr = new int[highestOneBit];
        Arrays.fill(iArr, -1);
        this.f2896d = iArr;
        this.f2898f = 1.0f;
        this.f2893a = new Object[i2];
        this.f2894b = new int[i2];
        long[] jArr = new long[i2];
        Arrays.fill(jArr, -1L);
        this.f2897e = jArr;
        this.f2899g = Math.max(1, (int) (highestOneBit * 1.0f));
    }

    public final void d(int i2) {
        this.f2893a = Arrays.copyOf(this.f2893a, i2);
        this.f2894b = Arrays.copyOf(this.f2894b, i2);
        long[] jArr = this.f2897e;
        int length = jArr.length;
        long[] copyOf = Arrays.copyOf(jArr, i2);
        if (i2 > length) {
            Arrays.fill(copyOf, length, i2, -1L);
        }
        this.f2897e = copyOf;
    }

    public final void e(int i2) {
        if (this.f2896d.length >= 1073741824) {
            this.f2899g = Log.LOG_LEVEL_OFF;
            return;
        }
        int i7 = ((int) (i2 * this.f2898f)) + 1;
        int[] iArr = new int[i2];
        Arrays.fill(iArr, -1);
        long[] jArr = this.f2897e;
        int i8 = i2 - 1;
        for (int i9 = 0; i9 < this.f2895c; i9++) {
            int i10 = (int) (jArr[i9] >>> 32);
            int i11 = i10 & i8;
            int i12 = iArr[i11];
            iArr[i11] = i9;
            jArr[i9] = (i10 << 32) | (i12 & 4294967295L);
        }
        this.f2899g = i7;
        this.f2896d = iArr;
    }

    public int get(Object obj) {
        int b7 = b(obj);
        if (b7 == -1) {
            return 0;
        }
        return this.f2894b[b7];
    }

    public int put(Object obj, int i2) {
        long j7;
        if (i2 <= 0) {
            throw new IllegalArgumentException(A.i.f(i2, "count must be positive but was: "));
        }
        long[] jArr = this.f2897e;
        Object[] objArr = this.f2893a;
        int[] iArr = this.f2894b;
        int e3 = AbstractC0373c.e(obj);
        int[] iArr2 = this.f2896d;
        int length = (iArr2.length - 1) & e3;
        int i7 = this.f2895c;
        int i8 = iArr2[length];
        if (i8 == -1) {
            iArr2[length] = i7;
            j7 = 4294967295L;
        } else {
            while (true) {
                long j8 = jArr[i8];
                j7 = 4294967295L;
                if (((int) (j8 >>> 32)) == e3 && P3.u.equal(obj, objArr[i8])) {
                    int i9 = iArr[i8];
                    iArr[i8] = i2;
                    return i9;
                }
                int i10 = (int) j8;
                if (i10 == -1) {
                    jArr[i8] = ((-4294967296L) & j8) | (i7 & 4294967295L);
                    break;
                }
                i8 = i10;
            }
        }
        int i11 = Log.LOG_LEVEL_OFF;
        if (i7 == Integer.MAX_VALUE) {
            throw new IllegalStateException("Cannot contain more than Integer.MAX_VALUE elements!");
        }
        int i12 = i7 + 1;
        int length2 = this.f2897e.length;
        if (i12 > length2) {
            int max = Math.max(1, length2 >>> 1) + length2;
            if (max >= 0) {
                i11 = max;
            }
            if (i11 != length2) {
                d(i11);
            }
        }
        this.f2897e[i7] = (e3 << 32) | j7;
        this.f2893a[i7] = obj;
        this.f2894b[i7] = i2;
        this.f2895c = i12;
        if (i7 < this.f2899g) {
            return 0;
        }
        e(this.f2896d.length * 2);
        return 0;
    }
}
