package com.google.android.gms.measurement.internal;

import android.os.RemoteException;

/* loaded from: classes2.dex */
final class zzlp implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzbf f12041b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f12042e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ com.google.android.gms.internal.measurement.zzdi f12043f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ zzla f12044j;

    public zzlp(zzla zzlaVar, zzbf zzbfVar, String str, com.google.android.gms.internal.measurement.zzdi zzdiVar) {
        this.f12041b = zzbfVar;
        this.f12042e = str;
        this.f12043f = zzdiVar;
        this.f12044j = zzlaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.google.android.gms.internal.measurement.zzdi zzdiVar = this.f12043f;
        zzla zzlaVar = this.f12044j;
        try {
            zzfq zzfqVar = zzlaVar.f12001d;
            if (zzfqVar == null) {
                zzlaVar.zzj().zzg().zza("Discarding data. Failed to send event to service to bundle");
                return;
            }
            byte[] zza = zzfqVar.zza(this.f12041b, this.f12042e);
            zzlaVar.f();
            zzlaVar.zzq().zza(zzdiVar, zza);
        } catch (RemoteException e3) {
            zzlaVar.zzj().zzg().zza("Failed to send event to the service to bundle", e3);
        } finally {
            zzlaVar.zzq().zza(zzdiVar, (byte[]) null);
        }
    }
}
