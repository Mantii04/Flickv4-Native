package com.google.android.gms.internal.measurement;

import P3.C;
import com.google.common.base.c;

/* loaded from: classes2.dex */
public final class zzpg implements C {
    private static zzpg zza = new zzpg();
    private final C zzb = c.ofInstance(new zzpi());

    public static boolean zza() {
        return ((zzpj) zza.get()).zza();
    }

    public static boolean zzb() {
        return ((zzpj) zza.get()).zzb();
    }

    @Override // P3.C
    public final /* synthetic */ Object get() {
        return (zzpj) this.zzb.get();
    }
}
