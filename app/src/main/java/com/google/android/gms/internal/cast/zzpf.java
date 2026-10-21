package com.google.android.gms.internal.cast;

/* loaded from: classes2.dex */
public final class zzpf extends zztp implements zzuy {
    private static final zzpf zzb;
    private int zzd;
    private int zze;
    private int zzf;

    static {
        zzpf zzpfVar = new zzpf();
        zzb = zzpfVar;
        zztp.zzH(zzpf.class, zzpfVar);
    }

    private zzpf() {
    }

    @Override // com.google.android.gms.internal.cast.zztp
    public final Object zzb(int i2, Object obj, Object obj2) {
        int i7 = i2 - 1;
        if (i7 == 0) {
            return (byte) 1;
        }
        if (i7 == 2) {
            return zztp.zzE(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001᠌\u0000\u0002င\u0001", new Object[]{"zzd", "zze", zzik.zza(), "zzf"});
        }
        if (i7 == 3) {
            return new zzpf();
        }
        zzms zzmsVar = null;
        if (i7 == 4) {
            return new zzpe(zzmsVar);
        }
        if (i7 != 5) {
            return null;
        }
        return zzb;
    }
}
