package com.google.android.gms.internal.cast;

import java.util.Iterator;

/* loaded from: classes2.dex */
public final class zzmy extends zztp implements zzuy {
    private static final zztv zzb = new zzmw();
    private static final zzmy zzd;
    private int zze;
    private zzne zzf;
    private zzpj zzg;
    private zztx zzh = zztp.zzA();
    private zztu zzi = zztp.zzy();

    static {
        zzmy zzmyVar = new zzmy();
        zzd = zzmyVar;
        zztp.zzH(zzmy.class, zzmyVar);
    }

    private zzmy() {
    }

    public static zzmx zza() {
        return (zzmx) zzd.zzv();
    }

    public static /* synthetic */ void zzd(zzmy zzmyVar, zzne zzneVar) {
        zzneVar.getClass();
        zzmyVar.zzf = zzneVar;
        zzmyVar.zze |= 1;
    }

    public static /* synthetic */ void zze(zzmy zzmyVar, Iterable iterable) {
        zztu zztuVar = zzmyVar.zzi;
        if (!zztuVar.zzc()) {
            int size = zztuVar.size();
            zzmyVar.zzi = zztuVar.zzg(size == 0 ? 10 : size + size);
        }
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            zzmyVar.zzi.zzh(((zzml) it.next()).zza());
        }
    }

    @Override // com.google.android.gms.internal.cast.zztp
    public final Object zzb(int i2, Object obj, Object obj2) {
        int i7 = i2 - 1;
        if (i7 == 0) {
            return (byte) 1;
        }
        if (i7 == 2) {
            return zztp.zzE(zzd, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0002\u0000\u0001ဉ\u0000\u0002ဉ\u0001\u0003\u001b\u0004ࠞ", new Object[]{"zze", "zzf", "zzg", "zzh", zzpf.class, "zzi", zzml.zzb()});
        }
        if (i7 == 3) {
            return new zzmy();
        }
        zzms zzmsVar = null;
        if (i7 == 4) {
            return new zzmx(zzmsVar);
        }
        if (i7 != 5) {
            return null;
        }
        return zzd;
    }
}
