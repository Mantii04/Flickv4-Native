package com.google.android.gms.internal.cast;

import A.i;
import androidx.media3.common.util.Log;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* loaded from: classes2.dex */
final class zzum extends zzsi implements RandomAccess, zztw, zzve {
    private static final zzum zza = new zzum(new long[0], 0, false);
    private long[] zzb;
    private int zzc;

    public zzum() {
        this(new long[10], 0, true);
    }

    public static zzum zze() {
        return zza;
    }

    private final String zzf(int i2) {
        return i.e(i2, this.zzc, "Index:", ", Size:");
    }

    private final void zzh(int i2) {
        if (i2 < 0 || i2 >= this.zzc) {
            throw new IndexOutOfBoundsException(zzf(i2));
        }
    }

    @Override // com.google.android.gms.internal.cast.zzsi, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i2, Object obj) {
        int i7;
        long longValue = ((Long) obj).longValue();
        zza();
        if (i2 < 0 || i2 > (i7 = this.zzc)) {
            throw new IndexOutOfBoundsException(zzf(i2));
        }
        int i8 = i2 + 1;
        long[] jArr = this.zzb;
        if (i7 < jArr.length) {
            System.arraycopy(jArr, i2, jArr, i8, i7 - i2);
        } else {
            long[] jArr2 = new long[i.D(i7, 3, 2, 1)];
            System.arraycopy(jArr, 0, jArr2, 0, i2);
            System.arraycopy(this.zzb, i2, jArr2, i8, this.zzc - i2);
            this.zzb = jArr2;
        }
        this.zzb[i2] = longValue;
        this.zzc++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.cast.zzsi, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        zza();
        byte[] bArr = zzty.zzd;
        collection.getClass();
        if (!(collection instanceof zzum)) {
            return super.addAll(collection);
        }
        zzum zzumVar = (zzum) collection;
        int i2 = zzumVar.zzc;
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
        System.arraycopy(zzumVar.zzb, 0, this.zzb, this.zzc, zzumVar.zzc);
        this.zzc = i8;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // com.google.android.gms.internal.cast.zzsi, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzum)) {
            return super.equals(obj);
        }
        zzum zzumVar = (zzum) obj;
        if (this.zzc != zzumVar.zzc) {
            return false;
        }
        long[] jArr = zzumVar.zzb;
        for (int i2 = 0; i2 < this.zzc; i2++) {
            if (this.zzb[i2] != jArr[i2]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i2) {
        zzh(i2);
        return Long.valueOf(this.zzb[i2]);
    }

    @Override // com.google.android.gms.internal.cast.zzsi, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i2 = 1;
        for (int i7 = 0; i7 < this.zzc; i7++) {
            long j7 = this.zzb[i7];
            byte[] bArr = zzty.zzd;
            i2 = (i2 * 31) + ((int) (j7 ^ (j7 >>> 32)));
        }
        return i2;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Long)) {
            return -1;
        }
        long longValue = ((Long) obj).longValue();
        int i2 = this.zzc;
        for (int i7 = 0; i7 < i2; i7++) {
            if (this.zzb[i7] == longValue) {
                return i7;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.cast.zzsi, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i2) {
        zza();
        zzh(i2);
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

    @Override // com.google.android.gms.internal.cast.zzsi, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i2, Object obj) {
        long longValue = ((Long) obj).longValue();
        zza();
        zzh(i2);
        long[] jArr = this.zzb;
        long j7 = jArr[i2];
        jArr[i2] = longValue;
        return Long.valueOf(j7);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzc;
    }

    public final long zzd(int i2) {
        zzh(i2);
        return this.zzb[i2];
    }

    @Override // com.google.android.gms.internal.cast.zztx
    public final /* bridge */ /* synthetic */ zztx zzg(int i2) {
        if (i2 >= this.zzc) {
            return new zzum(Arrays.copyOf(this.zzb, i2), this.zzc, true);
        }
        throw new IllegalArgumentException();
    }

    private zzum(long[] jArr, int i2, boolean z6) {
        super(z6);
        this.zzb = jArr;
        this.zzc = i2;
    }

    @Override // com.google.android.gms.internal.cast.zzsi, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        long longValue = ((Long) obj).longValue();
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
        jArr3[i7] = longValue;
        return true;
    }
}
