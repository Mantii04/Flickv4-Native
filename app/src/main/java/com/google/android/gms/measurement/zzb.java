package com.google.android.gms.measurement;

import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.AppMeasurement;
import com.google.android.gms.measurement.internal.zzho;
import com.google.android.gms.measurement.internal.zziy;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
final class zzb extends AppMeasurement.zza {

    /* renamed from: a, reason: collision with root package name */
    public final zzho f12272a;

    /* renamed from: b, reason: collision with root package name */
    public final zziy f12273b;

    public zzb(zzho zzhoVar) {
        super(0);
        Preconditions.checkNotNull(zzhoVar);
        this.f12272a = zzhoVar;
        this.f12273b = zzhoVar.zzp();
    }

    @Override // com.google.android.gms.measurement.internal.zzkn
    public final int zza(String str) {
        Preconditions.checkNotEmpty(str);
        return 25;
    }

    @Override // com.google.android.gms.measurement.internal.zzkn
    public final void zzb(String str) {
        zzho zzhoVar = this.f12272a;
        zzhoVar.zze().zza(str, zzhoVar.zzb().elapsedRealtime());
    }

    @Override // com.google.android.gms.measurement.internal.zzkn
    public final void zzc(String str) {
        zzho zzhoVar = this.f12272a;
        zzhoVar.zze().zzb(str, zzhoVar.zzb().elapsedRealtime());
    }

    @Override // com.google.android.gms.measurement.internal.zzkn
    public final long zzf() {
        return this.f12272a.zzt().zzm();
    }

    @Override // com.google.android.gms.measurement.internal.zzkn
    public final String zzg() {
        return this.f12273b.zzae();
    }

    @Override // com.google.android.gms.measurement.internal.zzkn
    public final String zzh() {
        return this.f12273b.zzaf();
    }

    @Override // com.google.android.gms.measurement.internal.zzkn
    public final String zzi() {
        return this.f12273b.zzag();
    }

    @Override // com.google.android.gms.measurement.internal.zzkn
    public final String zzj() {
        return this.f12273b.zzae();
    }

    @Override // com.google.android.gms.measurement.internal.zzkn
    public final List<Bundle> zza(String str, String str2) {
        return this.f12273b.zza(str, str2);
    }

    @Override // com.google.android.gms.measurement.internal.zzkn
    public final Map<String, Object> zza(String str, String str2, boolean z6) {
        return this.f12273b.zza(str, str2, z6);
    }

    @Override // com.google.android.gms.measurement.internal.zzkn
    public final void zzb(String str, String str2, Bundle bundle) {
        this.f12273b.zzb(str, str2, bundle);
    }

    @Override // com.google.android.gms.measurement.internal.zzkn
    public final void zza(String str, String str2, Bundle bundle) {
        this.f12272a.zzp().zza(str, str2, bundle);
    }

    @Override // com.google.android.gms.measurement.internal.zzkn
    public final void zza(Bundle bundle) {
        this.f12273b.zzb(bundle);
    }
}
