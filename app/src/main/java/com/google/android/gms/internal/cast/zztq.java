package com.google.android.gms.internal.cast;

import A.i;
import androidx.media3.common.util.Log;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* loaded from: classes2.dex */
final class zztq extends zzsi implements RandomAccess, zztu, zzve {
    private static final zztq zza = new zztq(new int[0], 0, false);
    private int[] zzb;
    private int zzc;

    public zztq() {
        this(new int[10], 0, true);
    }

    public static zztq zze() {
        return zza;
    }

    private final String zzi(int i2) {
        return i.e(i2, this.zzc, "Index:", ", Size:");
    }

    private final void zzj(int i2) {
        if (i2 < 0 || i2 >= this.zzc) {
            throw new IndexOutOfBoundsException(zzi(i2));
        }
    }

    @Override // com.google.android.gms.internal.cast.zzsi, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i2, Object obj) {
        int i7;
        int intValue = ((Integer) obj).intValue();
        zza();
        if (i2 < 0 || i2 > (i7 = this.zzc)) {
            throw new IndexOutOfBoundsException(zzi(i2));
        }
        int i8 = i2 + 1;
        int[] iArr = this.zzb;
        if (i7 < iArr.length) {
            System.arraycopy(iArr, i2, iArr, i8, i7 - i2);
        } else {
            int[] iArr2 = new int[i.D(i7, 3, 2, 1)];
            System.arraycopy(iArr, 0, iArr2, 0, i2);
            System.arraycopy(this.zzb, i2, iArr2, i8, this.zzc - i2);
            this.zzb = iArr2;
        }
        this.zzb[i2] = intValue;
        this.zzc++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.cast.zzsi, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        zza();
        byte[] bArr = zzty.zzd;
        collection.getClass();
        if (!(collection instanceof zztq)) {
            return super.addAll(collection);
        }
        zztq zztqVar = (zztq) collection;
        int i2 = zztqVar.zzc;
        if (i2 == 0) {
            return false;
        }
        int i7 = this.zzc;
        if (Log.LOG_LEVEL_OFF - i7 < i2) {
            throw new OutOfMemoryError();
        }
        int i8 = i7 + i2;
        int[] iArr = this.zzb;
        if (i8 > iArr.length) {
            this.zzb = Arrays.copyOf(iArr, i8);
        }
        System.arraycopy(zztqVar.zzb, 0, this.zzb, this.zzc, zztqVar.zzc);
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
        if (!(obj instanceof zztq)) {
            return super.equals(obj);
        }
        zztq zztqVar = (zztq) obj;
        if (this.zzc != zztqVar.zzc) {
            return false;
        }
        int[] iArr = zztqVar.zzb;
        for (int i2 = 0; i2 < this.zzc; i2++) {
            if (this.zzb[i2] != iArr[i2]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i2) {
        zzj(i2);
        return Integer.valueOf(this.zzb[i2]);
    }

    @Override // com.google.android.gms.internal.cast.zzsi, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i2 = 1;
        for (int i7 = 0; i7 < this.zzc; i7++) {
            i2 = (i2 * 31) + this.zzb[i7];
        }
        return i2;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Integer)) {
            return -1;
        }
        int intValue = ((Integer) obj).intValue();
        int i2 = this.zzc;
        for (int i7 = 0; i7 < i2; i7++) {
            if (this.zzb[i7] == intValue) {
                return i7;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.cast.zzsi, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i2) {
        zza();
        zzj(i2);
        int[] iArr = this.zzb;
        int i7 = iArr[i2];
        if (i2 < this.zzc - 1) {
            System.arraycopy(iArr, i2 + 1, iArr, i2, (r2 - i2) - 1);
        }
        this.zzc--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(i7);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i2, int i7) {
        zza();
        if (i7 < i2) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        int[] iArr = this.zzb;
        System.arraycopy(iArr, i7, iArr, i2, this.zzc - i7);
        this.zzc -= i7 - i2;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.cast.zzsi, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i2, Object obj) {
        int intValue = ((Integer) obj).intValue();
        zza();
        zzj(i2);
        int[] iArr = this.zzb;
        int i7 = iArr[i2];
        iArr[i2] = intValue;
        return Integer.valueOf(i7);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzc;
    }

    public final int zzd(int i2) {
        zzj(i2);
        return this.zzb[i2];
    }

    @Override // com.google.android.gms.internal.cast.zztx
    /* renamed from: zzf, reason: merged with bridge method [inline-methods] */
    public final zztu zzg(int i2) {
        if (i2 >= this.zzc) {
            return new zztq(Arrays.copyOf(this.zzb, i2), this.zzc, true);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.cast.zztu
    public final void zzh(int i2) {
        zza();
        int i7 = this.zzc;
        int[] iArr = this.zzb;
        if (i7 == iArr.length) {
            int[] iArr2 = new int[i.D(i7, 3, 2, 1)];
            System.arraycopy(iArr, 0, iArr2, 0, i7);
            this.zzb = iArr2;
        }
        int[] iArr3 = this.zzb;
        int i8 = this.zzc;
        this.zzc = i8 + 1;
        iArr3[i8] = i2;
    }

    private zztq(int[] iArr, int i2, boolean z6) {
        super(z6);
        this.zzb = iArr;
        this.zzc = i2;
    }

    @Override // com.google.android.gms.internal.cast.zzsi, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        zzh(((Integer) obj).intValue());
        return true;
    }
}
