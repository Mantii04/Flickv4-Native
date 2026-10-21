package com.google.android.gms.measurement.internal;

import android.content.Context;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;

/* loaded from: classes2.dex */
class zzim implements zzio {

    /* renamed from: a, reason: collision with root package name */
    public final zzho f11804a;

    public zzim(zzho zzhoVar) {
        Preconditions.checkNotNull(zzhoVar);
        this.f11804a = zzhoVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzio
    public Context zza() {
        return this.f11804a.zza();
    }

    @Override // com.google.android.gms.measurement.internal.zzio
    public Clock zzb() {
        return this.f11804a.zzb();
    }

    @Override // com.google.android.gms.measurement.internal.zzio
    public zzad zzd() {
        return this.f11804a.zzd();
    }

    public zzae zze() {
        return this.f11804a.zzf();
    }

    public zzaz zzf() {
        return this.f11804a.zzg();
    }

    public zzfw zzi() {
        return this.f11804a.zzk();
    }

    @Override // com.google.android.gms.measurement.internal.zzio
    public zzgb zzj() {
        return this.f11804a.zzj();
    }

    public zzgm zzk() {
        return this.f11804a.zzn();
    }

    @Override // com.google.android.gms.measurement.internal.zzio
    public zzhh zzl() {
        return this.f11804a.zzl();
    }

    public zznt zzq() {
        return this.f11804a.zzt();
    }

    public void zzr() {
        this.f11804a.zzl().zzr();
    }

    public void zzt() {
        this.f11804a.zzl().zzt();
    }
}
