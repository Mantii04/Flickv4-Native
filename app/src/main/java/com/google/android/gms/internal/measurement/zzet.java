package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzds;

/* loaded from: classes2.dex */
final class zzet extends zzds.zzb {
    private final /* synthetic */ boolean zzc;
    private final /* synthetic */ zzds zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzet(zzds zzdsVar, boolean z6) {
        super(zzdsVar);
        this.zzc = z6;
        this.zzd = zzdsVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzds.zzb
    public final void zza() throws RemoteException {
        zzdd zzddVar;
        zzddVar = this.zzd.zzj;
        ((zzdd) Preconditions.checkNotNull(zzddVar)).setDataCollectionEnabled(this.zzc);
    }
}
