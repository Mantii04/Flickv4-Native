package com.google.android.gms.common.internal;

import android.app.PendingIntent;
import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;

/* loaded from: classes.dex */
abstract class zza extends zzc {

    /* renamed from: d, reason: collision with root package name */
    public final int f10936d;

    /* renamed from: e, reason: collision with root package name */
    public final Bundle f10937e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ BaseGmsClient f10938f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zza(BaseGmsClient baseGmsClient, int i2, Bundle bundle) {
        super(baseGmsClient, Boolean.TRUE);
        this.f10938f = baseGmsClient;
        this.f10936d = i2;
        this.f10937e = bundle;
    }

    @Override // com.google.android.gms.common.internal.zzc
    public final /* bridge */ /* synthetic */ void zza(Object obj) {
        BaseGmsClient baseGmsClient = this.f10938f;
        int i2 = this.f10936d;
        if (i2 != 0) {
            baseGmsClient.a(1, null);
            Bundle bundle = this.f10937e;
            zzb(new ConnectionResult(i2, bundle != null ? (PendingIntent) bundle.getParcelable(BaseGmsClient.KEY_PENDING_INTENT) : null));
        } else {
            if (zzd()) {
                return;
            }
            baseGmsClient.a(1, null);
            zzb(new ConnectionResult(8, null));
        }
    }

    public abstract void zzb(ConnectionResult connectionResult);

    @Override // com.google.android.gms.common.internal.zzc
    public final void zzc() {
    }

    public abstract boolean zzd();
}
