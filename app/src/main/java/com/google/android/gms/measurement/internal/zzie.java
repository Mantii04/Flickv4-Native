package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzon;
import java.util.HashMap;

/* loaded from: classes2.dex */
final class zzie implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzn f11784b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zzhs f11785e;

    public zzie(zzhs zzhsVar, zzn zznVar) {
        this.f11784b = zznVar;
        this.f11785e = zzhsVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zznd zzndVar = this.f11785e.f11742a;
        zzndVar.L();
        zzndVar.zzl().zzt();
        zzndVar.M();
        zzn zznVar = this.f11784b;
        String str = zznVar.f12154b;
        Preconditions.checkNotEmpty(str);
        zziq zza = zziq.zza(zznVar.f12143E, (zzon.zza() && zzndVar.zze().zza(zzbh.f11287M0)) ? zznVar.f12148J : 100);
        zziq A6 = zzndVar.A(str);
        zzndVar.zzj().zzp().zza("Setting consent, package, consent", str, zza);
        zzndVar.zzl().zzt();
        zzndVar.M();
        zzndVar.f12176B.put(str, zza);
        zzndVar.zzf().zza(str, zza);
        if (zza.zzc(A6)) {
            zzndVar.I(zznVar);
        }
        if (zzon.zza() && zzndVar.zze().zza(zzbh.f11287M0)) {
            zzax zza2 = zzax.zza(zznVar.f12149K);
            if (zzax.f11224f.equals(zza2)) {
                return;
            }
            zzndVar.zzj().zzp().zza("Setting DMA consent. package, consent", str, zza2);
            zzndVar.zzl().zzt();
            zzndVar.M();
            boolean zza3 = zzon.zza();
            HashMap hashMap = zzndVar.f12177C;
            String str2 = zznVar.f12154b;
            if (!zza3 || !zzndVar.zze().zza(zzbh.f11295Q0)) {
                hashMap.put(str2, zza2);
                zzndVar.zzf().zza(str2, zza2);
                return;
            }
            zzip zzc = zzax.zza(zzndVar.b(str2), 100).zzc();
            hashMap.put(str2, zza2);
            zzndVar.zzf().zza(str2, zza2);
            zzip zzc2 = zzax.zza(zzndVar.b(str2), 100).zzc();
            zzndVar.zzl().zzt();
            zzndVar.M();
            if (zzc == zzip.f11807f && zzc2 == zzip.f11808j) {
                zzndVar.zzj().zzp().zza("Generated _dcu event for", str2);
                Bundle bundle = new Bundle();
                if (zzndVar.zzf().zza(zzndVar.O(), str2, false, false, false, false, false, false).f11212f < zzndVar.zze().zzb(str2, zzbh.f11308X)) {
                    bundle.putLong("_r", 1L);
                    zzndVar.zzj().zzp().zza("_dcu realtime event count", str2, Long.valueOf(zzndVar.zzf().zza(zzndVar.O(), str2, false, false, false, false, false, true).f11212f));
                }
                zzndVar.f12181G.zza(str2, "_dcu", bundle);
            }
        }
    }
}
