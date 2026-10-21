package com.google.android.gms.measurement.internal;

import androidx.media3.exoplayer.ExoPlayer;

/* loaded from: classes2.dex */
final class zzjv extends zzav {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zziy f11907e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzjv(zziy zziyVar, zzio zzioVar) {
        super(zzioVar);
        this.f11907e = zziyVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzav
    public final void zzb() {
        zziy zziyVar = this.f11907e;
        if (zziyVar.f11804a.zzah()) {
            zziyVar.f11856p.zza(ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
        }
    }
}
