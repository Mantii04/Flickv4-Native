package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.text.TextUtils;
import java.util.HashMap;

/* loaded from: classes2.dex */
final class zzig implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzbf f11789b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zzn f11790e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ zzhs f11791f;

    public zzig(zzhs zzhsVar, zzbf zzbfVar, zzn zznVar) {
        this.f11789b = zzbfVar;
        this.f11790e = zznVar;
        this.f11791f = zzhsVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z6;
        zzba zzbaVar;
        zzhs zzhsVar = this.f11791f;
        zzbf zzbfVar = this.f11789b;
        boolean equals = "_cmp".equals(zzbfVar.f11257b);
        zznd zzndVar = zzhsVar.f11742a;
        if (equals && (zzbaVar = zzbfVar.f11258e) != null && zzbaVar.zza() != 0) {
            String string = zzbaVar.f11244b.getString("_cis");
            if ("referrer broadcast".equals(string) || "referrer API".equals(string)) {
                zzndVar.zzj().zzn().zza("Event has been filtered ", zzbfVar.toString());
                zzbfVar = new zzbf("_cmpx", zzbfVar.f11258e, zzbfVar.f11259f, zzbfVar.f11260j);
            }
        }
        String str = zzbfVar.f11257b;
        zzgy zzi = zzndVar.zzi();
        zzn zznVar = this.f11790e;
        String str2 = zznVar.f12154b;
        if (!zzi.zzl(str2)) {
            zzhsVar.d(zzbfVar, zznVar);
            return;
        }
        zzndVar.zzj().zzp().zza("EES config found for", str2);
        com.google.android.gms.internal.measurement.zzb zzbVar = TextUtils.isEmpty(str2) ? null : (com.google.android.gms.internal.measurement.zzb) zzndVar.zzi().f11658j.get(str2);
        if (zzbVar == null) {
            zzndVar.zzj().zzp().zza("EES not loaded for", str2);
            zzhsVar.d(zzbfVar, zznVar);
            return;
        }
        try {
            zznm zzp = zzndVar.zzp();
            Bundle zzb = zzbfVar.f11258e.zzb();
            zzp.getClass();
            HashMap n7 = zznm.n(zzb, true);
            String zza = zzit.zza(str);
            if (zza == null) {
                zza = str;
            }
            z6 = zzbVar.zza(new com.google.android.gms.internal.measurement.zzad(zza, zzbfVar.f11260j, n7));
        } catch (com.google.android.gms.internal.measurement.zzc unused) {
            zzndVar.zzj().zzg().zza("EES error. appId, eventName", zznVar.f12155e, str);
            z6 = false;
        }
        if (!z6) {
            zzndVar.zzj().zzp().zza("EES was not applied to event", str);
            zzhsVar.d(zzbfVar, zznVar);
            return;
        }
        if (zzbVar.zzd()) {
            zzndVar.zzj().zzp().zza("EES edited event", str);
            zznm zzp2 = zzndVar.zzp();
            com.google.android.gms.internal.measurement.zzad zzb2 = zzbVar.zza().zzb();
            zzp2.getClass();
            zzhsVar.d(zznm.h(zzb2), zznVar);
        } else {
            zzhsVar.d(zzbfVar, zznVar);
        }
        if (zzbVar.zzc()) {
            for (com.google.android.gms.internal.measurement.zzad zzadVar : zzbVar.zza().zzc()) {
                zzndVar.zzj().zzp().zza("EES logging created event", zzadVar.zzb());
                zzndVar.zzp().getClass();
                zzhsVar.d(zznm.h(zzadVar), zznVar);
            }
        }
    }
}
