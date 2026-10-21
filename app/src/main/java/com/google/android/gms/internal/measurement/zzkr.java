package com.google.android.gms.internal.measurement;

import A.i;
import androidx.media3.common.util.Log;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* loaded from: classes2.dex */
final class zzkr extends zzid<Long> implements zzjz, zzls, RandomAccess {
    private static final zzkr zza = new zzkr(new long[0], 0, false);
    private long[] zzb;
    private int zzc;

    public zzkr() {
        this(new long[10], 0, true);
    }

    public static zzkr zzd() {
        return zza;
    }

    private final void zze(int i2) {
        if (i2 < 0 || i2 >= this.zzc) {
            throw new IndexOutOfBoundsException(zzd(i2));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzid, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i2, Object obj) {
        int i7;
        long longValue = ((Long) obj).longValue();
        zza();
        if (i2 < 0 || i2 > (i7 = this.zzc)) {
            throw new IndexOutOfBoundsException(zzd(i2));
        }
        long[] jArr = this.zzb;
        if (i7 < jArr.length) {
            System.arraycopy(jArr, i2, jArr, i2 + 1, i7 - i2);
        } else {
            long[] jArr2 = new long[i.D(i7, 3, 2, 1)];
            System.arraycopy(jArr, 0, jArr2, 0, i2);
            System.arraycopy(this.zzb, i2, jArr2, i2 + 1, this.zzc - i2);
            this.zzb = jArr2;
        }
        this.zzb[i2] = longValue;
        this.zzc++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.zzid, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Long> collection) {
        zza();
        zzjw.zza(collection);
        if (!(collection instanceof zzkr)) {
            return super.addAll(collection);
        }
        zzkr zzkrVar = (zzkr) collection;
        int i2 = zzkrVar.zzc;
        if (i2 == 0) {
            return false;
        }
        int i7 = this.zzc;
        if (Log.LOG_LEVEL_OFF - i7 < i2) {
            throw new OutOfMemoryError();
        }
        int i8 = i7 + i2;
        long[] jArr = this.zzb;
        if (i8 > jArr.length) {
            this.zzb = Arrays.copyOf(jArr, i8);
        }
        System.arraycopy(zzkrVar.zzb, 0, this.zzb, this.zzc, zzkrVar.zzc);
        this.zzc = i8;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // com.google.android.gms.internal.measurement.zzid, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzkr)) {
            return super.equals(obj);
        }
        zzkr zzkrVar = (zzkr) obj;
        if (this.zzc != zzkrVar.zzc) {
            return false;
        }
        long[] jArr = zzkrVar.zzb;
        for (int i2 = 0; i2 < this.zzc; i2++) {
            if (this.zzb[i2] != jArr[i2]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i2) {
        return Long.valueOf(zzb(i2));
    }

    @Override // com.google.android.gms.internal.measurement.zzid, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i2 = 1;
        for (int i7 = 0; i7 < this.zzc; i7++) {
            i2 = (i2 * 31) + zzjw.zza(this.zzb[i7]);
        }
        return i2;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Long)) {
            return -1;
        }
        long longValue = ((Long) obj).longValue();
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            if (this.zzb[i2] == longValue) {
                return i2;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.measurement.zzid, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i2) {
        zza();
        zze(i2);
        long[] jArr = this.zzb;
        long j7 = jArr[i2];
        if (i2 < this.zzc - 1) {
            System.arraycopy(jArr, i2 + 1, jArr, i2, (r3 - i2) - 1);
        }
        this.zzc--;
        ((AbstractList) this).modCount++;
        return Long.valueOf(j7);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i2, int i7) {
        zza();
        if (i7 < i2) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        long[] jArr = this.zzb;
        System.arraycopy(jArr, i7, jArr, i2, this.zzc - i7);
        this.zzc -= i7 - i2;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.zzid, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i2, Object obj) {
        long longValue = ((Long) obj).longValue();
        zza();
        zze(i2);
        long[] jArr = this.zzb;
        long j7 = jArr[i2];
        jArr[i2] = longValue;
        return Long.valueOf(j7);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.measurement.zzjz
    public final long zzb(int i2) {
        zze(i2);
        return this.zzb[i2];
    }

    @Override // com.google.android.gms.internal.measurement.zzkc
    /* renamed from: zzc, reason: merged with bridge method [inline-methods] */
    public final zzjz zza(int i2) {
        if (i2 >= this.zzc) {
            return new zzkr(Arrays.copyOf(this.zzb, i2), this.zzc, true);
        }
        throw new IllegalArgumentException();
    }

    private zzkr(long[] jArr, int i2, boolean z6) {
        super(z6);
        this.zzb = jArr;
        this.zzc = i2;
    }

    private final String zzd(int i2) {
        return i.e(i2, this.zzc, "Index:", ", Size:");
    }

    public final void zza(long j7) {
        zza();
        int i2 = this.zzc;
        long[] jArr = this.zzb;
        if (i2 == jArr.length) {
            long[] jArr2 = new long[i.D(i2, 3, 2, 1)];
            System.arraycopy(jArr, 0, jArr2, 0, i2);
            this.zzb = jArr2;
        }
        long[] jArr3 = this.zzb;
        int i7 = this.zzc;
        this.zzc = i7 + 1;
        jArr3[i7] = j7;
    }

    @Override // com.google.android.gms.internal.measurement.zzid, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        zza(((Long) obj).longValue());
        return true;
    }
}
