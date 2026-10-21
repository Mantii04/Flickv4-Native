package com.google.android.gms.measurement.internal;

/* loaded from: classes2.dex */
final class zzmw extends zzav {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zzmx f12133e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzmw(zzmx zzmxVar, zzio zzioVar) {
        super(zzioVar);
        this.f12133e = zzmxVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzav
    public final void zzb() {
        zzmx zzmxVar = this.f12133e;
        zzmxVar.zzu();
        zzmxVar.zzj().zzp().zza("Starting upload from DelayedRunnable");
        zzmxVar.f12138b.N();
    }
}
