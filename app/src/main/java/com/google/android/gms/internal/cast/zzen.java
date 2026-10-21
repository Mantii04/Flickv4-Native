package com.google.android.gms.internal.cast;

/* loaded from: classes2.dex */
public abstract class zzen {
    private static final ThreadLocal zza = new zzeh();

    public static zzen zzb() {
        return (zzen) zza.get();
    }

    public abstract void zza(zzek zzekVar);
}
