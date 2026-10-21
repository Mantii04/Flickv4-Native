package com.google.android.gms.internal.cast;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;

/* loaded from: classes2.dex */
final class zzdg extends zzdl {
    final /* synthetic */ String zza;
    final /* synthetic */ zzdn zzb;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzdg(zzdn zzdnVar, GoogleApiClient googleApiClient, String str) {
        super(zzdnVar, googleApiClient);
        this.zzb = zzdnVar;
        this.zza = str;
    }

    @Override // com.google.android.gms.internal.cast.zzdl, com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    /* renamed from: zza */
    public final void doExecute(zzdq zzdqVar) throws RemoteException {
        zzdv zzdvVar;
        zzdj zzdjVar = new zzdj(this, zzdqVar);
        zzdvVar = this.zzb.zzd;
        zzdqVar.zzr(zzdjVar, zzdvVar, this.zza);
    }
}
