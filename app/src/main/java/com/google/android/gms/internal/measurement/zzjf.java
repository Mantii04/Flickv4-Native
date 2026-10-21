package com.google.android.gms.internal.measurement;

import A.i;
import androidx.media3.common.util.Log;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* loaded from: classes2.dex */
final class zzjf extends zzid<Double> implements zzkc<Double>, zzls, RandomAccess {
    private static final zzjf zza = new zzjf(new double[0], 0, false);
    private double[] zzb;
    private int zzc;

    public zzjf() {
        this(new double[10], 0, true);
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
        double doubleValue = ((Double) obj).doubleValue();
        zza();
        if (i2 < 0 || i2 > (i7 = this.zzc)) {
            throw new IndexOutOfBoundsException(zzb(i2));
        }
        double[] dArr = this.zzb;
        if (i7 < dArr.length) {
            System.arraycopy(dArr, i2, dArr, i2 + 1, i7 - i2);
        } else {
            double[] dArr2 = new double[i.D(i7, 3, 2, 1)];
            System.arraycopy(dArr, 0, dArr2, 0, i2);
            System.arraycopy(this.zzb, i2, dArr2, i2 + 1, this.zzc - i2);
            this.zzb = dArr2;
        }
        this.zzb[i2] = doubleValue;
        this.zzc++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.zzid, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Double> collection) {
        zza();
        zzjw.zza(collection);
        if (!(collection instanceof zzjf)) {
            return super.addAll(collection);
        }
        zzjf zzjfVar = (zzjf) collection;
        int i2 = zzjfVar.zzc;
        if (i2 == 0) {
            return false;
        }
        int i7 = this.zzc;
        if (Log.LOG_LEVEL_OFF - i7 < i2) {
            throw new OutOfMemoryError();
        }
        int i8 = i7 + i2;
        double[] dArr = this.zzb;
        if (i8 > dArr.length) {
            this.zzb = Arrays.copyOf(dArr, i8);
        }
        System.arraycopy(zzjfVar.zzb, 0, this.zzb, this.zzc, zzjfVar.zzc);
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
        if (!(obj instanceof zzjf)) {
            return super.equals(obj);
        }
        zzjf zzjfVar = (zzjf) obj;
        if (this.zzc != zzjfVar.zzc) {
            return false;
        }
        double[] dArr = zzjfVar.zzb;
        for (int i2 = 0; i2 < this.zzc; i2++) {
            if (Double.doubleToLongBits(this.zzb[i2]) != Double.doubleToLongBits(dArr[i2])) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i2) {
        zzc(i2);
        return Double.valueOf(this.zzb[i2]);
    }

    @Override // com.google.android.gms.internal.measurement.zzid, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i2 = 1;
        for (int i7 = 0; i7 < this.zzc; i7++) {
            i2 = (i2 * 31) + zzjw.zza(Double.doubleToLongBits(this.zzb[i7]));
        }
        return i2;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Double)) {
            return -1;
        }
        double doubleValue = ((Double) obj).doubleValue();
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            if (this.zzb[i2] == doubleValue) {
                return i2;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.measurement.zzid, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i2) {
        zza();
        zzc(i2);
        double[] dArr = this.zzb;
        double d7 = dArr[i2];
        if (i2 < this.zzc - 1) {
            System.arraycopy(dArr, i2 + 1, dArr, i2, (r3 - i2) - 1);
        }
        this.zzc--;
        ((AbstractList) this).modCount++;
        return Double.valueOf(d7);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i2, int i7) {
        zza();
        if (i7 < i2) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        double[] dArr = this.zzb;
        System.arraycopy(dArr, i7, dArr, i2, this.zzc - i7);
        this.zzc -= i7 - i2;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.zzid, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i2, Object obj) {
        double doubleValue = ((Double) obj).doubleValue();
        zza();
        zzc(i2);
        double[] dArr = this.zzb;
        double d7 = dArr[i2];
        dArr[i2] = doubleValue;
        return Double.valueOf(d7);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.measurement.zzkc
    public final /* synthetic */ zzkc<Double> zza(int i2) {
        if (i2 >= this.zzc) {
            return new zzjf(Arrays.copyOf(this.zzb, i2), this.zzc, true);
        }
        throw new IllegalArgumentException();
    }

    private zzjf(double[] dArr, int i2, boolean z6) {
        super(z6);
        this.zzb = dArr;
        this.zzc = i2;
    }

    public final void zza(double d7) {
        zza();
        int i2 = this.zzc;
        double[] dArr = this.zzb;
        if (i2 == dArr.length) {
            double[] dArr2 = new double[i.D(i2, 3, 2, 1)];
            System.arraycopy(dArr, 0, dArr2, 0, i2);
            this.zzb = dArr2;
        }
        double[] dArr3 = this.zzb;
        int i7 = this.zzc;
        this.zzc = i7 + 1;
        dArr3[i7] = d7;
    }

    @Override // com.google.android.gms.internal.measurement.zzid, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        zza(((Double) obj).doubleValue());
        return true;
    }
}
