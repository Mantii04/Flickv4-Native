package com.google.android.gms.internal.cast;

/* loaded from: classes2.dex */
public final class zzoo extends zztp implements zzuy {
    private static final zzoo zzb;
    private int zzd;
    private int zze;
    private int zzf;
    private int zzg;
    private zztx zzh = zztp.zzA();

    static {
        zzoo zzooVar = new zzoo();
        zzb = zzooVar;
        zztp.zzH(zzoo.class, zzooVar);
    }

    private zzoo() {
    }

    @Override // com.google.android.gms.internal.cast.zztp
    public final Object zzb(int i2, Object obj, Object obj2) {
        int i7 = i2 - 1;
        if (i7 == 0) {
            return (byte) 1;
        }
        if (i7 == 2) {
            return zztp.zzE(zzb, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001င\u0000\u0002င\u0001\u0003င\u0002\u0004\u001b", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh", zzon.class});
        }
        if (i7 == 3) {
            return new zzoo();
        }
        zzms zzmsVar = null;
        if (i7 == 4) {
            return new zzol(zzmsVar);
        }
        if (i7 != 5) {
            return null;
        }
        return zzb;
    }
}
