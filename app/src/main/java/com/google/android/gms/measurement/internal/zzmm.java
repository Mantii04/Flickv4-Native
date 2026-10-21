package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.google.android.gms.internal.measurement.zzqe;

/* loaded from: classes2.dex */
final class zzmm implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final long f12114b;

    /* renamed from: e, reason: collision with root package name */
    public final long f12115e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ zzmn f12116f;

    public zzmm(zzmn zzmnVar, long j7, long j8) {
        this.f12116f = zzmnVar;
        this.f12114b = j7;
        this.f12115e = j8;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f12116f.f12118b.zzl().zzb(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzmp
            @Override // java.lang.Runnable
            public final void run() {
                zzmm zzmmVar = zzmm.this;
                zzmn zzmnVar = zzmmVar.f12116f;
                zzmnVar.f12118b.zzt();
                zzmi zzmiVar = zzmnVar.f12118b;
                zzmiVar.zzj().zzc().zza("Application going to the background");
                zzmiVar.zzk().f11615t.zza(true);
                zzmiVar.zzt();
                zzmiVar.f12106d = true;
                if (!zzmiVar.zze().zzv()) {
                    long j7 = zzmmVar.f12115e;
                    zzmiVar.f12108f.f12121c.a();
                    zzmiVar.zza(false, false, j7);
                }
                boolean zza = zzqe.zza();
                long j8 = zzmmVar.f12114b;
                if (zza && zzmiVar.zze().zza(zzbh.f11269D0)) {
                    zzmiVar.zzj().zzn().zza("Application backgrounded at: timestamp_millis", Long.valueOf(j8));
                } else {
                    zzmiVar.zzm().j("auto", "_ab", new Bundle(), j8);
                }
            }
        });
    }
}
