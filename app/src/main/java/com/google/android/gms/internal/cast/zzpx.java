package com.google.android.gms.internal.cast;

/* loaded from: classes2.dex */
public final class zzpx extends zztp implements zzuy {
    private static final zzpx zzb;
    private int zzd;
    private boolean zze;
    private boolean zzf;
    private int zzg;
    private int zzi;
    private int zzj;
    private String zzh = "";
    private String zzk = "";

    static {
        zzpx zzpxVar = new zzpx();
        zzb = zzpxVar;
        zztp.zzH(zzpx.class, zzpxVar);
    }

    private zzpx() {
    }

    @Override // com.google.android.gms.internal.cast.zztp
    public final Object zzb(int i2, Object obj, Object obj2) {
        int i7 = i2 - 1;
        if (i7 == 0) {
            return (byte) 1;
        }
        if (i7 == 2) {
            return zztp.zzE(zzb, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001ဇ\u0000\u0002ဇ\u0001\u0003င\u0002\u0004ဈ\u0003\u0005င\u0004\u0006င\u0005\u0007ဈ\u0006", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk"});
        }
        if (i7 == 3) {
            return new zzpx();
        }
        zzms zzmsVar = null;
        if (i7 == 4) {
            return new zzpw(zzmsVar);
        }
        if (i7 != 5) {
            return null;
        }
        return zzb;
    }
}
