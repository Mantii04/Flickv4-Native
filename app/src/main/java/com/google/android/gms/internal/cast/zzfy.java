package com.google.android.gms.internal.cast;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.AbstractMap;

/* loaded from: classes2.dex */
final class zzfy extends zzfq {
    final /* synthetic */ zzfz zza;

    public zzfy(zzfz zzfzVar) {
        this.zza = zzfzVar;
    }

    @Override // java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i2) {
        int i7;
        Object[] objArr;
        Object[] objArr2;
        i7 = this.zza.zzc;
        zzez.zza(i2, i7, FirebaseAnalytics.Param.INDEX);
        zzfz zzfzVar = this.zza;
        objArr = zzfzVar.zzb;
        int i8 = i2 + i2;
        Object obj = objArr[i8];
        obj.getClass();
        objArr2 = zzfzVar.zzb;
        Object obj2 = objArr2[i8 + 1];
        obj2.getClass();
        return new AbstractMap.SimpleImmutableEntry(obj, obj2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        int i2;
        i2 = this.zza.zzc;
        return i2;
    }

    @Override // com.google.android.gms.internal.cast.zzfm
    public final boolean zzf() {
        return true;
    }
}
