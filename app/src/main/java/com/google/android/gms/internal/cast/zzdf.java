package com.google.android.gms.internal.cast;

import com.google.android.gms.cast.internal.Logger;

/* loaded from: classes2.dex */
final class zzdf extends zzdu {
    final /* synthetic */ zzdn zza;

    public zzdf(zzdn zzdnVar) {
        this.zza = zzdnVar;
    }

    @Override // com.google.android.gms.internal.cast.zzdv
    public final void zzb(int i2) {
        Logger logger;
        logger = zzdn.zza;
        logger.d("onRemoteDisplayEnded", new Object[0]);
        zzdn.zzf(this.zza);
    }
}
