package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;

/* loaded from: classes2.dex */
final class zzkg implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzax f11936b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zziy f11937e;

    public zzkg(zziy zziyVar, zzax zzaxVar) {
        this.f11936b = zzaxVar;
        this.f11937e = zziyVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zziy zziyVar = this.f11937e;
        zzgm zzk = zziyVar.zzk();
        zzk.zzt();
        zzk.zzt();
        zzax zza = zzax.zza(zzk.zzg().getString("dma_consent_settings", null));
        zzax zzaxVar = this.f11936b;
        if (!zziq.zza(zzaxVar.zza(), zza.zza())) {
            zziyVar.zzj().zzn().zza("Lower precedence consent source ignored, proposed source", Integer.valueOf(zzaxVar.zza()));
            return;
        }
        SharedPreferences.Editor edit = zzk.zzg().edit();
        edit.putString("dma_consent_settings", zzaxVar.zzf());
        edit.apply();
        zziyVar.zzo().zza(false);
    }
}
