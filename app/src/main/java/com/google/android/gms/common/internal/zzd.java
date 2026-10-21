package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;

/* loaded from: classes.dex */
public final class zzd extends zzac {

    /* renamed from: a, reason: collision with root package name */
    public BaseGmsClient f10948a;

    /* renamed from: b, reason: collision with root package name */
    public final int f10949b;

    public zzd(BaseGmsClient baseGmsClient, int i2) {
        this.f10948a = baseGmsClient;
        this.f10949b = i2;
    }

    @Override // com.google.android.gms.common.internal.IGmsCallbacks
    public final void onPostInitComplete(int i2, IBinder iBinder, Bundle bundle) {
        Preconditions.checkNotNull(this.f10948a, "onPostInitComplete can be called only once per call to getRemoteService");
        this.f10948a.onPostInitHandler(i2, iBinder, bundle, this.f10949b);
        this.f10948a = null;
    }

    @Override // com.google.android.gms.common.internal.IGmsCallbacks
    public final void zzb(int i2, Bundle bundle) {
        Log.wtf("GmsClient", "received deprecated onAccountValidationComplete callback, ignoring", new Exception());
    }

    @Override // com.google.android.gms.common.internal.IGmsCallbacks
    public final void zzc(int i2, IBinder iBinder, zzk zzkVar) {
        BaseGmsClient baseGmsClient = this.f10948a;
        Preconditions.checkNotNull(baseGmsClient, "onPostInitCompleteWithConnectionInfo can be called only once per call togetRemoteService");
        Preconditions.checkNotNull(zzkVar);
        BaseGmsClient.zzj(baseGmsClient, zzkVar);
        onPostInitComplete(i2, iBinder, zzkVar.f10956b);
    }
}
