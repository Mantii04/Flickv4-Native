package com.google.android.gms.internal.measurement;

import P3.C;
import com.google.common.base.c;

/* loaded from: classes2.dex */
public final class zzpf implements C {
    private static zzpf zza = new zzpf();
    private final C zzb = c.ofInstance(new zzph());

    public static boolean zza() {
        return ((zzpe) zza.get()).zza();
    }

    public static boolean zzb() {
        return ((zzpe) zza.get()).zzb();
    }

    public static boolean zzc() {
        return ((zzpe) zza.get()).zzc();
    }

    @Override // P3.C
    public final /* synthetic */ Object get() {
        return (zzpe) this.zzb.get();
    }
}
