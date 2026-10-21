package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.measurement.zzds;

/* loaded from: classes2.dex */
final class zzfb extends zzds.zzb {
    private final /* synthetic */ Activity zzc;
    private final /* synthetic */ zzds.zzc zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfb(zzds.zzc zzcVar, Activity activity) {
        super(zzds.this);
        this.zzc = activity;
        this.zzd = zzcVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzds.zzb
    public final void zza() throws RemoteException {
        zzdd zzddVar;
        zzddVar = zzds.this.zzj;
        ((zzdd) Preconditions.checkNotNull(zzddVar)).onActivityPaused(ObjectWrapper.wrap(this.zzc), this.zzb);
    }
}
