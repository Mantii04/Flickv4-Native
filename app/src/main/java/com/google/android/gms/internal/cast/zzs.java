package com.google.android.gms.internal.cast;

/* loaded from: classes2.dex */
final class zzs implements com.google.android.gms.cast.framework.zzs {
    final /* synthetic */ zzv zza;

    public /* synthetic */ zzs(zzv zzvVar, zzr zzrVar) {
        this.zza = zzvVar;
    }

    @Override // com.google.android.gms.cast.framework.zzs
    public final void zza() {
        zzv.zzf(this.zza, new zzz(new zzy(3)));
    }

    @Override // com.google.android.gms.cast.framework.zzs
    public final void zzb(String str, long j7, int i2, long j8, long j9) {
        zzx zzg;
        zzg = this.zza.zzg();
        zzp zzpVar = new zzp(str);
        zzpVar.zzf(j7);
        zzpVar.zzh(i2);
        zzpVar.zzg(j8);
        zzpVar.zze(j9);
        zzg.zzb(new zzq(zzpVar));
    }
}
