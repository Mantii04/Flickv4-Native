package com.google.android.gms.internal.cast;

import A.i;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.RandomAccess;

/* loaded from: classes2.dex */
final class zzvg extends zzsi implements RandomAccess {
    private static final zzvg zza = new zzvg(new Object[0], 0, false);
    private Object[] zzb;
    private int zzc;

    public zzvg() {
        this(new Object[10], 0, true);
    }

    public static zzvg zzd() {
        return zza;
    }

    private final String zze(int i2) {
        return i.e(i2, this.zzc, "Index:", ", Size:");
    }

    private final void zzf(int i2) {
        if (i2 < 0 || i2 >= this.zzc) {
            throw new IndexOutOfBoundsException(zze(i2));
        }
    }

    @Override // com.google.android.gms.internal.cast.zzsi, java.util.AbstractList, java.util.List
    public final void add(int i2, Object obj) {
        int i7;
        zza();
        if (i2 < 0 || i2 > (i7 = this.zzc)) {
            throw new IndexOutOfBoundsException(zze(i2));
        }
        int i8 = i2 + 1;
        Object[] objArr = this.zzb;
        if (i7 < objArr.length) {
            System.arraycopy(objArr, i2, objArr, i8, i7 - i2);
        } else {
            Object[] objArr2 = new Object[i.D(i7, 3, 2, 1)];
            System.arraycopy(objArr, 0, objArr2, 0, i2);
            System.arraycopy(this.zzb, i2, objArr2, i8, this.zzc - i2);
            this.zzb = objArr2;
        }
        this.zzb[i2] = obj;
        this.zzc++;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i2) {
        zzf(i2);
        return this.zzb[i2];
    }

    @Override // com.google.android.gms.internal.cast.zzsi, java.util.AbstractList, java.util.List
    public final Object remove(int i2) {
        zza();
        zzf(i2);
        Object[] objArr = this.zzb;
        Object obj = objArr[i2];
        if (i2 < this.zzc - 1) {
            System.arraycopy(objArr, i2 + 1, objArr, i2, (r2 - i2) - 1);
        }
        this.zzc--;
        ((AbstractList) this).modCount++;
        return obj;
    }

    @Override // com.google.android.gms.internal.cast.zzsi, java.util.AbstractList, java.util.List
    public final Object set(int i2, Object obj) {
        zza();
        zzf(i2);
        Object[] objArr = this.zzb;
        Object obj2 = objArr[i2];
        objArr[i2] = obj;
        ((AbstractList) this).modCount++;
        return obj2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.cast.zztx
    public final /* bridge */ /* synthetic */ zztx zzg(int i2) {
        if (i2 >= this.zzc) {
            return new zzvg(Arrays.copyOf(this.zzb, i2), this.zzc, true);
        }
        throw new IllegalArgumentException();
    }

    private zzvg(Object[] objArr, int i2, boolean z6) {
        super(z6);
        this.zzb = objArr;
        this.zzc = i2;
    }

    @Override // com.google.android.gms.internal.cast.zzsi, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        zza();
        int i2 = this.zzc;
        Object[] objArr = this.zzb;
        if (i2 == objArr.length) {
            this.zzb = Arrays.copyOf(objArr, ((i2 * 3) / 2) + 1);
        }
        Object[] objArr2 = this.zzb;
        int i7 = this.zzc;
        this.zzc = i7 + 1;
        objArr2[i7] = obj;
        ((AbstractList) this).modCount++;
        return true;
    }
}
