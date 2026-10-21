package com.google.android.gms.internal.cast;

/* loaded from: classes2.dex */
public final class zzqp extends zztp implements zzuy {
    private static final zzqp zzb;
    private int zzd;
    private String zze = "";

    static {
        zzqp zzqpVar = new zzqp();
        zzb = zzqpVar;
        zztp.zzH(zzqp.class, zzqpVar);
    }

    private zzqp() {
    }

    @Override // com.google.android.gms.internal.cast.zztp
    public final Object zzb(int i2, Object obj, Object obj2) {
        int i7 = i2 - 1;
        if (i7 == 0) {
            return (byte) 1;
        }
        if (i7 == 2) {
            return zztp.zzE(zzb, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဈ\u0000", new Object[]{"zzd", "zze"});
        }
        if (i7 == 3) {
            return new zzqp();
        }
        zzms zzmsVar = null;
        if (i7 == 4) {
            return new zzqo(zzmsVar);
        }
        if (i7 != 5) {
            return null;
        }
        return zzb;
    }
}
