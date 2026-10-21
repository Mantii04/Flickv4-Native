package com.google.android.gms.internal.measurement;

import P3.C;
import com.google.common.base.c;

/* loaded from: classes2.dex */
public final class zzpl implements C {
    private static zzpl zza = new zzpl();
    private final C zzb = c.ofInstance(new zzpn());

    public static boolean zza() {
        return ((zzpk) zza.get()).zza();
    }

    public static boolean zzb() {
        return ((zzpk) zza.get()).zzb();
    }

    @Override // P3.C
    public final /* synthetic */ Object get() {
        return (zzpk) this.zzb.get();
    }
}
