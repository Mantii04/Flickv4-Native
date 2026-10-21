package com.google.android.gms.common;

/* loaded from: classes.dex */
final class zzy {
    public static int a(int i2) {
        int[] iArr = {1, 2, 3, 4, 5, 6};
        for (int i7 = 0; i7 < 6; i7++) {
            int i8 = iArr[i7];
            int i9 = i8 - 1;
            if (i8 == 0) {
                throw null;
            }
            if (i9 == i2) {
                return i8;
            }
        }
        return 1;
    }
}
