package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class zzmw {
    private static final zzmw zza = new zzmw(0, new int[0], new Object[0], false);
    private int zzb;
    private int[] zzc;
    private Object[] zzd;
    private int zze;
    private boolean zzf;

    private zzmw() {
        this(0, new int[8], new Object[8], true);
    }

    public static zzmw zzc() {
        return zza;
    }

    public static zzmw zzd() {
        return new zzmw();
    }

    private final void zzf() {
        if (!this.zzf) {
            throw new UnsupportedOperationException();
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof zzmw)) {
            return false;
        }
        zzmw zzmwVar = (zzmw) obj;
        int i2 = this.zzb;
        if (i2 == zzmwVar.zzb) {
            int[] iArr = this.zzc;
            int[] iArr2 = zzmwVar.zzc;
            int i7 = 0;
            while (true) {
                if (i7 >= i2) {
                    Object[] objArr = this.zzd;
                    Object[] objArr2 = zzmwVar.zzd;
                    int i8 = this.zzb;
                    for (int i9 = 0; i9 < i8; i9++) {
                        if (objArr[i9].equals(objArr2[i9])) {
                        }
                    }
                    return true;
                }
                if (iArr[i7] != iArr2[i7]) {
                    break;
                }
                i7++;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i2 = this.zzb;
        int i7 = (i2 + 527) * 31;
        int[] iArr = this.zzc;
        int i8 = 17;
        int i9 = 17;
        for (int i10 = 0; i10 < i2; i10++) {
            i9 = (i9 * 31) + iArr[i10];
        }
        int i11 = (i7 + i9) * 31;
        Object[] objArr = this.zzd;
        int i12 = this.zzb;
        for (int i13 = 0; i13 < i12; i13++) {
            i8 = (i8 * 31) + objArr[i13].hashCode();
        }
        return i11 + i8;
    }

    public final int zza() {
        int zze;
        int i2 = this.zze;
        if (i2 != -1) {
            return i2;
        }
        int i7 = 0;
        for (int i8 = 0; i8 < this.zzb; i8++) {
            int i9 = this.zzc[i8];
            int i10 = i9 >>> 3;
            int i11 = i9 & 7;
            if (i11 == 0) {
                zze = zzja.zze(i10, ((Long) this.zzd[i8]).longValue());
            } else if (i11 == 1) {
                zze = zzja.zza(i10, ((Long) this.zzd[i8]).longValue());
            } else if (i11 == 2) {
                zze = zzja.zza(i10, (zzij) this.zzd[i8]);
            } else if (i11 == 3) {
                i7 = ((zzmw) this.zzd[i8]).zza() + (zzja.zzf(i10) << 1) + i7;
            } else {
                if (i11 != 5) {
                    throw new IllegalStateException(zzkb.zza());
                }
                zze = zzja.zzb(i10, ((Integer) this.zzd[i8]).intValue());
            }
            i7 = zze + i7;
        }
        this.zze = i7;
        return i7;
    }

    public final int zzb() {
        int i2 = this.zze;
        if (i2 != -1) {
            return i2;
        }
        int i7 = 0;
        for (int i8 = 0; i8 < this.zzb; i8++) {
            i7 += zzja.zzb(this.zzc[i8] >>> 3, (zzij) this.zzd[i8]);
        }
        this.zze = i7;
        return i7;
    }

    public final void zze() {
        if (this.zzf) {
            this.zzf = false;
        }
    }

    private zzmw(int i2, int[] iArr, Object[] objArr, boolean z6) {
        this.zze = -1;
        this.zzb = i2;
        this.zzc = iArr;
        this.zzd = objArr;
        this.zzf = z6;
    }

    public final void zzb(zznt zzntVar) throws IOException {
        if (this.zzb == 0) {
            return;
        }
        if (zzntVar.zza() == zzns.zza) {
            for (int i2 = 0; i2 < this.zzb; i2++) {
                zza(this.zzc[i2], this.zzd[i2], zzntVar);
            }
            return;
        }
        for (int i7 = this.zzb - 1; i7 >= 0; i7--) {
            zza(this.zzc[i7], this.zzd[i7], zzntVar);
        }
    }

    public final zzmw zza(zzmw zzmwVar) {
        if (zzmwVar.equals(zza)) {
            return this;
        }
        zzf();
        int i2 = this.zzb + zzmwVar.zzb;
        zza(i2);
        System.arraycopy(zzmwVar.zzc, 0, this.zzc, this.zzb, zzmwVar.zzb);
        System.arraycopy(zzmwVar.zzd, 0, this.zzd, this.zzb, zzmwVar.zzb);
        this.zzb = i2;
        return this;
    }

    public static zzmw zza(zzmw zzmwVar, zzmw zzmwVar2) {
        int i2 = zzmwVar.zzb + zzmwVar2.zzb;
        int[] copyOf = Arrays.copyOf(zzmwVar.zzc, i2);
        System.arraycopy(zzmwVar2.zzc, 0, copyOf, zzmwVar.zzb, zzmwVar2.zzb);
        Object[] copyOf2 = Arrays.copyOf(zzmwVar.zzd, i2);
        System.arraycopy(zzmwVar2.zzd, 0, copyOf2, zzmwVar.zzb, zzmwVar2.zzb);
        return new zzmw(i2, copyOf, copyOf2, true);
    }

    private final void zza(int i2) {
        int[] iArr = this.zzc;
        if (i2 > iArr.length) {
            int i7 = this.zzb;
            int i8 = (i7 / 2) + i7;
            if (i8 >= i2) {
                i2 = i8;
            }
            if (i2 < 8) {
                i2 = 8;
            }
            this.zzc = Arrays.copyOf(iArr, i2);
            this.zzd = Arrays.copyOf(this.zzd, i2);
        }
    }

    public final void zza(StringBuilder sb, int i2) {
        for (int i7 = 0; i7 < this.zzb; i7++) {
            zzlh.zza(sb, i2, String.valueOf(this.zzc[i7] >>> 3), this.zzd[i7]);
        }
    }

    public final void zza(int i2, Object obj) {
        zzf();
        zza(this.zzb + 1);
        int[] iArr = this.zzc;
        int i7 = this.zzb;
        iArr[i7] = i2;
        this.zzd[i7] = obj;
        this.zzb = i7 + 1;
    }

    public final void zza(zznt zzntVar) throws IOException {
        if (zzntVar.zza() == zzns.zzb) {
            for (int i2 = this.zzb - 1; i2 >= 0; i2--) {
                zzntVar.zza(this.zzc[i2] >>> 3, this.zzd[i2]);
            }
            return;
        }
        for (int i7 = 0; i7 < this.zzb; i7++) {
            zzntVar.zza(this.zzc[i7] >>> 3, this.zzd[i7]);
        }
    }

    private static void zza(int i2, Object obj, zznt zzntVar) throws IOException {
        int i7 = i2 >>> 3;
        int i8 = i2 & 7;
        if (i8 == 0) {
            zzntVar.zzb(i7, ((Long) obj).longValue());
            return;
        }
        if (i8 == 1) {
            zzntVar.zza(i7, ((Long) obj).longValue());
            return;
        }
        if (i8 == 2) {
            zzntVar.zza(i7, (zzij) obj);
            return;
        }
        if (i8 != 3) {
            if (i8 == 5) {
                zzntVar.zzb(i7, ((Integer) obj).intValue());
                return;
            }
            throw new RuntimeException(zzkb.zza());
        }
        if (zzntVar.zza() == zzns.zza) {
            zzntVar.zzb(i7);
            ((zzmw) obj).zzb(zzntVar);
            zzntVar.zza(i7);
        } else {
            zzntVar.zza(i7);
            ((zzmw) obj).zzb(zzntVar);
            zzntVar.zzb(i7);
        }
    }
}
