package com.google.android.gms.internal.cast;

import androidx.media3.common.util.Log;

/* loaded from: classes2.dex */
public class zzfl {
    public static int zza(int i2, int i7) {
        if (i7 < 0) {
            throw new AssertionError("cannot store more than MAX_VALUE elements");
        }
        int i8 = i2 + (i2 >> 1) + 1;
        if (i8 < i7) {
            int highestOneBit = Integer.highestOneBit(i7 - 1);
            i8 = highestOneBit + highestOneBit;
        }
        return i8 < 0 ? Log.LOG_LEVEL_OFF : i8;
    }
}
