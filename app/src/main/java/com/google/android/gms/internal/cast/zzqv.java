package com.google.android.gms.internal.cast;

/* loaded from: classes2.dex */
public final class zzqv extends zztp implements zzuy {
    private static final zzqv zzb;
    private int zzd;
    private int zze;
    private int zzf;
    private zztx zzg = zztp.zzA();
    private zztx zzh = zztp.zzA();
    private int zzi;

    static {
        zzqv zzqvVar = new zzqv();
        zzb = zzqvVar;
        zztp.zzH(zzqv.class, zzqvVar);
    }

    private zzqv() {
    }

    @Override // com.google.android.gms.internal.cast.zztp
    public final Object zzb(int i2, Object obj, Object obj2) {
        int i7 = i2 - 1;
        if (i7 == 0) {
            return (byte) 1;
        }
        if (i7 == 2) {
            return zztp.zzE(zzb, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0002\u0000\u0001᠌\u0000\u0002᠌\u0001\u0003\u001b\u0004\u001b\u0005᠌\u0002", new Object[]{"zzd", "zze", zzlz.zza(), "zzf", zzmc.zza(), "zzg", zzok.class, "zzh", zzok.class, "zzi", zzin.zza()});
        }
        if (i7 == 3) {
            return new zzqv();
        }
        zzms zzmsVar = null;
        if (i7 == 4) {
            return new zzqu(zzmsVar);
        }
        if (i7 != 5) {
            return null;
        }
        return zzb;
    }
}
