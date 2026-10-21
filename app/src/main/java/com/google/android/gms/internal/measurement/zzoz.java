package com.google.android.gms.internal.measurement;

import P3.C;
import com.google.common.base.c;

/* loaded from: classes2.dex */
public final class zzoz implements C {
    private static zzoz zza = new zzoz();
    private final C zzb = c.ofInstance(new zzpb());

    public static boolean zza() {
        return ((zzoy) zza.get()).zza();
    }

    public static boolean zzb() {
        return ((zzoy) zza.get()).zzb();
    }

    @Override // P3.C
    public final /* synthetic */ Object get() {
        return (zzoy) this.zzb.get();
    }
}
