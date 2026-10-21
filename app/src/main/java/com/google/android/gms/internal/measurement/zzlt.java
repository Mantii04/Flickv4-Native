package com.google.android.gms.internal.measurement;

import A.i;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.RandomAccess;

/* loaded from: classes2.dex */
final class zzlt<E> extends zzid<E> implements RandomAccess {
    private static final zzlt<Object> zza = new zzlt<>(new Object[0], 0, false);
    private E[] zzb;
    private int zzc;

    public zzlt() {
        this(new Object[10], 0, true);
    }

    private final String zzb(int i2) {
        return i.e(i2, this.zzc, "Index:", ", Size:");
    }

    private final void zzc(int i2) {
        if (i2 < 0 || i2 >= this.zzc) {
            throw new IndexOutOfBoundsException(zzb(i2));
        }
    }

    public static <E> zzlt<E> zzd() {
        return (zzlt<E>) zza;
    }

    @Override // com.google.android.gms.internal.measurement.zzid, java.util.AbstractList, java.util.List
    public final void add(int i2, E e3) {
        int i7;
        zza();
        if (i2 < 0 || i2 > (i7 = this.zzc)) {
            throw new IndexOutOfBoundsException(zzb(i2));
        }
        E[] eArr = this.zzb;
        if (i7 < eArr.length) {
            System.arraycopy(eArr, i2, eArr, i2 + 1, i7 - i2);
        } else {
            E[] eArr2 = (E[]) new Object[i.D(i7, 3, 2, 1)];
            System.arraycopy(eArr, 0, eArr2, 0, i2);
            System.arraycopy(this.zzb, i2, eArr2, i2 + 1, this.zzc - i2);
            this.zzb = eArr2;
        }
        this.zzb[i2] = e3;
        this.zzc++;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E get(int i2) {
        zzc(i2);
        return this.zzb[i2];
    }

    @Override // com.google.android.gms.internal.measurement.zzid, java.util.AbstractList, java.util.List
    public final E remove(int i2) {
        zza();
        zzc(i2);
        E[] eArr = this.zzb;
        E e3 = eArr[i2];
        if (i2 < this.zzc - 1) {
            System.arraycopy(eArr, i2 + 1, eArr, i2, (r2 - i2) - 1);
        }
        this.zzc--;
        ((AbstractList) this).modCount++;
        return e3;
    }

    @Override // com.google.android.gms.internal.measurement.zzid, java.util.AbstractList, java.util.List
    public final E set(int i2, E e3) {
        zza();
        zzc(i2);
        E[] eArr = this.zzb;
        E e7 = eArr[i2];
        eArr[i2] = e3;
        ((AbstractList) this).modCount++;
        return e7;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.measurement.zzkc
    public final /* synthetic */ zzkc zza(int i2) {
        if (i2 >= this.zzc) {
            return new zzlt(Arrays.copyOf(this.zzb, i2), this.zzc, true);
        }
        throw new IllegalArgumentException();
    }

    private zzlt(E[] eArr, int i2, boolean z6) {
        super(z6);
        this.zzb = eArr;
        this.zzc = i2;
    }

    @Override // com.google.android.gms.internal.measurement.zzid, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(E e3) {
        zza();
        int i2 = this.zzc;
        E[] eArr = this.zzb;
        if (i2 == eArr.length) {
            this.zzb = (E[]) Arrays.copyOf(eArr, ((i2 * 3) / 2) + 1);
        }
        E[] eArr2 = this.zzb;
        int i7 = this.zzc;
        this.zzc = i7 + 1;
        eArr2[i7] = e3;
        ((AbstractList) this).modCount++;
        return true;
    }
}
