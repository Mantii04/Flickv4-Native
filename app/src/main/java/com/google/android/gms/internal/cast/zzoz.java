package com.google.android.gms.internal.cast;

/* loaded from: classes2.dex */
public final class zzoz extends zztp implements zzuy {
    private static final zzoz zzb;
    private int zzd;
    private int zze;
    private int zzf;
    private int zzg;

    static {
        zzoz zzozVar = new zzoz();
        zzb = zzozVar;
        zztp.zzH(zzoz.class, zzozVar);
    }

    private zzoz() {
    }

    @Override // com.google.android.gms.internal.cast.zztp
    public final Object zzb(int i2, Object obj, Object obj2) {
        int i7 = i2 - 1;
        if (i7 == 0) {
            return (byte) 1;
        }
        if (i7 == 2) {
            return zztp.zzE(zzb, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001᠌\u0000\u0002င\u0001\u0003င\u0002", new Object[]{"zzd", "zze", zziz.zza(), "zzf", "zzg"});
        }
        if (i7 == 3) {
            return new zzoz();
        }
        zzms zzmsVar = null;
        if (i7 == 4) {
            return new zzoy(zzmsVar);
        }
        if (i7 != 5) {
            return null;
        }
        return zzb;
    }
}
