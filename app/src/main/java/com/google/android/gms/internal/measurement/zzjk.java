package com.google.android.gms.internal.measurement;

/* loaded from: classes2.dex */
final class zzjk {
    private static final zzji<?> zza = new zzjh();
    private static final zzji<?> zzb = zzc();

    public static zzji<?> zza() {
        zzji<?> zzjiVar = zzb;
        if (zzjiVar != null) {
            return zzjiVar;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }

    public static zzji<?> zzb() {
        return zza;
    }

    private static zzji<?> zzc() {
        try {
            return (zzji) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }
}
