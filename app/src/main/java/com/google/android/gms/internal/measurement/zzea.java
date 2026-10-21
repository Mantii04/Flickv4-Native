package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzds;

/* loaded from: classes2.dex */
final class zzea extends zzds.zzb {
    private final /* synthetic */ Boolean zzc;
    private final /* synthetic */ zzds zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzea(zzds zzdsVar, Boolean bool) {
        super(zzdsVar);
        this.zzc = bool;
        this.zzd = zzdsVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzds.zzb
    public final void zza() throws RemoteException {
        zzdd zzddVar;
        zzdd zzddVar2;
        if (this.zzc != null) {
            zzddVar2 = this.zzd.zzj;
            ((zzdd) Preconditions.checkNotNull(zzddVar2)).setMeasurementEnabled(this.zzc.booleanValue(), this.zza);
        } else {
            zzddVar = this.zzd.zzj;
            ((zzdd) Preconditions.checkNotNull(zzddVar)).clearMeasurementEnabled(this.zza);
        }
    }
}
