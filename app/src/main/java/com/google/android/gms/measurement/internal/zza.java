package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.util.Clock;
import java.util.Iterator;
import p.g;

/* loaded from: classes2.dex */
public final class zza extends zzd {

    /* renamed from: b, reason: collision with root package name */
    public final g f11153b;

    /* renamed from: c, reason: collision with root package name */
    public final g f11154c;

    /* renamed from: d, reason: collision with root package name */
    public long f11155d;

    public zza(zzho zzhoVar) {
        super(zzhoVar);
        this.f11154c = new g();
        this.f11153b = new g();
    }

    public final void a(long j7, zzks zzksVar) {
        if (zzksVar == null) {
            zzj().zzp().zza("Not logging ad exposure. No active activity");
            return;
        }
        if (j7 < 1000) {
            zzj().zzp().zza("Not logging ad exposure. Less than 1000 ms. exposure", Long.valueOf(j7));
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putLong("_xt", j7);
        zznt.zza(zzksVar, bundle, true);
        zzm().n("am", "_xa", bundle);
    }

    public final void b(String str, long j7, zzks zzksVar) {
        if (zzksVar == null) {
            zzj().zzp().zza("Not logging ad unit exposure. No active activity");
            return;
        }
        if (j7 < 1000) {
            zzj().zzp().zza("Not logging ad unit exposure. Less than 1000 ms. exposure", Long.valueOf(j7));
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString("_ai", str);
        bundle.putLong("_xt", j7);
        zznt.zza(zzksVar, bundle, true);
        zzm().n("am", "_xu", bundle);
    }

    public final void c(long j7) {
        g gVar = this.f11153b;
        Iterator<Object> it = gVar.keySet().iterator();
        while (it.hasNext()) {
            gVar.put((String) it.next(), Long.valueOf(j7));
        }
        if (gVar.isEmpty()) {
            return;
        }
        this.f11155d = j7;
    }

    @Override // com.google.android.gms.measurement.internal.zzim, com.google.android.gms.measurement.internal.zzio
    public final /* bridge */ /* synthetic */ Context zza() {
        return super.zza();
    }

    @Override // com.google.android.gms.measurement.internal.zzim, com.google.android.gms.measurement.internal.zzio
    public final /* bridge */ /* synthetic */ Clock zzb() {
        return super.zzb();
    }

    @Override // com.google.android.gms.measurement.internal.zzim, com.google.android.gms.measurement.internal.zzio
    public final /* bridge */ /* synthetic */ zzad zzd() {
        return super.zzd();
    }

    @Override // com.google.android.gms.measurement.internal.zzim
    public final /* bridge */ /* synthetic */ zzae zze() {
        return super.zze();
    }

    @Override // com.google.android.gms.measurement.internal.zzim
    public final /* bridge */ /* synthetic */ zzaz zzf() {
        return super.zzf();
    }

    @Override // com.google.android.gms.measurement.internal.zzim
    public final /* bridge */ /* synthetic */ zzfw zzi() {
        return super.zzi();
    }

    @Override // com.google.android.gms.measurement.internal.zzim, com.google.android.gms.measurement.internal.zzio
    public final /* bridge */ /* synthetic */ zzgb zzj() {
        return super.zzj();
    }

    @Override // com.google.android.gms.measurement.internal.zzim
    public final /* bridge */ /* synthetic */ zzgm zzk() {
        return super.zzk();
    }

    @Override // com.google.android.gms.measurement.internal.zzim, com.google.android.gms.measurement.internal.zzio
    public final /* bridge */ /* synthetic */ zzhh zzl() {
        return super.zzl();
    }

    @Override // com.google.android.gms.measurement.internal.zzd
    public final /* bridge */ /* synthetic */ zziy zzm() {
        return super.zzm();
    }

    @Override // com.google.android.gms.measurement.internal.zzd
    public final /* bridge */ /* synthetic */ zzkv zzn() {
        return super.zzn();
    }

    @Override // com.google.android.gms.measurement.internal.zzim
    public final /* bridge */ /* synthetic */ zznt zzq() {
        return super.zzq();
    }

    @Override // com.google.android.gms.measurement.internal.zzd, com.google.android.gms.measurement.internal.zzim
    public final /* bridge */ /* synthetic */ void zzt() {
        super.zzt();
    }

    public final void zza(String str, long j7) {
        if (str == null || str.length() == 0) {
            zzj().zzg().zza("Ad unit id must be a non-empty string");
        } else {
            zzl().zzb(new zzc(this, str, j7));
        }
    }

    public final void zzb(String str, long j7) {
        if (str == null || str.length() == 0) {
            zzj().zzg().zza("Ad unit id must be a non-empty string");
        } else {
            zzl().zzb(new zzb(this, str, j7));
        }
    }

    public final void zza(long j7) {
        zzks zza = zzn().zza(false);
        g gVar = this.f11153b;
        Iterator<Object> it = gVar.keySet().iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            b(str, j7 - ((Long) gVar.get(str)).longValue(), zza);
        }
        if (!gVar.isEmpty()) {
            a(j7 - this.f11155d, zza);
        }
        c(j7);
    }
}
