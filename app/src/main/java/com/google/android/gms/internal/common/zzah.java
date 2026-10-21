package com.google.android.gms.internal.common;

import A.i;
import org.jspecify.nullness.NullMarked;

@NullMarked
/* loaded from: classes2.dex */
public final class zzah {
    public static Object[] zza(Object[] objArr, int i2) {
        for (int i7 = 0; i7 < i2; i7++) {
            if (objArr[i7] == null) {
                throw new NullPointerException(i.f(i7, "at index "));
            }
        }
        return objArr;
    }
}
