package com.google.android.gms.common.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;

/* loaded from: classes.dex */
public final class zzg extends zza {

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ BaseGmsClient f10954g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzg(BaseGmsClient baseGmsClient, int i2, Bundle bundle) {
        super(baseGmsClient, i2, null);
        this.f10954g = baseGmsClient;
    }

    @Override // com.google.android.gms.common.internal.zza
    public final void zzb(ConnectionResult connectionResult) {
        BaseGmsClient baseGmsClient = this.f10954g;
        if (baseGmsClient.enableLocalFallback() && BaseGmsClient.zzo(baseGmsClient)) {
            BaseGmsClient.zzk(baseGmsClient, 16);
        } else {
            baseGmsClient.zzc.onReportServiceBinding(connectionResult);
            baseGmsClient.onConnectionFailed(connectionResult);
        }
    }

    @Override // com.google.android.gms.common.internal.zza
    public final boolean zzd() {
        this.f10954g.zzc.onReportServiceBinding(ConnectionResult.f10550m);
        return true;
    }
}
