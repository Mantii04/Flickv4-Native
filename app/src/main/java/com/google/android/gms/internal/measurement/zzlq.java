package com.google.android.gms.internal.measurement;

/* loaded from: classes2.dex */
final class zzlq {
    private static final zzlo zza = zzc();
    private static final zzlo zzb = new zzln();

    public static zzlo zza() {
        return zza;
    }

    public static zzlo zzb() {
        return zzb;
    }

    private static zzlo zzc() {
        try {
            return (zzlo) Class.forName("com.google.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }
}
