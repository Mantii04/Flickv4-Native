package com.google.android.gms.cast.internal;

import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.cast.Cast;

/* loaded from: classes.dex */
final class zzs implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzw f10405b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zzab f10406e;

    public zzs(zzw zzwVar, zzab zzabVar) {
        this.f10405b = zzwVar;
        this.f10406e = zzabVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z6;
        boolean z7;
        boolean z8;
        Logger logger = zzw.f10414x;
        zzab zzabVar = this.f10406e;
        ApplicationMetadata zze = zzabVar.zze();
        zzw zzwVar = this.f10405b;
        boolean zze2 = CastUtils.zze(zze, zzwVar.f10417a);
        Cast.Listener listener = zzwVar.f10419c;
        if (!zze2) {
            zzwVar.f10417a = zze;
            listener.onApplicationMetadataChanged(zze);
        }
        double zzb = zzabVar.zzb();
        if (Double.isNaN(zzb) || Math.abs(zzb - zzwVar.f10429m) <= 1.0E-7d) {
            z6 = false;
        } else {
            zzwVar.f10429m = zzb;
            z6 = true;
        }
        boolean zzg = zzabVar.zzg();
        if (zzg != zzwVar.f10425i) {
            zzwVar.f10425i = zzg;
            z6 = true;
        }
        Double.isNaN(zzabVar.zza());
        Logger logger2 = zzw.f10414x;
        logger2.d("hasVolumeChanged=%b, mFirstDeviceStatusUpdate=%b", Boolean.valueOf(z6), Boolean.valueOf(zzwVar.f10427k));
        if (listener != null && (z6 || zzwVar.f10427k)) {
            listener.onVolumeChanged();
        }
        int zzc = zzabVar.zzc();
        if (zzc != zzwVar.f10431o) {
            zzwVar.f10431o = zzc;
            z7 = true;
        } else {
            z7 = false;
        }
        logger2.d("hasActiveInputChanged=%b, mFirstDeviceStatusUpdate=%b", Boolean.valueOf(z7), Boolean.valueOf(zzwVar.f10427k));
        if (listener != null && (z7 || zzwVar.f10427k)) {
            listener.onActiveInputStateChanged(zzwVar.f10431o);
        }
        int zzd = zzabVar.zzd();
        if (zzd != zzwVar.f10432p) {
            zzwVar.f10432p = zzd;
            z8 = true;
        } else {
            z8 = false;
        }
        logger2.d("hasStandbyStateChanged=%b, mFirstDeviceStatusUpdate=%b", Boolean.valueOf(z8), Boolean.valueOf(zzwVar.f10427k));
        if (listener != null && (z8 || zzwVar.f10427k)) {
            listener.onStandbyStateChanged(zzwVar.f10432p);
        }
        if (!CastUtils.zze(zzwVar.f10430n, zzabVar.zzf())) {
            zzwVar.f10430n = zzabVar.zzf();
        }
        zzwVar.f10427k = false;
    }
}
