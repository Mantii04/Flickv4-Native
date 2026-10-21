package com.google.android.gms.internal.cast;

import com.google.firebase.analytics.FirebaseAnalytics;

/* loaded from: classes2.dex */
final class zzfp extends zzfq {
    final transient int zza;
    final transient int zzb;
    final /* synthetic */ zzfq zzc;

    public zzfp(zzfq zzfqVar, int i2, int i7) {
        this.zzc = zzfqVar;
        this.zza = i2;
        this.zzb = i7;
    }

    @Override // java.util.List
    public final Object get(int i2) {
        zzez.zza(i2, this.zzb, FirebaseAnalytics.Param.INDEX);
        return this.zzc.get(i2 + this.zza);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.cast.zzfm
    public final int zzb() {
        return this.zzc.zzc() + this.zza + this.zzb;
    }

    @Override // com.google.android.gms.internal.cast.zzfm
    public final int zzc() {
        return this.zzc.zzc() + this.zza;
    }

    @Override // com.google.android.gms.internal.cast.zzfm
    public final boolean zzf() {
        return true;
    }

    @Override // com.google.android.gms.internal.cast.zzfm
    public final Object[] zzg() {
        return this.zzc.zzg();
    }

    @Override // com.google.android.gms.internal.cast.zzfq, java.util.List
    /* renamed from: zzh */
    public final zzfq subList(int i2, int i7) {
        zzez.zzd(i2, i7, this.zzb);
        int i8 = this.zza;
        return this.zzc.subList(i2 + i8, i7 + i8);
    }
}
