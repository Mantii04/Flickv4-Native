package com.google.android.gms.internal.cast;

import java.io.Serializable;

/* loaded from: classes2.dex */
public abstract class zzev implements Serializable {
    public static zzev zzb() {
        return zzer.zza;
    }

    public static zzev zzc(Object obj) {
        return obj == null ? zzer.zza : new zzfa(obj);
    }

    public abstract Object zza(Object obj);
}
