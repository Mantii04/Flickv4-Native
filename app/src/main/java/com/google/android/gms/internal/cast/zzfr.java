package com.google.android.gms.internal.cast;

import A.i;

/* loaded from: classes2.dex */
final class zzfr {
    private final Object zza;
    private final Object zzb;
    private final Object zzc;

    public zzfr(Object obj, Object obj2, Object obj3) {
        this.zza = obj;
        this.zzb = obj2;
        this.zzc = obj3;
    }

    public final IllegalArgumentException zza() {
        Object obj = this.zzc;
        Object obj2 = this.zzb;
        Object obj3 = this.zza;
        String valueOf = String.valueOf(obj3);
        String valueOf2 = String.valueOf(obj2);
        String valueOf3 = String.valueOf(obj3);
        String valueOf4 = String.valueOf(obj);
        StringBuilder u6 = i.u("Multiple entries with same key: ", valueOf, "=", valueOf2, " and ");
        u6.append(valueOf3);
        u6.append("=");
        u6.append(valueOf4);
        return new IllegalArgumentException(u6.toString());
    }
}
