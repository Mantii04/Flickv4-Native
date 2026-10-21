package com.google.android.gms.internal.cast;

/* loaded from: classes2.dex */
public final class zzmv extends zztp implements zzuy {
    private static final zztv zzb = new zzmt();
    private static final zzmv zzd;
    private int zze;
    private String zzf = "";
    private String zzg = "";
    private zztu zzh = zztp.zzy();

    static {
        zzmv zzmvVar = new zzmv();
        zzd = zzmvVar;
        zztp.zzH(zzmv.class, zzmvVar);
    }

    private zzmv() {
    }

    @Override // com.google.android.gms.internal.cast.zztp
    public final Object zzb(int i2, Object obj, Object obj2) {
        int i7 = i2 - 1;
        if (i7 == 0) {
            return (byte) 1;
        }
        if (i7 == 2) {
            return zztp.zzE(zzd, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ࠞ", new Object[]{"zze", "zzf", "zzg", "zzh", zzml.zzb()});
        }
        if (i7 == 3) {
            return new zzmv();
        }
        zzms zzmsVar = null;
        if (i7 == 4) {
            return new zzmu(zzmsVar);
        }
        if (i7 != 5) {
            return null;
        }
        return zzd;
    }
}
