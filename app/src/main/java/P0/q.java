package P0;

import androidx.media3.common.util.Util;

/* loaded from: classes.dex */
public abstract class q {
    public static p rechunk(int i2, long[] jArr, int[] iArr, long j7) {
        int[] iArr2 = iArr;
        int i7 = 8192 / i2;
        int i8 = 0;
        int i9 = 0;
        for (int i10 : iArr2) {
            i9 += Util.ceilDivide(i10, i7);
        }
        long[] jArr2 = new long[i9];
        int[] iArr3 = new int[i9];
        long[] jArr3 = new long[i9];
        int[] iArr4 = new int[i9];
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        while (i8 < iArr2.length) {
            int i15 = iArr2[i8];
            long j8 = jArr[i8];
            while (i15 > 0) {
                int min = Math.min(i7, i15);
                jArr2[i13] = j8;
                int i16 = i2 * min;
                iArr3[i13] = i16;
                i12 += i16;
                i14 = Math.max(i14, i16);
                jArr3[i13] = i11 * j7;
                iArr4[i13] = 1;
                j8 += iArr3[i13];
                i11 += min;
                i15 -= min;
                i13++;
                i7 = i7;
            }
            i8++;
            iArr2 = iArr;
        }
        return new p(jArr2, iArr3, i14, jArr3, iArr4, j7 * i11, i12);
    }
}
