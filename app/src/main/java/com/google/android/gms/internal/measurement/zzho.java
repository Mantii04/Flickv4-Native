package com.google.android.gms.internal.measurement;

import P3.p;
import android.net.Uri;

/* loaded from: classes2.dex */
public final class zzho {
    final String zza;
    final Uri zzb;
    final String zzc;
    final String zzd;
    final boolean zze;
    final boolean zzf;
    final boolean zzg;
    final p zzh;
    private final boolean zzi;

    public zzho(Uri uri) {
        this(null, uri, "", "", false, false, false, false, null);
    }

    public final zzho zza() {
        return new zzho(this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzf, true, this.zzg, this.zzh);
    }

    public final zzho zzb() {
        if (!this.zzc.isEmpty()) {
            throw new IllegalStateException("Cannot set GServices prefix and skip GServices");
        }
        p pVar = this.zzh;
        if (pVar == null) {
            return new zzho(this.zza, this.zzb, this.zzc, this.zzd, true, this.zzf, this.zzi, this.zzg, pVar);
        }
        throw new IllegalStateException("Cannot skip gservices both always and conditionally");
    }

    private zzho(String str, Uri uri, String str2, String str3, boolean z6, boolean z7, boolean z8, boolean z9, p pVar) {
        this.zza = str;
        this.zzb = uri;
        this.zzc = str2;
        this.zzd = str3;
        this.zze = z6;
        this.zzf = z7;
        this.zzi = z8;
        this.zzg = z9;
        this.zzh = pVar;
    }

    public final zzhg<Double> zza(String str, double d7) {
        return zzhg.zza(this, str, Double.valueOf(-3.0d), true);
    }

    public final zzhg<Long> zza(String str, long j7) {
        return zzhg.zza(this, str, Long.valueOf(j7), true);
    }

    public final zzhg<String> zza(String str, String str2) {
        return zzhg.zza(this, str, str2, true);
    }

    public final zzhg<Boolean> zza(String str, boolean z6) {
        return zzhg.zza(this, str, Boolean.valueOf(z6), true);
    }
}
