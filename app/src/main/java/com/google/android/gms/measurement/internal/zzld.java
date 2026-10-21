package com.google.android.gms.measurement.internal;

/* loaded from: classes2.dex */
final class zzld extends zzav {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zzla f12014e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzld(zzla zzlaVar, zzho zzhoVar) {
        super(zzhoVar);
        this.f12014e = zzlaVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzav
    public final void zzb() {
        zzla zzlaVar = this.f12014e;
        zzlaVar.zzt();
        if (zzlaVar.zzah()) {
            zzlaVar.zzj().zzp().zza("Inactivity, disconnecting from the service");
            zzlaVar.zzae();
        }
    }
}
