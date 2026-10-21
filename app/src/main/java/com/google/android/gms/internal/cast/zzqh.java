package com.google.android.gms.internal.cast;

/* loaded from: classes2.dex */
public final class zzqh extends zztp implements zzuy {
    private static final zzqh zzb;
    private int zzd;
    private long zze;
    private long zzf;
    private zztx zzg = zztp.zzA();

    static {
        zzqh zzqhVar = new zzqh();
        zzb = zzqhVar;
        zztp.zzH(zzqh.class, zzqhVar);
    }

    private zzqh() {
    }

    @Override // com.google.android.gms.internal.cast.zztp
    public final Object zzb(int i2, Object obj, Object obj2) {
        int i7 = i2 - 1;
        if (i7 == 0) {
            return (byte) 1;
        }
        if (i7 == 2) {
            return zztp.zzE(zzb, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001ဂ\u0000\u0002ဂ\u0001\u0003\u001b", new Object[]{"zzd", "zze", "zzf", "zzg", zzqj.class});
        }
        if (i7 == 3) {
            return new zzqh();
        }
        zzms zzmsVar = null;
        if (i7 == 4) {
            return new zzqg(zzmsVar);
        }
        if (i7 != 5) {
            return null;
        }
        return zzb;
    }
}
