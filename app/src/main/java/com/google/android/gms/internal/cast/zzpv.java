package com.google.android.gms.internal.cast;

/* loaded from: classes2.dex */
public final class zzpv extends zztp implements zzuy {
    private static final zzpv zzb;
    private int zzd;
    private int zze;
    private String zzf = "";

    static {
        zzpv zzpvVar = new zzpv();
        zzb = zzpvVar;
        zztp.zzH(zzpv.class, zzpvVar);
    }

    private zzpv() {
    }

    @Override // com.google.android.gms.internal.cast.zztp
    public final Object zzb(int i2, Object obj, Object obj2) {
        int i7 = i2 - 1;
        if (i7 == 0) {
            return (byte) 1;
        }
        if (i7 == 2) {
            return zztp.zzE(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001င\u0000\u0002ဈ\u0001", new Object[]{"zzd", "zze", "zzf"});
        }
        if (i7 == 3) {
            return new zzpv();
        }
        zzms zzmsVar = null;
        if (i7 == 4) {
            return new zzpu(zzmsVar);
        }
        if (i7 != 5) {
            return null;
        }
        return zzb;
    }
}
