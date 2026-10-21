package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzds;

/* loaded from: classes2.dex */
final class zzex extends zzds.zzb {
    private final /* synthetic */ Long zzc;
    private final /* synthetic */ String zzd;
    private final /* synthetic */ String zze;
    private final /* synthetic */ Bundle zzf;
    private final /* synthetic */ boolean zzg;
    private final /* synthetic */ boolean zzh;
    private final /* synthetic */ zzds zzi;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzex(zzds zzdsVar, Long l7, String str, String str2, Bundle bundle, boolean z6, boolean z7) {
        super(zzdsVar);
        this.zzc = l7;
        this.zzd = str;
        this.zze = str2;
        this.zzf = bundle;
        this.zzg = z6;
        this.zzh = z7;
        this.zzi = zzdsVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzds.zzb
    public final void zza() throws RemoteException {
        zzdd zzddVar;
        Long l7 = this.zzc;
        long longValue = l7 == null ? this.zza : l7.longValue();
        zzddVar = this.zzi.zzj;
        ((zzdd) Preconditions.checkNotNull(zzddVar)).logEvent(this.zzd, this.zze, this.zzf, this.zzg, this.zzh, longValue);
    }
}
