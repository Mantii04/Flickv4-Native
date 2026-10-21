package com.google.android.gms.internal.cast;

/* loaded from: classes2.dex */
public final class zzna extends zztp implements zzuy {
    private static final zzna zzb;
    private int zzd;
    private int zze;
    private double zzf;
    private double zzg;
    private double zzh;
    private double zzi;

    static {
        zzna zznaVar = new zzna();
        zzb = zznaVar;
        zztp.zzH(zzna.class, zznaVar);
    }

    private zzna() {
    }

    @Override // com.google.android.gms.internal.cast.zztp
    public final Object zzb(int i2, Object obj, Object obj2) {
        int i7 = i2 - 1;
        if (i7 == 0) {
            return (byte) 1;
        }
        if (i7 == 2) {
            return zztp.zzE(zzb, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001ဋ\u0000\u0002က\u0001\u0003က\u0002\u0004က\u0003\u0005က\u0004", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh", "zzi"});
        }
        if (i7 == 3) {
            return new zzna();
        }
        zzms zzmsVar = null;
        if (i7 == 4) {
            return new zzmz(zzmsVar);
        }
        if (i7 != 5) {
            return null;
        }
        return zzb;
    }
}
