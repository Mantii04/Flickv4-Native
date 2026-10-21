package com.google.android.gms.internal.measurement;

import P3.C;
import com.google.common.base.c;

/* loaded from: classes2.dex */
public final class zzqv implements C {
    private static zzqv zza = new zzqv();
    private final C zzb = c.ofInstance(new zzqx());

    public static boolean zza() {
        return ((zzqu) zza.get()).zza();
    }

    public static boolean zzb() {
        return ((zzqu) zza.get()).zzb();
    }

    public static boolean zzc() {
        return ((zzqu) zza.get()).zzc();
    }

    public static boolean zzd() {
        return ((zzqu) zza.get()).zzd();
    }

    @Override // P3.C
    public final /* synthetic */ Object get() {
        return (zzqu) this.zzb.get();
    }
}
