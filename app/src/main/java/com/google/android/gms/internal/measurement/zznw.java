package com.google.android.gms.internal.measurement;

import P3.C;
import com.google.common.base.c;

/* loaded from: classes2.dex */
public final class zznw implements C {
    private static zznw zza = new zznw();
    private final C zzb = c.ofInstance(new zzny());

    public static boolean zza() {
        return ((zznz) zza.get()).zza();
    }

    public static boolean zzb() {
        return ((zznz) zza.get()).zzb();
    }

    public static boolean zzc() {
        return ((zznz) zza.get()).zzc();
    }

    @Override // P3.C
    public final /* synthetic */ Object get() {
        return (zznz) this.zzb.get();
    }
}
