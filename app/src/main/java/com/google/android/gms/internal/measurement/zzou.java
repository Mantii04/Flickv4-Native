package com.google.android.gms.internal.measurement;

import P3.C;
import com.google.common.base.c;

/* loaded from: classes2.dex */
public final class zzou implements C {
    private static zzou zza = new zzou();
    private final C zzb = c.ofInstance(new zzow());

    public static boolean zza() {
        return ((zzox) zza.get()).zza();
    }

    public static boolean zzb() {
        return ((zzox) zza.get()).zzb();
    }

    public static boolean zzc() {
        return ((zzox) zza.get()).zzc();
    }

    public static boolean zzd() {
        return ((zzox) zza.get()).zzd();
    }

    @Override // P3.C
    public final /* synthetic */ Object get() {
        return (zzox) this.zzb.get();
    }
}
