package P0;

import androidx.media3.common.util.Util;

/* loaded from: classes.dex */
public final class M {

    /* renamed from: a, reason: collision with root package name */
    public final J f2544a;

    /* renamed from: b, reason: collision with root package name */
    public final int f2545b;

    /* renamed from: c, reason: collision with root package name */
    public final long[] f2546c;

    /* renamed from: d, reason: collision with root package name */
    public final int[] f2547d;

    /* renamed from: e, reason: collision with root package name */
    public final int f2548e;

    /* renamed from: f, reason: collision with root package name */
    public final long[] f2549f;

    /* renamed from: g, reason: collision with root package name */
    public final int[] f2550g;

    /* renamed from: h, reason: collision with root package name */
    public final int[] f2551h;

    /* renamed from: i, reason: collision with root package name */
    public final long f2552i;

    /* renamed from: j, reason: collision with root package name */
    public final boolean f2553j;

    public M(J j7, long[] jArr, int[] iArr, int i2, long[] jArr2, int[] iArr2, int[] iArr3, boolean z6, long j8, int i7) {
        P3.v.checkArgument(iArr.length == jArr2.length);
        P3.v.checkArgument(jArr.length == jArr2.length);
        P3.v.checkArgument(iArr2.length == jArr2.length);
        this.f2544a = j7;
        this.f2546c = jArr;
        this.f2547d = iArr;
        this.f2548e = i2;
        this.f2549f = jArr2;
        this.f2550g = iArr2;
        this.f2551h = iArr3;
        this.f2553j = z6;
        this.f2552i = j8;
        this.f2545b = i7;
        if (iArr2.length > 0) {
            int length = iArr2.length - 1;
            iArr2[length] = iArr2[length] | androidx.media3.common.C.BUFFER_FLAG_LAST_SAMPLE;
        }
    }

    public int getIndexOfEarlierOrEqualSynchronizationSample(long j7) {
        boolean z6 = this.f2553j;
        int i2 = 0;
        long[] jArr = this.f2549f;
        if (z6) {
            return Util.binarySearchFloor(jArr, j7, true, false);
        }
        int[] iArr = this.f2551h;
        int length = iArr.length - 1;
        int i7 = -1;
        while (i2 <= length) {
            int c7 = b.c.c(length, i2, 2, i2);
            if (jArr[iArr[c7]] <= j7) {
                i2 = c7 + 1;
                i7 = c7;
            } else {
                length = c7 - 1;
            }
        }
        if (i7 == -1) {
            return -1;
        }
        long j8 = jArr[iArr[i7]];
        if (j8 == j7) {
            while (i7 > 0 && jArr[iArr[i7 - 1]] == j8) {
                i7--;
            }
        }
        return iArr[i7];
    }

    public int getIndexOfLaterOrEqualSynchronizationSample(long j7) {
        boolean z6 = this.f2553j;
        int i2 = 0;
        long[] jArr = this.f2549f;
        if (z6) {
            return Util.binarySearchCeil(jArr, j7, true, false);
        }
        int[] iArr = this.f2551h;
        int length = iArr.length - 1;
        int i7 = -1;
        while (i2 <= length) {
            int c7 = b.c.c(length, i2, 2, i2);
            if (jArr[iArr[c7]] >= j7) {
                length = c7 - 1;
                i7 = c7;
            } else {
                i2 = c7 + 1;
            }
        }
        if (i7 == -1) {
            return -1;
        }
        long j8 = jArr[iArr[i7]];
        if (j8 == j7) {
            while (i7 < iArr.length - 1) {
                int i8 = i7 + 1;
                if (jArr[iArr[i8]] != j8) {
                    break;
                }
                i7 = i8;
            }
        }
        return iArr[i7];
    }
}
