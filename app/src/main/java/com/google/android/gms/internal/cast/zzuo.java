package com.google.android.gms.internal.cast;

/* loaded from: classes2.dex */
final class zzuo implements zzuv {
    private final zzuv[] zza;

    public zzuo(zzuv... zzuvVarArr) {
        this.zza = zzuvVarArr;
    }

    @Override // com.google.android.gms.internal.cast.zzuv
    public final zzuu zzb(Class cls) {
        for (int i2 = 0; i2 < 2; i2++) {
            zzuv zzuvVar = this.zza[i2];
            if (zzuvVar.zzc(cls)) {
                return zzuvVar.zzb(cls);
            }
        }
        throw new UnsupportedOperationException("No factory is available for message type: ".concat(cls.getName()));
    }

    @Override // com.google.android.gms.internal.cast.zzuv
    public final boolean zzc(Class cls) {
        for (int i2 = 0; i2 < 2; i2++) {
            if (this.zza[i2].zzc(cls)) {
                return true;
            }
        }
        return false;
    }
}
