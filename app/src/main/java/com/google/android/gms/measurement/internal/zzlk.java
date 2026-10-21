package com.google.android.gms.measurement.internal;

import android.os.RemoteException;

/* loaded from: classes2.dex */
final class zzlk implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzks f12031b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zzla f12032e;

    public zzlk(zzla zzlaVar, zzks zzksVar) {
        this.f12031b = zzksVar;
        this.f12032e = zzlaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzla zzlaVar = this.f12032e;
        zzfq zzfqVar = zzlaVar.f12001d;
        if (zzfqVar == null) {
            zzlaVar.zzj().zzg().zza("Failed to send current screen to service");
            return;
        }
        try {
            zzks zzksVar = this.f12031b;
            if (zzksVar == null) {
                zzfqVar.zza(0L, (String) null, (String) null, zzlaVar.zza().getPackageName());
            } else {
                zzfqVar.zza(zzksVar.f11968c, zzksVar.f11966a, zzksVar.f11967b, zzlaVar.zza().getPackageName());
            }
            zzlaVar.f();
        } catch (RemoteException e3) {
            zzlaVar.zzj().zzg().zza("Failed to send current screen to the service", e3);
        }
    }
}
