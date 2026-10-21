package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes2.dex */
final class zzll implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzn f12033b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zzla f12034e;

    public zzll(zzla zzlaVar, zzn zznVar) {
        this.f12033b = zznVar;
        this.f12034e = zzlaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzn zznVar = this.f12033b;
        zzla zzlaVar = this.f12034e;
        zzfq zzfqVar = zzlaVar.f12001d;
        if (zzfqVar == null) {
            zzlaVar.zzj().zzg().zza("Discarding data. Failed to send app launch");
            return;
        }
        try {
            Preconditions.checkNotNull(zznVar);
            zzfqVar.zzc(zznVar);
            zzlaVar.zzh().zzac();
            zzlaVar.a(zzfqVar, null, zznVar);
            zzlaVar.f();
        } catch (RemoteException e3) {
            zzlaVar.zzj().zzg().zza("Failed to send app launch to the service", e3);
        }
    }
}
