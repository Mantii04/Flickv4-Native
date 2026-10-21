package com.google.android.gms.internal.cast;

import android.os.RemoteException;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.api.Status;

/* loaded from: classes2.dex */
public final class zzdk extends zzdi {
    final /* synthetic */ zzdl zza;

    public zzdk(zzdl zzdlVar) {
        this.zza = zzdlVar;
    }

    @Override // com.google.android.gms.internal.cast.zzdi, com.google.android.gms.internal.cast.zzds
    public final void zzd(int i2) throws RemoteException {
        Logger logger;
        logger = zzdn.zza;
        logger.d("onError: %d", Integer.valueOf(i2));
        zzdn.zzf(this.zza.zzc);
        this.zza.setResult((zzdl) new zzdm(Status.f10607p));
    }

    @Override // com.google.android.gms.internal.cast.zzdi, com.google.android.gms.internal.cast.zzds
    public final void zzf() throws RemoteException {
        Logger logger;
        logger = zzdn.zza;
        logger.d("onDisconnected", new Object[0]);
        zzdn.zzf(this.zza.zzc);
        this.zza.setResult((zzdl) new zzdm(Status.f10605m));
    }
}
