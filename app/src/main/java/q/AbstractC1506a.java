package q;

import kotlin.jvm.internal.j;

/* renamed from: q.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC1506a {

    /* renamed from: a, reason: collision with root package name */
    public static final int[] f19544a = new int[0];

    /* renamed from: b, reason: collision with root package name */
    public static final long[] f19545b = new long[0];

    /* renamed from: c, reason: collision with root package name */
    public static final Object[] f19546c = new Object[0];

    public static final int binarySearch(int[] array, int i2, int i7) {
        j.checkNotNullParameter(array, "array");
        int i8 = i2 - 1;
        int i9 = 0;
        while (i9 <= i8) {
            int i10 = (i9 + i8) >>> 1;
            int i11 = array[i10];
            if (i11 < i7) {
                i9 = i10 + 1;
            } else {
                if (i11 <= i7) {
                    return i10;
                }
                i8 = i10 - 1;
            }
        }
        return ~i9;
    }

    public static final boolean equal(Object obj, Object obj2) {
        return j.areEqual(obj, obj2);
    }

    public static final int idealByteArraySize(int i2) {
        for (int i7 = 4; i7 < 32; i7++) {
            int i8 = (1 << i7) - 12;
            if (i2 <= i8) {
                return i8;
            }
        }
        return i2;
    }

    public static final int idealIntArraySize(int i2) {
        return idealByteArraySize(i2 * 4) / 4;
    }

    public static final int idealLongArraySize(int i2) {
        return idealByteArraySize(i2 * 8) / 8;
    }

    public static final int binarySearch(long[] array, int i2, long j7) {
        j.checkNotNullParameter(array, "array");
        int i7 = i2 - 1;
        int i8 = 0;
        while (i8 <= i7) {
            int i9 = (i8 + i7) >>> 1;
            long j8 = array[i9];
            if (j8 < j7) {
                i8 = i9 + 1;
            } else {
                if (j8 <= j7) {
                    return i9;
                }
                i7 = i9 - 1;
            }
        }
        return ~i8;
    }
}
