package com.google.android.gms.internal.measurement;

import P3.C;
import com.google.common.base.c;

/* loaded from: classes2.dex */
public final class zzoh implements C {
    private static zzoh zza = new zzoh();
    private final C zzb = c.ofInstance(new zzoj());

    public static boolean zza() {
        return ((zzog) zza.get()).zza();
    }

    public static boolean zzb() {
        return ((zzog) zza.get()).zzb();
    }

    @Override // P3.C
    public final /* synthetic */ Object get() {
        return (zzog) this.zzb.get();
    }
}
