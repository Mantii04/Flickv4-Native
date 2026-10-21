package com.google.android.gms.internal.measurement;

import P3.C;
import com.google.common.base.c;

/* loaded from: classes2.dex */
public final class zzoo implements C {
    private static zzoo zza = new zzoo();
    private final C zzb = c.ofInstance(new zzoq());

    public static boolean zza() {
        return ((zzor) zza.get()).zza();
    }

    public static boolean zzb() {
        return ((zzor) zza.get()).zzb();
    }

    public static boolean zzc() {
        return ((zzor) zza.get()).zzc();
    }

    @Override // P3.C
    public final /* synthetic */ Object get() {
        return (zzor) this.zzb.get();
    }
}
