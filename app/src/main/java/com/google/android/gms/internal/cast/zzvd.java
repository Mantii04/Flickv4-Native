package com.google.android.gms.internal.cast;

/* loaded from: classes2.dex */
final class zzvd {
    private static final zzvc zza;
    private static final zzvc zzb;

    static {
        zzvc zzvcVar;
        try {
            zzvcVar = (zzvc) Class.forName("com.google.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            zzvcVar = null;
        }
        zza = zzvcVar;
        zzb = new zzvc();
    }

    public static zzvc zza() {
        return zza;
    }

    public static zzvc zzb() {
        return zzb;
    }
}
