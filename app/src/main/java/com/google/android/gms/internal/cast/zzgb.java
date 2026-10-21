package com.google.android.gms.internal.cast;

import com.google.firebase.analytics.FirebaseAnalytics;

/* loaded from: classes2.dex */
final class zzgb extends zzfq {
    private final transient Object[] zza;
    private final transient int zzb;
    private final transient int zzc;

    public zzgb(Object[] objArr, int i2, int i7) {
        this.zza = objArr;
        this.zzb = i2;
        this.zzc = i7;
    }

    @Override // java.util.List
    public final Object get(int i2) {
        zzez.zza(i2, this.zzc, FirebaseAnalytics.Param.INDEX);
        Object obj = this.zza[i2 + i2 + this.zzb];
        obj.getClass();
        return obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.cast.zzfm
    public final boolean zzf() {
        return true;
    }
}
