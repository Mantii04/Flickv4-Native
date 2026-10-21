package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes2.dex */
final class zzlr implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzn f12049b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zzla f12050e;

    public zzlr(zzla zzlaVar, zzn zznVar) {
        this.f12049b = zznVar;
        this.f12050e = zzlaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzn zznVar = this.f12049b;
        zzla zzlaVar = this.f12050e;
        zzfq zzfqVar = zzlaVar.f12001d;
        if (zzfqVar == null) {
            zzlaVar.zzj().zzg().zza("Failed to send consent settings to service");
            return;
        }
        try {
            Preconditions.checkNotNull(zznVar);
            zzfqVar.zze(zznVar);
            zzlaVar.f();
        } catch (RemoteException e3) {
            zzlaVar.zzj().zzg().zza("Failed to send consent settings to the service", e3);
        }
    }
}
