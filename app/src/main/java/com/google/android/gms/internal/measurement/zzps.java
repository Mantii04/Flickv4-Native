package com.google.android.gms.internal.measurement;

import P3.C;
import com.google.common.base.c;

/* loaded from: classes2.dex */
public final class zzps implements C {
    private static zzps zza = new zzps();
    private final C zzb = c.ofInstance(new zzpu());

    public static double zza() {
        return ((zzpv) zza.get()).zza();
    }

    public static long zzb() {
        return ((zzpv) zza.get()).zzb();
    }

    public static long zzc() {
        return ((zzpv) zza.get()).zzc();
    }

    public static String zzd() {
        return ((zzpv) zza.get()).zzd();
    }

    public static boolean zze() {
        return ((zzpv) zza.get()).zze();
    }

    @Override // P3.C
    public final /* synthetic */ Object get() {
        return (zzpv) this.zzb.get();
    }
}
