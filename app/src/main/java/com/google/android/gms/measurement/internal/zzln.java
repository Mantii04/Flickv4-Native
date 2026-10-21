package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes2.dex */
final class zzln implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzn f12036b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Bundle f12037e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ zzla f12038f;

    public zzln(zzla zzlaVar, zzn zznVar, Bundle bundle) {
        this.f12036b = zznVar;
        this.f12037e = bundle;
        this.f12038f = zzlaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzn zznVar = this.f12036b;
        zzla zzlaVar = this.f12038f;
        zzfq zzfqVar = zzlaVar.f12001d;
        if (zzfqVar == null) {
            zzlaVar.zzj().zzg().zza("Failed to send default event parameters to service");
            return;
        }
        try {
            Preconditions.checkNotNull(zznVar);
            zzfqVar.zza(this.f12037e, zznVar);
        } catch (RemoteException e3) {
            zzlaVar.zzj().zzg().zza("Failed to send default event parameters to service", e3);
        }
    }
}
