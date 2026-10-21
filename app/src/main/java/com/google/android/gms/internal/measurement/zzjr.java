package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzjt;

/* loaded from: classes2.dex */
final class zzjr implements zzld {
    private static final zzjr zza = new zzjr();

    private zzjr() {
    }

    public static zzjr zza() {
        return zza;
    }

    @Override // com.google.android.gms.internal.measurement.zzld
    public final boolean zzb(Class<?> cls) {
        return zzjt.class.isAssignableFrom(cls);
    }

    @Override // com.google.android.gms.internal.measurement.zzld
    public final zzle zza(Class<?> cls) {
        if (!zzjt.class.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Unsupported message type: ".concat(cls.getName()));
        }
        try {
            return (zzle) zzjt.zza(cls.asSubclass(zzjt.class)).zza(zzjt.zzf.zzc, (Object) null, (Object) null);
        } catch (Exception e3) {
            throw new RuntimeException("Unable to get message info for ".concat(cls.getName()), e3);
        }
    }
}
