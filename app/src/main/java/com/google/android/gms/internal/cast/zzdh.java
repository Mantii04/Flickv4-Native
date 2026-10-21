package com.google.android.gms.internal.cast;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;

/* loaded from: classes2.dex */
final class zzdh extends zzdl {
    public zzdh(zzdn zzdnVar, GoogleApiClient googleApiClient) {
        super(zzdnVar, googleApiClient);
    }

    @Override // com.google.android.gms.internal.cast.zzdl, com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    /* renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final void doExecute(zzdq zzdqVar) throws RemoteException {
        zzdqVar.zzs(new zzdk(this));
    }
}
