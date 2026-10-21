package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;

/* loaded from: classes2.dex */
final class zzlv implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f12068b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f12069e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ zzn f12070f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ com.google.android.gms.internal.measurement.zzdi f12071j;

    /* renamed from: m, reason: collision with root package name */
    public final /* synthetic */ zzla f12072m;

    public zzlv(zzla zzlaVar, String str, String str2, zzn zznVar, com.google.android.gms.internal.measurement.zzdi zzdiVar) {
        this.f12068b = str;
        this.f12069e = str2;
        this.f12070f = zznVar;
        this.f12071j = zzdiVar;
        this.f12072m = zzlaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzn zznVar = this.f12070f;
        String str = this.f12069e;
        String str2 = this.f12068b;
        com.google.android.gms.internal.measurement.zzdi zzdiVar = this.f12071j;
        zzla zzlaVar = this.f12072m;
        ArrayList<Bundle> arrayList = new ArrayList<>();
        try {
            zzfq zzfqVar = zzlaVar.f12001d;
            if (zzfqVar == null) {
                zzlaVar.zzj().zzg().zza("Failed to get conditional properties; not connected to service", str2, str);
                return;
            }
            Preconditions.checkNotNull(zznVar);
            ArrayList<Bundle> zzb = zznt.zzb(zzfqVar.zza(str2, str, zznVar));
            zzlaVar.f();
            zzlaVar.zzq().zza(zzdiVar, zzb);
        } catch (RemoteException e3) {
            zzlaVar.zzj().zzg().zza("Failed to get conditional properties; remote exception", str2, str, e3);
        } finally {
            zzlaVar.zzq().zza(zzdiVar, arrayList);
        }
    }
}
