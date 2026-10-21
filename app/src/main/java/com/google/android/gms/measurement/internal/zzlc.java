package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes2.dex */
final class zzlc implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f12008b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f12009e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ zzn f12010f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ boolean f12011j;

    /* renamed from: m, reason: collision with root package name */
    public final /* synthetic */ com.google.android.gms.internal.measurement.zzdi f12012m;

    /* renamed from: n, reason: collision with root package name */
    public final /* synthetic */ zzla f12013n;

    public zzlc(zzla zzlaVar, String str, String str2, zzn zznVar, boolean z6, com.google.android.gms.internal.measurement.zzdi zzdiVar) {
        this.f12008b = str;
        this.f12009e = str2;
        this.f12010f = zznVar;
        this.f12011j = z6;
        this.f12012m = zzdiVar;
        this.f12013n = zzlaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzn zznVar = this.f12010f;
        String str = this.f12008b;
        com.google.android.gms.internal.measurement.zzdi zzdiVar = this.f12012m;
        zzla zzlaVar = this.f12013n;
        Bundle bundle = new Bundle();
        try {
            zzfq zzfqVar = zzlaVar.f12001d;
            String str2 = this.f12009e;
            if (zzfqVar == null) {
                zzlaVar.zzj().zzg().zza("Failed to get user properties; not connected to service", str, str2);
                return;
            }
            Preconditions.checkNotNull(zznVar);
            Bundle zza = zznt.zza(zzfqVar.zza(str, str2, this.f12011j, zznVar));
            zzlaVar.f();
            zzlaVar.zzq().zza(zzdiVar, zza);
        } catch (RemoteException e3) {
            zzlaVar.zzj().zzg().zza("Failed to get user properties; remote exception", str, e3);
        } finally {
            zzlaVar.zzq().zza(zzdiVar, bundle);
        }
    }
}
