package com.google.common.primitives;

import P3.v;
import U3.f;
import androidx.media3.common.util.Log;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public abstract class a {
    public static int a(int[] iArr, int i2, int i7, int i8) {
        while (i7 < i8) {
            if (iArr[i7] == i2) {
                return i7;
            }
            i7++;
        }
        return -1;
    }

    public static List<Integer> asList(int... iArr) {
        return iArr.length == 0 ? Collections.EMPTY_LIST : new Ints$IntArrayAsList(0, iArr.length, iArr);
    }

    public static int checkedCast(long j7) {
        int i2 = (int) j7;
        v.checkArgument(((long) i2) == j7, "Out of range: %s", j7);
        return i2;
    }

    public static int[] concat(int[]... iArr) {
        long j7 = 0;
        for (int[] iArr2 : iArr) {
            j7 += iArr2.length;
        }
        int i2 = (int) j7;
        v.checkArgument(j7 == ((long) i2), "the total number of elements (%s) in the arrays must fit in an int", j7);
        int[] iArr3 = new int[i2];
        int i7 = 0;
        for (int[] iArr4 : iArr) {
            System.arraycopy(iArr4, 0, iArr3, i7, iArr4.length);
            i7 += iArr4.length;
        }
        return iArr3;
    }

    public static int constrainToRange(int i2, int i7, int i8) {
        v.checkArgument(i7 <= i8, "min (%s) must be less than or equal to max (%s)", i7, i8);
        return Math.min(Math.max(i2, i7), i8);
    }

    public static int fromByteArray(byte[] bArr) {
        v.checkArgument(bArr.length >= 4, "array too small: %s < %s", bArr.length, 4);
        return fromBytes(bArr[0], bArr[1], bArr[2], bArr[3]);
    }

    public static int fromBytes(byte b7, byte b8, byte b9, byte b10) {
        return (b7 << 24) | ((b8 & 255) << 16) | ((b9 & 255) << 8) | (b10 & 255);
    }

    public static int hashCode(int i2) {
        return i2;
    }

    public static int indexOf(int[] iArr, int i2) {
        return a(iArr, i2, 0, iArr.length);
    }

    public static int saturatedCast(long j7) {
        if (j7 > 2147483647L) {
            return Log.LOG_LEVEL_OFF;
        }
        if (j7 < -2147483648L) {
            return Integer.MIN_VALUE;
        }
        return (int) j7;
    }

    public static int[] toArray(Collection<? extends Number> collection) {
        if (collection instanceof Ints$IntArrayAsList) {
            Ints$IntArrayAsList ints$IntArrayAsList = (Ints$IntArrayAsList) collection;
            return Arrays.copyOfRange(ints$IntArrayAsList.f13183b, ints$IntArrayAsList.f13184e, ints$IntArrayAsList.f13185f);
        }
        Object[] array = collection.toArray();
        int length = array.length;
        int[] iArr = new int[length];
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2] = ((Number) v.checkNotNull(array[i2])).intValue();
        }
        return iArr;
    }

    public static byte[] toByteArray(int i2) {
        return new byte[]{(byte) (i2 >> 24), (byte) (i2 >> 16), (byte) (i2 >> 8), (byte) i2};
    }

    public static Integer tryParse(String str) {
        return tryParse(str, 10);
    }

    public static Integer tryParse(String str, int i2) {
        Long tryParse = f.tryParse(str, i2);
        if (tryParse == null || tryParse.longValue() != tryParse.intValue()) {
            return null;
        }
        return Integer.valueOf(tryParse.intValue());
    }
}
