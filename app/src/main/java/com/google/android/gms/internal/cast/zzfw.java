package com.google.android.gms.internal.cast;

import A.i;

/* loaded from: classes2.dex */
public final class zzfw {
    public static Object zza(Object obj, int i2) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException(i.f(i2, "at index "));
    }

    public static Object[] zzb(Object[] objArr, int i2) {
        for (int i7 = 0; i7 < i2; i7++) {
            zza(objArr[i7], i7);
        }
        return objArr;
    }
}
