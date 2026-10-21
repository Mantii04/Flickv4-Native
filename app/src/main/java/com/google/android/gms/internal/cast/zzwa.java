package com.google.android.gms.internal.cast;

import java.util.Arrays;

/* loaded from: classes2.dex */
public final class zzwa {
    private static final zzwa zza = new zzwa(0, new int[0], new Object[0], false);
    private int zzb;
    private int[] zzc;
    private Object[] zzd;
    private int zze;
    private boolean zzf;

    private zzwa(int i2, int[] iArr, Object[] objArr, boolean z6) {
        this.zze = -1;
        this.zzb = 0;
        this.zzc = iArr;
        this.zzd = objArr;
        this.zzf = z6;
    }

    public static zzwa zzc() {
        return zza;
    }

    public static zzwa zze(zzwa zzwaVar, zzwa zzwaVar2) {
        int i2 = zzwaVar.zzb;
        int i7 = zzwaVar2.zzb;
        int[] copyOf = Arrays.copyOf(zzwaVar.zzc, 0);
        System.arraycopy(zzwaVar2.zzc, 0, copyOf, 0, 0);
        Object[] copyOf2 = Arrays.copyOf(zzwaVar.zzd, 0);
        System.arraycopy(zzwaVar2.zzd, 0, copyOf2, 0, 0);
        return new zzwa(0, copyOf, copyOf2, true);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof zzwa)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return 506991;
    }

    public final int zza() {
        int i2 = this.zze;
        if (i2 != -1) {
            return i2;
        }
        this.zze = 0;
        return 0;
    }

    public final int zzb() {
        int i2 = this.zze;
        if (i2 != -1) {
            return i2;
        }
        this.zze = 0;
        return 0;
    }

    public final zzwa zzd(zzwa zzwaVar) {
        if (zzwaVar.equals(zza)) {
            return this;
        }
        if (!this.zzf) {
            throw new UnsupportedOperationException();
        }
        int[] iArr = this.zzc;
        int length = iArr.length;
        System.arraycopy(zzwaVar.zzc, 0, iArr, 0, 0);
        System.arraycopy(zzwaVar.zzd, 0, this.zzd, 0, 0);
        this.zzb = 0;
        return this;
    }

    public final void zzf() {
        if (this.zzf) {
            this.zzf = false;
        }
    }

    public final void zzg(StringBuilder sb, int i2) {
    }

    private zzwa() {
        this(0, new int[8], new Object[8], true);
    }
}
