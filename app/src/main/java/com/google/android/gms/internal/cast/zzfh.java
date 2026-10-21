package com.google.android.gms.internal.cast;

import A.i;

/* loaded from: classes2.dex */
final class zzfh {
    public static void zza(Object obj, Object obj2) {
        if (obj == null) {
            throw new NullPointerException("null key in entry: null=".concat(String.valueOf(obj2)));
        }
        if (obj2 == null) {
            throw new NullPointerException(i.l("null value in entry: ", obj.toString(), "=null"));
        }
    }
}
