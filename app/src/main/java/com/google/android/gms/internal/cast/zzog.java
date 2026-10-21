package com.google.android.gms.internal.cast;

/* loaded from: classes2.dex */
public final class zzog extends zztp implements zzuy {
    private static final zzog zzb;
    private int zzd;
    private int zze = 0;
    private Object zzf;
    private long zzg;

    static {
        zzog zzogVar = new zzog();
        zzb = zzogVar;
        zztp.zzH(zzog.class, zzogVar);
    }

    private zzog() {
    }

    @Override // com.google.android.gms.internal.cast.zztp
    public final Object zzb(int i2, Object obj, Object obj2) {
        int i7 = i2 - 1;
        if (i7 == 0) {
            return (byte) 1;
        }
        if (i7 == 2) {
            return zztp.zzE(zzb, "\u0001\u0004\u0001\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001စ\u0000\u0002:\u0000\u00035\u0000\u00048\u0000", new Object[]{"zzf", "zze", "zzd", "zzg"});
        }
        if (i7 == 3) {
            return new zzog();
        }
        zzms zzmsVar = null;
        if (i7 == 4) {
            return new zzof(zzmsVar);
        }
        if (i7 != 5) {
            return null;
        }
        return zzb;
    }
}
