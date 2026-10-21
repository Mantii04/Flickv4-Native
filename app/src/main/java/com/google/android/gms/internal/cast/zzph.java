package com.google.android.gms.internal.cast;

/* loaded from: classes2.dex */
public final class zzph extends zztp implements zzuy {
    private static final zzph zzb;
    private int zzd;
    private int zze;
    private int zzf;
    private int zzg;
    private byte zzh = 2;

    static {
        zzph zzphVar = new zzph();
        zzb = zzphVar;
        zztp.zzH(zzph.class, zzphVar);
    }

    private zzph() {
    }

    @Override // com.google.android.gms.internal.cast.zztp
    public final Object zzb(int i2, Object obj, Object obj2) {
        int i7 = i2 - 1;
        if (i7 == 0) {
            return Byte.valueOf(this.zzh);
        }
        if (i7 == 2) {
            return zztp.zzE(zzb, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0001\u0001ᴌ\u0000\u0002င\u0001\u0003᠌\u0002", new Object[]{"zzd", "zze", zzjl.zza(), "zzf", "zzg", zzmr.zza()});
        }
        if (i7 == 3) {
            return new zzph();
        }
        zzms zzmsVar = null;
        if (i7 == 4) {
            return new zzpg(zzmsVar);
        }
        if (i7 == 5) {
            return zzb;
        }
        this.zzh = obj == null ? (byte) 0 : (byte) 1;
        return null;
    }
}
