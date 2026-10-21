package com.google.android.gms.internal.cast;

/* loaded from: classes2.dex */
final class zzth {
    private static final zztf zza = new zztg();
    private static final zztf zzb;

    static {
        zztf zztfVar;
        try {
            zztfVar = (zztf) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            zztfVar = null;
        }
        zzb = zztfVar;
    }

    public static zztf zza() {
        zztf zztfVar = zzb;
        if (zztfVar != null) {
            return zztfVar;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }

    public static zztf zzb() {
        return zza;
    }
}
