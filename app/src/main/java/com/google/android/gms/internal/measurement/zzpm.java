package com.google.android.gms.internal.measurement;

import P3.C;
import com.google.common.base.c;

/* loaded from: classes2.dex */
public final class zzpm implements C {
    private static zzpm zza = new zzpm();
    private final C zzb = c.ofInstance(new zzpo());

    public static boolean zza() {
        return ((zzpp) zza.get()).zza();
    }

    public static boolean zzb() {
        return ((zzpp) zza.get()).zzb();
    }

    public static boolean zzc() {
        return ((zzpp) zza.get()).zzc();
    }

    @Override // P3.C
    public final /* synthetic */ Object get() {
        return (zzpp) this.zzb.get();
    }
}
