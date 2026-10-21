package com.google.android.gms.internal.cast;

/* loaded from: classes2.dex */
final class zzvh implements zzuu {
    private final zzux zza;
    private final String zzb;
    private final Object[] zzc;
    private final int zzd;

    public zzvh(zzux zzuxVar, String str, Object[] objArr) {
        this.zza = zzuxVar;
        this.zzb = str;
        this.zzc = objArr;
        char charAt = str.charAt(0);
        if (charAt < 55296) {
            this.zzd = charAt;
            return;
        }
        int i2 = charAt & 8191;
        int i7 = 1;
        int i8 = 13;
        while (true) {
            int i9 = i7 + 1;
            char charAt2 = str.charAt(i7);
            if (charAt2 < 55296) {
                this.zzd = i2 | (charAt2 << i8);
                return;
            } else {
                i2 |= (charAt2 & 8191) << i8;
                i8 += 13;
                i7 = i9;
            }
        }
    }

    @Override // com.google.android.gms.internal.cast.zzuu
    public final zzux zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.cast.zzuu
    public final boolean zzb() {
        return (this.zzd & 2) == 2;
    }

    @Override // com.google.android.gms.internal.cast.zzuu
    public final int zzc() {
        int i2 = this.zzd;
        if ((i2 & 1) != 0) {
            return 1;
        }
        return (i2 & 4) == 4 ? 3 : 2;
    }

    public final String zzd() {
        return this.zzb;
    }

    public final Object[] zze() {
        return this.zzc;
    }
}
