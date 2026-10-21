package com.google.android.gms.internal.cast;

/* loaded from: classes2.dex */
final class zzef extends zzek {
    final /* synthetic */ zzeg zza;

    public zzef(zzeg zzegVar) {
        this.zza = zzegVar;
    }

    @Override // com.google.android.gms.internal.cast.zzek
    public final void zza(long j7) {
        int i2;
        zzeg zzegVar = this.zza;
        i2 = zzegVar.zzc;
        zzegVar.zzc = i2 + 1;
        zzeg zzegVar2 = this.zza;
        if (zzegVar2.zza(zzegVar2.zza) || this.zza.zza.isStarted()) {
            return;
        }
        zzeg zzegVar3 = this.zza;
        if (zzeg.zze(zzegVar3)) {
            return;
        }
        zzegVar3.zza.start();
    }
}
