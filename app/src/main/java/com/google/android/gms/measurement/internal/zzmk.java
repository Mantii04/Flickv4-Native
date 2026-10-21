package com.google.android.gms.measurement.internal;

import androidx.media3.exoplayer.ExoPlayer;

/* loaded from: classes2.dex */
final class zzmk implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ long f12110b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zzmi f12111e;

    public zzmk(zzmi zzmiVar, long j7) {
        this.f12110b = j7;
        this.f12111e = zzmiVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzmi zzmiVar = this.f12111e;
        zzmiVar.zzt();
        zzmiVar.a();
        zzgd zzp = zzmiVar.zzj().zzp();
        long j7 = this.f12110b;
        zzp.zza("Activity paused, time", Long.valueOf(j7));
        zzmn zzmnVar = zzmiVar.f12109g;
        zzmi zzmiVar2 = zzmnVar.f12118b;
        zzmm zzmmVar = new zzmm(zzmnVar, zzmiVar2.zzb().currentTimeMillis(), j7);
        zzmnVar.f12117a = zzmmVar;
        zzmiVar2.f12105c.postDelayed(zzmmVar, ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
        if (zzmiVar.zze().zzv()) {
            zzmiVar.f12108f.f12121c.a();
        }
    }
}
