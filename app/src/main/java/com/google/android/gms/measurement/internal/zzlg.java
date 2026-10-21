package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes2.dex */
final class zzlg implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzn f12019b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zzla f12020e;

    public zzlg(zzla zzlaVar, zzn zznVar) {
        this.f12019b = zznVar;
        this.f12020e = zzlaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzn zznVar = this.f12019b;
        zzla zzlaVar = this.f12020e;
        zzfq zzfqVar = zzlaVar.f12001d;
        if (zzfqVar == null) {
            zzlaVar.zzj().zzg().zza("Failed to reset data on the service: not connected to service");
            return;
        }
        try {
            Preconditions.checkNotNull(zznVar);
            zzfqVar.zzd(zznVar);
        } catch (RemoteException e3) {
            zzlaVar.zzj().zzg().zza("Failed to reset data on the service: remote exception", e3);
        }
        zzlaVar.f();
    }
}
