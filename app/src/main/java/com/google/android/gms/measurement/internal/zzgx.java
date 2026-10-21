package com.google.android.gms.measurement.internal;

import android.os.Bundle;

/* loaded from: classes2.dex */
final class zzgx implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ com.google.android.gms.internal.measurement.zzby f11650b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zzgu f11651e;

    public zzgx(zzgu zzguVar, com.google.android.gms.internal.measurement.zzby zzbyVar, zzgu zzguVar2) {
        this.f11650b = zzbyVar;
        this.f11651e = zzguVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzgu zzguVar = this.f11651e;
        zzho zzhoVar = zzguVar.f11647b.f11648a;
        zzhoVar.zzl().zzt();
        com.google.android.gms.internal.measurement.zzby zzbyVar = this.f11650b;
        Bundle bundle = new Bundle();
        bundle.putString("package_name", zzguVar.f11646a);
        try {
            if (zzbyVar.zza(bundle) == null) {
                zzhoVar.zzj().zzg().zza("Install Referrer Service returned a null response");
            }
        } catch (Exception e3) {
            zzhoVar.zzj().zzg().zza("Exception occurred while retrieving the Install Referrer", e3.getMessage());
        }
        zzhoVar.zzl().zzt();
        throw new IllegalStateException("Unexpected call on client side");
    }
}
