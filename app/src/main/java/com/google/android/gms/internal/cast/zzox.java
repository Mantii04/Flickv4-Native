package com.google.android.gms.internal.cast;

/* loaded from: classes2.dex */
public final class zzox extends zztp implements zzuy {
    private static final zzox zzb;
    private int zzd;
    private int zze;

    static {
        zzox zzoxVar = new zzox();
        zzb = zzoxVar;
        zztp.zzH(zzox.class, zzoxVar);
    }

    private zzox() {
    }

    @Override // com.google.android.gms.internal.cast.zztp
    public final Object zzb(int i2, Object obj, Object obj2) {
        int i7 = i2 - 1;
        if (i7 == 0) {
            return (byte) 1;
        }
        if (i7 == 2) {
            return zztp.zzE(zzb, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001᠌\u0000", new Object[]{"zzd", "zze", zziz.zza()});
        }
        if (i7 == 3) {
            return new zzox();
        }
        zzms zzmsVar = null;
        if (i7 == 4) {
            return new zzow(zzmsVar);
        }
        if (i7 != 5) {
            return null;
        }
        return zzb;
    }
}
