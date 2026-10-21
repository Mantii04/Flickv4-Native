package com.google.android.gms.internal.measurement;

import P3.C;
import com.google.common.base.c;

/* loaded from: classes2.dex */
public final class zzqk implements C {
    private static zzqk zza = new zzqk();
    private final C zzb = c.ofInstance(new zzqm());

    public static boolean zza() {
        return ((zzqn) zza.get()).zza();
    }

    public static boolean zzb() {
        return ((zzqn) zza.get()).zzb();
    }

    public static boolean zzc() {
        return ((zzqn) zza.get()).zzc();
    }

    public static boolean zzd() {
        return ((zzqn) zza.get()).zzd();
    }

    @Override // P3.C
    public final /* synthetic */ Object get() {
        return (zzqn) this.zzb.get();
    }
}
