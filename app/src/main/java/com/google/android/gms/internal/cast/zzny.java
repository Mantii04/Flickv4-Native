package com.google.android.gms.internal.cast;

/* loaded from: classes2.dex */
public final class zzny extends zztp implements zzuy {
    private static final zzny zzb;
    private int zzd;
    private int zze;
    private int zzf;

    static {
        zzny zznyVar = new zzny();
        zzb = zznyVar;
        zztp.zzH(zzny.class, zznyVar);
    }

    private zzny() {
    }

    public static zznx zza() {
        return (zznx) zzb.zzv();
    }

    public static /* synthetic */ void zzd(zzny zznyVar, int i2) {
        zznyVar.zzd |= 2;
        zznyVar.zzf = i2;
    }

    public static /* synthetic */ void zze(zzny zznyVar, int i2) {
        zznyVar.zze = i2 - 1;
        zznyVar.zzd |= 1;
    }

    @Override // com.google.android.gms.internal.cast.zztp
    public final Object zzb(int i2, Object obj, Object obj2) {
        int i7 = i2 - 1;
        if (i7 == 0) {
            return (byte) 1;
        }
        if (i7 == 2) {
            return zztp.zzE(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001᠌\u0000\u0002င\u0001", new Object[]{"zzd", "zze", zzlt.zza(), "zzf"});
        }
        if (i7 == 3) {
            return new zzny();
        }
        zzms zzmsVar = null;
        if (i7 == 4) {
            return new zznx(zzmsVar);
        }
        if (i7 != 5) {
            return null;
        }
        return zzb;
    }
}
