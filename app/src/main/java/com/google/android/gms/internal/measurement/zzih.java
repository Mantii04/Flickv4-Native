package com.google.android.gms.internal.measurement;

import A.i;
import androidx.media3.common.util.Log;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* loaded from: classes2.dex */
final class zzih extends zzid<Boolean> implements zzkc<Boolean>, zzls, RandomAccess {
    private static final zzih zza = new zzih(new boolean[0], 0, false);
    private boolean[] zzb;
    private int zzc;

    public zzih() {
        this(new boolean[10], 0, true);
    }

    private final String zzb(int i2) {
        return i.e(i2, this.zzc, "Index:", ", Size:");
    }

    private final void zzc(int i2) {
        if (i2 < 0 || i2 >= this.zzc) {
            throw new IndexOutOfBoundsException(zzb(i2));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzid, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i2, Object obj) {
        int i7;
        boolean booleanValue = ((Boolean) obj).booleanValue();
        zza();
        if (i2 < 0 || i2 > (i7 = this.zzc)) {
            throw new IndexOutOfBoundsException(zzb(i2));
        }
        boolean[] zArr = this.zzb;
        if (i7 < zArr.length) {
            System.arraycopy(zArr, i2, zArr, i2 + 1, i7 - i2);
        } else {
            boolean[] zArr2 = new boolean[i.D(i7, 3, 2, 1)];
            System.arraycopy(zArr, 0, zArr2, 0, i2);
            System.arraycopy(this.zzb, i2, zArr2, i2 + 1, this.zzc - i2);
            this.zzb = zArr2;
        }
        this.zzb[i2] = booleanValue;
        this.zzc++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.zzid, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Boolean> collection) {
        zza();
        zzjw.zza(collection);
        if (!(collection instanceof zzih)) {
            return super.addAll(collection);
        }
        zzih zzihVar = (zzih) collection;
        int i2 = zzihVar.zzc;
        if (i2 == 0) {
            return false;
        }
        int i7 = this.zzc;
        if (Log.LOG_LEVEL_OFF - i7 < i2) {
            throw new OutOfMemoryError();
        }
        int i8 = i7 + i2;
        boolean[] zArr = this.zzb;
        if (i8 > zArr.length) {
            this.zzb = Arrays.copyOf(zArr, i8);
        }
        System.arraycopy(zzihVar.zzb, 0, this.zzb, this.zzc, zzihVar.zzc);
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
        if (!(obj instanceof zzih)) {
            return super.equals(obj);
        }
        zzih zzihVar = (zzih) obj;
        if (this.zzc != zzihVar.zzc) {
            return false;
        }
        boolean[] zArr = zzihVar.zzb;
        for (int i2 = 0; i2 < this.zzc; i2++) {
            if (this.zzb[i2] != zArr[i2]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i2) {
        zzc(i2);
        return Boolean.valueOf(this.zzb[i2]);
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
        if (!(obj instanceof Boolean)) {
            return -1;
        }
        boolean booleanValue = ((Boolean) obj).booleanValue();
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            if (this.zzb[i2] == booleanValue) {
                return i2;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.measurement.zzid, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i2) {
        zza();
        zzc(i2);
        boolean[] zArr = this.zzb;
        boolean z6 = zArr[i2];
        if (i2 < this.zzc - 1) {
            System.arraycopy(zArr, i2 + 1, zArr, i2, (r2 - i2) - 1);
        }
        this.zzc--;
        ((AbstractList) this).modCount++;
        return Boolean.valueOf(z6);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i2, int i7) {
        zza();
        if (i7 < i2) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        boolean[] zArr = this.zzb;
        System.arraycopy(zArr, i7, zArr, i2, this.zzc - i7);
        this.zzc -= i7 - i2;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.zzid, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i2, Object obj) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        zza();
        zzc(i2);
        boolean[] zArr = this.zzb;
        boolean z6 = zArr[i2];
        zArr[i2] = booleanValue;
        return Boolean.valueOf(z6);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.measurement.zzkc
    public final /* synthetic */ zzkc<Boolean> zza(int i2) {
        if (i2 >= this.zzc) {
            return new zzih(Arrays.copyOf(this.zzb, i2), this.zzc, true);
        }
        throw new IllegalArgumentException();
    }

    private zzih(boolean[] zArr, int i2, boolean z6) {
        super(z6);
        this.zzb = zArr;
        this.zzc = i2;
    }

    public final void zza(boolean z6) {
        zza();
        int i2 = this.zzc;
        boolean[] zArr = this.zzb;
        if (i2 == zArr.length) {
            boolean[] zArr2 = new boolean[i.D(i2, 3, 2, 1)];
            System.arraycopy(zArr, 0, zArr2, 0, i2);
            this.zzb = zArr2;
        }
        boolean[] zArr3 = this.zzb;
        int i7 = this.zzc;
        this.zzc = i7 + 1;
        zArr3[i7] = z6;
    }

    @Override // com.google.android.gms.internal.measurement.zzid, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        zza(((Boolean) obj).booleanValue());
        return true;
    }
}
