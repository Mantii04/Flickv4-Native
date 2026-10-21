package com.google.android.gms.internal.cast;

/* loaded from: classes2.dex */
public final class zzok extends zztp implements zzuy {
    private static final zzok zzb;
    private int zzd;
    private String zze = "";
    private String zzf = "";

    static {
        zzok zzokVar = new zzok();
        zzb = zzokVar;
        zztp.zzH(zzok.class, zzokVar);
    }

    private zzok() {
    }

    public static zzoj zza() {
        return (zzoj) zzb.zzv();
    }

    public static /* synthetic */ void zzd(zzok zzokVar, String str) {
        str.getClass();
        zzokVar.zzd |= 1;
        zzokVar.zze = str;
    }

    @Override // com.google.android.gms.internal.cast.zztp
    public final Object zzb(int i2, Object obj, Object obj2) {
        int i7 = i2 - 1;
        if (i7 == 0) {
            return (byte) 1;
        }
        if (i7 == 2) {
            return zztp.zzE(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001", new Object[]{"zzd", "zze", "zzf"});
        }
        if (i7 == 3) {
            return new zzok();
        }
        zzms zzmsVar = null;
        if (i7 == 4) {
            return new zzoj(zzmsVar);
        }
        if (i7 != 5) {
            return null;
        }
        return zzb;
    }
}
