package com.google.android.gms.internal.cast;

/* loaded from: classes2.dex */
public final class zzpz extends zztp implements zzuy {
    private static final zzpz zzb;
    private int zzd;
    private int zze;
    private int zzf;
    private int zzg;

    static {
        zzpz zzpzVar = new zzpz();
        zzb = zzpzVar;
        zztp.zzH(zzpz.class, zzpzVar);
    }

    private zzpz() {
    }

    @Override // com.google.android.gms.internal.cast.zztp
    public final Object zzb(int i2, Object obj, Object obj2) {
        int i7 = i2 - 1;
        if (i7 == 0) {
            return (byte) 1;
        }
        if (i7 == 2) {
            return zztp.zzE(zzb, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001င\u0000\u0002᠌\u0001\u0003င\u0002", new Object[]{"zzd", "zze", "zzf", zzka.zza(), "zzg"});
        }
        if (i7 == 3) {
            return new zzpz();
        }
        zzms zzmsVar = null;
        if (i7 == 4) {
            return new zzpy(zzmsVar);
        }
        if (i7 != 5) {
            return null;
        }
        return zzb;
    }
}
