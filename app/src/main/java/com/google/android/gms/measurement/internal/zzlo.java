package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes2.dex */
final class zzlo implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzn f12039b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zzla f12040e;

    public zzlo(zzla zzlaVar, zzn zznVar) {
        this.f12039b = zznVar;
        this.f12040e = zzlaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzn zznVar = this.f12039b;
        zzla zzlaVar = this.f12040e;
        zzfq zzfqVar = zzlaVar.f12001d;
        if (zzfqVar == null) {
            zzlaVar.zzj().zzg().zza("Failed to send measurementEnabled to service");
            return;
        }
        try {
            Preconditions.checkNotNull(zznVar);
            zzfqVar.zzf(zznVar);
            zzlaVar.f();
        } catch (RemoteException e3) {
            zzlaVar.zzj().zzg().zza("Failed to send measurementEnabled to the service", e3);
        }
    }
}
