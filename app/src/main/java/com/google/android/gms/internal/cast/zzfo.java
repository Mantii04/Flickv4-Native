package com.google.android.gms.internal.cast;

/* loaded from: classes2.dex */
final class zzfo extends zzfg {
    private final zzfq zza;

    public zzfo(zzfq zzfqVar, int i2) {
        super(zzfqVar.size(), i2);
        this.zza = zzfqVar;
    }

    @Override // com.google.android.gms.internal.cast.zzfg
    public final Object zza(int i2) {
        return this.zza.get(i2);
    }
}
