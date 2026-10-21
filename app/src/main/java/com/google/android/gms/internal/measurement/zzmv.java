package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* loaded from: classes2.dex */
final class zzmv extends zzmt<zzmw, zzmw> {
    @Override // com.google.android.gms.internal.measurement.zzmt
    public final boolean zza(zzlv zzlvVar) {
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.zzmt
    public final /* synthetic */ int zzb(zzmw zzmwVar) {
        return zzmwVar.zzb();
    }

    @Override // com.google.android.gms.internal.measurement.zzmt
    public final /* synthetic */ zzmw zzc(Object obj) {
        zzmw zzmwVar = ((zzjt) obj).zzb;
        if (zzmwVar != zzmw.zzc()) {
            return zzmwVar;
        }
        zzmw zzd = zzmw.zzd();
        zza(obj, zzd);
        return zzd;
    }

    @Override // com.google.android.gms.internal.measurement.zzmt
    public final /* synthetic */ zzmw zzd(Object obj) {
        return ((zzjt) obj).zzb;
    }

    @Override // com.google.android.gms.internal.measurement.zzmt
    public final /* synthetic */ zzmw zze(zzmw zzmwVar) {
        zzmw zzmwVar2 = zzmwVar;
        zzmwVar2.zze();
        return zzmwVar2;
    }

    @Override // com.google.android.gms.internal.measurement.zzmt
    public final void zzf(Object obj) {
        ((zzjt) obj).zzb.zze();
    }

    @Override // com.google.android.gms.internal.measurement.zzmt
    public final /* synthetic */ int zza(zzmw zzmwVar) {
        return zzmwVar.zza();
    }

    @Override // com.google.android.gms.internal.measurement.zzmt
    public final /* synthetic */ void zzb(zzmw zzmwVar, int i2, long j7) {
        zzmwVar.zza(i2 << 3, Long.valueOf(j7));
    }

    @Override // com.google.android.gms.internal.measurement.zzmt
    public final /* synthetic */ zzmw zza(zzmw zzmwVar, zzmw zzmwVar2) {
        zzmw zzmwVar3 = zzmwVar;
        zzmw zzmwVar4 = zzmwVar2;
        if (zzmw.zzc().equals(zzmwVar4)) {
            return zzmwVar3;
        }
        if (zzmw.zzc().equals(zzmwVar3)) {
            return zzmw.zza(zzmwVar3, zzmwVar4);
        }
        return zzmwVar3.zza(zzmwVar4);
    }

    @Override // com.google.android.gms.internal.measurement.zzmt
    public final /* synthetic */ void zzb(Object obj, zzmw zzmwVar) {
        zza(obj, zzmwVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzmt
    public final /* synthetic */ void zzc(Object obj, zzmw zzmwVar) {
        zza(obj, zzmwVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzmt
    public final /* synthetic */ void zzb(zzmw zzmwVar, zznt zzntVar) throws IOException {
        zzmwVar.zzb(zzntVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzmt
    public final /* synthetic */ zzmw zza() {
        return zzmw.zzd();
    }

    @Override // com.google.android.gms.internal.measurement.zzmt
    public final /* synthetic */ void zza(zzmw zzmwVar, int i2, int i7) {
        zzmwVar.zza((i2 << 3) | 5, Integer.valueOf(i7));
    }

    @Override // com.google.android.gms.internal.measurement.zzmt
    public final /* synthetic */ void zza(zzmw zzmwVar, int i2, long j7) {
        zzmwVar.zza((i2 << 3) | 1, Long.valueOf(j7));
    }

    @Override // com.google.android.gms.internal.measurement.zzmt
    public final /* synthetic */ void zza(zzmw zzmwVar, int i2, zzmw zzmwVar2) {
        zzmwVar.zza((i2 << 3) | 3, zzmwVar2);
    }

    @Override // com.google.android.gms.internal.measurement.zzmt
    public final /* synthetic */ void zza(zzmw zzmwVar, int i2, zzij zzijVar) {
        zzmwVar.zza((i2 << 3) | 2, zzijVar);
    }

    private static void zza(Object obj, zzmw zzmwVar) {
        ((zzjt) obj).zzb = zzmwVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzmt
    public final /* synthetic */ void zza(zzmw zzmwVar, zznt zzntVar) throws IOException {
        zzmwVar.zza(zzntVar);
    }
}
