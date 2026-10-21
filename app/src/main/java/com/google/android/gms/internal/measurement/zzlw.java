package com.google.android.gms.internal.measurement;

/* loaded from: classes2.dex */
final class zzlw implements zzle {
    private final zzlg zza;
    private final String zzb;
    private final Object[] zzc;
    private final int zzd;

    public zzlw(zzlg zzlgVar, String str, Object[] objArr) {
        this.zza = zzlgVar;
        this.zzb = str;
        this.zzc = objArr;
        char charAt = str.charAt(0);
        if (charAt < 55296) {
            this.zzd = charAt;
            return;
        }
        int i2 = charAt & 8191;
        int i7 = 13;
        int i8 = 1;
        while (true) {
            int i9 = i8 + 1;
            char charAt2 = str.charAt(i8);
            if (charAt2 < 55296) {
                this.zzd = i2 | (charAt2 << i7);
                return;
            } else {
                i2 |= (charAt2 & 8191) << i7;
                i7 += 13;
                i8 = i9;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzle
    public final zzlg zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.measurement.zzle
    public final zzlr zzb() {
        int i2 = this.zzd;
        return (i2 & 1) != 0 ? zzlr.PROTO2 : (i2 & 4) == 4 ? zzlr.EDITIONS : zzlr.PROTO3;
    }

    @Override // com.google.android.gms.internal.measurement.zzle
    public final boolean zzc() {
        return (this.zzd & 2) == 2;
    }

    public final String zzd() {
        return this.zzb;
    }

    public final Object[] zze() {
        return this.zzc;
    }
}
