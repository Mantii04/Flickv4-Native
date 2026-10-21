package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes2.dex */
final class zzli implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzn f12025b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ com.google.android.gms.internal.measurement.zzdi f12026e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ zzla f12027f;

    public zzli(zzla zzlaVar, zzn zznVar, com.google.android.gms.internal.measurement.zzdi zzdiVar) {
        this.f12025b = zznVar;
        this.f12026e = zzdiVar;
        this.f12027f = zzlaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzn zznVar = this.f12025b;
        com.google.android.gms.internal.measurement.zzdi zzdiVar = this.f12026e;
        zzla zzlaVar = this.f12027f;
        try {
            if (!zzlaVar.zzk().d().zzj()) {
                zzlaVar.zzj().zzv().zza("Analytics storage consent denied; will not get app instance id");
                zzlaVar.zzm().i(null);
                zzlaVar.zzk().f11603h.zza(null);
                return;
            }
            zzfq zzfqVar = zzlaVar.f12001d;
            if (zzfqVar == null) {
                zzlaVar.zzj().zzg().zza("Failed to get app instance id");
                return;
            }
            Preconditions.checkNotNull(zznVar);
            String zzb = zzfqVar.zzb(zznVar);
            if (zzb != null) {
                zzlaVar.zzm().i(zzb);
                zzlaVar.zzk().f11603h.zza(zzb);
            }
            zzlaVar.f();
            zzlaVar.zzq().zza(zzdiVar, zzb);
        } catch (RemoteException e3) {
            zzlaVar.zzj().zzg().zza("Failed to get app instance id", e3);
        } finally {
            zzlaVar.zzq().zza(zzdiVar, (String) null);
        }
    }
}
