package com.google.android.gms.internal.measurement;

import P3.C;
import com.google.common.base.c;

/* loaded from: classes2.dex */
public final class zzqw implements C {
    private static zzqw zza = new zzqw();
    private final C zzb = c.ofInstance(new zzqy());

    public static boolean zza() {
        return ((zzqz) zza.get()).zza();
    }

    public static boolean zzb() {
        return ((zzqz) zza.get()).zzb();
    }

    public static boolean zzc() {
        return ((zzqz) zza.get()).zzc();
    }

    @Override // P3.C
    public final /* synthetic */ Object get() {
        return (zzqz) this.zzb.get();
    }
}
