package com.google.android.gms.measurement.internal;

import android.app.ActivityManager;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.internal.measurement.zzqk;

/* loaded from: classes2.dex */
final class zzmq {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzmi f12124a;

    public zzmq(zzmi zzmiVar) {
        this.f12124a = zzmiVar;
    }

    public final void a() {
        zzmi zzmiVar = this.f12124a;
        zzmiVar.zzt();
        if (zzmiVar.zzk().a(zzmiVar.zzb().currentTimeMillis())) {
            zzmiVar.zzk().f11608m.zza(true);
            ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
            ActivityManager.getMyMemoryState(runningAppProcessInfo);
            if (runningAppProcessInfo.importance == 100) {
                zzmiVar.zzj().zzp().zza("Detected application was in foreground");
                c(zzmiVar.zzb().currentTimeMillis());
            }
        }
    }

    public final void b(long j7) {
        zzmi zzmiVar = this.f12124a;
        zzmiVar.zzt();
        zzmiVar.a();
        if (zzmiVar.zzk().a(j7)) {
            zzmiVar.zzk().f11608m.zza(true);
            if (zzqk.zza() && zzmiVar.zze().zza(zzbh.f11351r0)) {
                zzmiVar.zzg().zzag();
            }
        }
        zzmiVar.zzk().f11612q.zza(j7);
        if (zzmiVar.zzk().f11608m.zza()) {
            c(j7);
        }
    }

    public final void c(long j7) {
        zzmi zzmiVar = this.f12124a;
        zzmiVar.zzt();
        if (zzmiVar.f11804a.zzac()) {
            zzmiVar.zzk().f11612q.zza(j7);
            zzmiVar.zzj().zzp().zza("Session started, time", Long.valueOf(zzmiVar.zzb().elapsedRealtime()));
            long j8 = j7 / 1000;
            zzmiVar.zzm().a(j7, Long.valueOf(j8), "auto", "_sid");
            zzmiVar.zzk().f11613r.zza(j8);
            zzmiVar.zzk().f11608m.zza(false);
            Bundle bundle = new Bundle();
            bundle.putLong("_sid", j8);
            zzmiVar.zzm().j("auto", "_s", bundle, j7);
            String zza = zzmiVar.zzk().f11618w.zza();
            if (TextUtils.isEmpty(zza)) {
                return;
            }
            Bundle bundle2 = new Bundle();
            bundle2.putString("_ffr", zza);
            zzmiVar.zzm().j("auto", "_ssr", bundle2, j7);
        }
    }
}
