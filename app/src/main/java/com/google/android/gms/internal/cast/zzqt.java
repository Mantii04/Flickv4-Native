package com.google.android.gms.internal.cast;

/* loaded from: classes2.dex */
public final class zzqt extends zztp implements zzuy {
    private static final zzqt zzb;
    private int zzd;
    private int zze;
    private zztx zzf = zztp.zzA();
    private zztx zzg = zztp.zzA();
    private int zzh;

    static {
        zzqt zzqtVar = new zzqt();
        zzb = zzqtVar;
        zztp.zzH(zzqt.class, zzqtVar);
    }

    private zzqt() {
    }

    @Override // com.google.android.gms.internal.cast.zztp
    public final Object zzb(int i2, Object obj, Object obj2) {
        int i7 = i2 - 1;
        if (i7 == 0) {
            return (byte) 1;
        }
        if (i7 == 2) {
            return zztp.zzE(zzb, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0002\u0000\u0001᠌\u0000\u0002\u001b\u0003\u001b\u0004င\u0001", new Object[]{"zzd", "zze", zzlw.zza(), "zzf", zzpv.class, "zzg", zzpv.class, "zzh"});
        }
        if (i7 == 3) {
            return new zzqt();
        }
        zzms zzmsVar = null;
        if (i7 == 4) {
            return new zzqs(zzmsVar);
        }
        if (i7 != 5) {
            return null;
        }
        return zzb;
    }
}
