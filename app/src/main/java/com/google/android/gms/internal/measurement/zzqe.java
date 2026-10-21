package com.google.android.gms.internal.measurement;

import P3.C;
import com.google.common.base.c;

/* loaded from: classes2.dex */
public final class zzqe implements C {
    private static zzqe zza = new zzqe();
    private final C zzb = c.ofInstance(new zzqg());

    public static boolean zza() {
        return ((zzqh) zza.get()).zza();
    }

    public static boolean zzb() {
        return ((zzqh) zza.get()).zzb();
    }

    @Override // P3.C
    public final /* synthetic */ Object get() {
        return (zzqh) this.zzb.get();
    }
}
