package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzds;

/* loaded from: classes2.dex */
final class zzdz extends zzds.zzb {
    private final /* synthetic */ Bundle zzc;
    private final /* synthetic */ zzds zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzdz(zzds zzdsVar, Bundle bundle) {
        super(zzdsVar);
        this.zzc = bundle;
        this.zzd = zzdsVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzds.zzb
    public final void zza() throws RemoteException {
        zzdd zzddVar;
        zzddVar = this.zzd.zzj;
        ((zzdd) Preconditions.checkNotNull(zzddVar)).setConsent(this.zzc, this.zza);
    }
}
