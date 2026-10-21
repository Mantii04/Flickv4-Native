package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import p.g;

/* loaded from: classes2.dex */
final class zzb implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f11241b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ long f11242e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ zza f11243f;

    public zzb(zza zzaVar, String str, long j7) {
        this.f11241b = str;
        this.f11242e = j7;
        this.f11243f = zzaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zza zzaVar = this.f11243f;
        zzaVar.zzt();
        String str = this.f11241b;
        Preconditions.checkNotEmpty(str);
        g gVar = zzaVar.f11154c;
        Integer num = (Integer) gVar.get(str);
        if (num == null) {
            zzaVar.zzj().zzg().zza("Call to endAdUnitExposure for unknown ad unit id", str);
            return;
        }
        zzks zza = zzaVar.zzn().zza(false);
        int intValue = num.intValue() - 1;
        if (intValue != 0) {
            gVar.put(str, Integer.valueOf(intValue));
            return;
        }
        gVar.remove(str);
        g gVar2 = zzaVar.f11153b;
        Long l7 = (Long) gVar2.get(str);
        long j7 = this.f11242e;
        if (l7 == null) {
            zzaVar.zzj().zzg().zza("First ad unit exposure time was never set");
        } else {
            long longValue = j7 - l7.longValue();
            gVar2.remove(str);
            zzaVar.b(str, longValue, zza);
        }
        if (gVar.isEmpty()) {
            long j8 = zzaVar.f11155d;
            if (j8 == 0) {
                zzaVar.zzj().zzg().zza("First ad exposure time was never set");
            } else {
                zzaVar.a(j7 - j8, zza);
                zzaVar.f11155d = 0L;
            }
        }
    }
}
