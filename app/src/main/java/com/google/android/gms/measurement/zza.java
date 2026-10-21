package com.google.android.gms.measurement;

import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.AppMeasurement;
import com.google.android.gms.measurement.internal.zzkn;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
final class zza extends AppMeasurement.zza {

    /* renamed from: a, reason: collision with root package name */
    public final zzkn f12271a;

    public zza(zzkn zzknVar) {
        super(0);
        Preconditions.checkNotNull(zzknVar);
        this.f12271a = zzknVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzkn
    public final int zza(String str) {
        return this.f12271a.zza(str);
    }

    @Override // com.google.android.gms.measurement.internal.zzkn
    public final void zzb(String str) {
        this.f12271a.zzb(str);
    }

    @Override // com.google.android.gms.measurement.internal.zzkn
    public final void zzc(String str) {
        this.f12271a.zzc(str);
    }

    @Override // com.google.android.gms.measurement.internal.zzkn
    public final long zzf() {
        return this.f12271a.zzf();
    }

    @Override // com.google.android.gms.measurement.internal.zzkn
    public final String zzg() {
        return this.f12271a.zzg();
    }

    @Override // com.google.android.gms.measurement.internal.zzkn
    public final String zzh() {
        return this.f12271a.zzh();
    }

    @Override // com.google.android.gms.measurement.internal.zzkn
    public final String zzi() {
        return this.f12271a.zzi();
    }

    @Override // com.google.android.gms.measurement.internal.zzkn
    public final String zzj() {
        return this.f12271a.zzj();
    }

    @Override // com.google.android.gms.measurement.internal.zzkn
    public final List<Bundle> zza(String str, String str2) {
        return this.f12271a.zza(str, str2);
    }

    @Override // com.google.android.gms.measurement.internal.zzkn
    public final void zzb(String str, String str2, Bundle bundle) {
        this.f12271a.zzb(str, str2, bundle);
    }

    @Override // com.google.android.gms.measurement.internal.zzkn
    public final Map<String, Object> zza(String str, String str2, boolean z6) {
        return this.f12271a.zza(str, str2, z6);
    }

    @Override // com.google.android.gms.measurement.internal.zzkn
    public final void zza(String str, String str2, Bundle bundle) {
        this.f12271a.zza(str, str2, bundle);
    }

    @Override // com.google.android.gms.measurement.internal.zzkn
    public final void zza(Bundle bundle) {
        this.f12271a.zza(bundle);
    }
}
