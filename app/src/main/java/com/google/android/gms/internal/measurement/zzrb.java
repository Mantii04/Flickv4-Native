package com.google.android.gms.internal.measurement;

import P3.C;
import com.google.common.base.c;

/* loaded from: classes2.dex */
public final class zzrb implements C {
    private static zzrb zza = new zzrb();
    private final C zzb = c.ofInstance(new zzrd());

    public static boolean zza() {
        return ((zzra) zza.get()).zza();
    }

    public static boolean zzb() {
        return ((zzra) zza.get()).zzb();
    }

    @Override // P3.C
    public final /* synthetic */ Object get() {
        return (zzra) this.zzb.get();
    }
}
