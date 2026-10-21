package com.google.android.gms.internal.common;

import com.google.firebase.analytics.FirebaseAnalytics;

/* loaded from: classes2.dex */
final class zzaf extends zzag {
    final transient int zza;
    final transient int zzb;
    final /* synthetic */ zzag zzc;

    public zzaf(zzag zzagVar, int i2, int i7) {
        this.zzc = zzagVar;
        this.zza = i2;
        this.zzb = i7;
    }

    @Override // java.util.List
    public final Object get(int i2) {
        zzs.zza(i2, this.zzb, FirebaseAnalytics.Param.INDEX);
        return this.zzc.get(i2 + this.zza);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.common.zzac
    public final int zzb() {
        return this.zzc.zzc() + this.zza + this.zzb;
    }

    @Override // com.google.android.gms.internal.common.zzac
    public final int zzc() {
        return this.zzc.zzc() + this.zza;
    }

    @Override // com.google.android.gms.internal.common.zzac
    public final boolean zzf() {
        return true;
    }

    @Override // com.google.android.gms.internal.common.zzac
    public final Object[] zzg() {
        return this.zzc.zzg();
    }

    @Override // com.google.android.gms.internal.common.zzag, java.util.List
    /* renamed from: zzh, reason: merged with bridge method [inline-methods] */
    public final zzag subList(int i2, int i7) {
        zzs.zzc(i2, i7, this.zzb);
        int i8 = this.zza;
        return this.zzc.subList(i2 + i8, i7 + i8);
    }
}
