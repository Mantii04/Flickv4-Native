package com.google.android.gms.internal.cast;

import A.i;
import java.util.Iterator;

/* loaded from: classes2.dex */
final class zzgf extends zzfu {
    final transient Object zza;

    public zzgf(Object obj) {
        obj.getClass();
        this.zza = obj;
    }

    @Override // com.google.android.gms.internal.cast.zzfm, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        return this.zza.equals(obj);
    }

    @Override // com.google.android.gms.internal.cast.zzfu, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.zza.hashCode();
    }

    @Override // com.google.android.gms.internal.cast.zzfu, com.google.android.gms.internal.cast.zzfm, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return new zzfv(this.zza);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        return i.l("[", this.zza.toString(), "]");
    }

    @Override // com.google.android.gms.internal.cast.zzfm
    public final int zza(Object[] objArr, int i2) {
        objArr[0] = this.zza;
        return 1;
    }

    @Override // com.google.android.gms.internal.cast.zzfu, com.google.android.gms.internal.cast.zzfm
    public final zzfq zzd() {
        int i2 = zzfq.zzd;
        Object[] objArr = {this.zza};
        zzfw.zzb(objArr, 1);
        return zzfq.zzi(objArr, 1);
    }

    @Override // com.google.android.gms.internal.cast.zzfu, com.google.android.gms.internal.cast.zzfm
    /* renamed from: zze */
    public final zzgg iterator() {
        return new zzfv(this.zza);
    }

    @Override // com.google.android.gms.internal.cast.zzfm
    public final boolean zzf() {
        throw null;
    }
}
