package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzds;

/* loaded from: classes2.dex */
final class zzeu extends zzds.zzb {
    private final /* synthetic */ zzde zzc;
    private final /* synthetic */ int zzd;
    private final /* synthetic */ zzds zze;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzeu(zzds zzdsVar, zzde zzdeVar, int i2) {
        super(zzdsVar);
        this.zzc = zzdeVar;
        this.zzd = i2;
        this.zze = zzdsVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzds.zzb
    public final void zza() throws RemoteException {
        zzdd zzddVar;
        zzddVar = this.zze.zzj;
        ((zzdd) Preconditions.checkNotNull(zzddVar)).getTestFlag(this.zzc, this.zzd);
    }

    @Override // com.google.android.gms.internal.measurement.zzds.zzb
    public final void zzb() {
        this.zzc.zza((Bundle) null);
    }
}
