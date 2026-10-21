package com.google.android.gms.measurement.internal;

/* loaded from: classes2.dex */
final class zzmr extends zzav {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zzmo f12125e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzmr(zzmo zzmoVar, zzio zzioVar) {
        super(zzioVar);
        this.f12125e = zzmoVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzav
    public final void zzb() {
        zzmo zzmoVar = this.f12125e;
        zzmoVar.f12122d.zzt();
        zzmi zzmiVar = zzmoVar.f12122d;
        zzmoVar.zza(false, false, zzmiVar.zzb().elapsedRealtime());
        zzmiVar.zzc().zza(zzmiVar.zzb().elapsedRealtime());
    }
}
