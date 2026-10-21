package com.google.android.gms.internal.measurement;

import P3.C;
import com.google.common.base.c;

/* loaded from: classes2.dex */
public final class zzqq implements C {
    private static zzqq zza = new zzqq();
    private final C zzb = c.ofInstance(new zzqs());

    public static boolean zza() {
        return ((zzqt) zza.get()).zza();
    }

    public static boolean zzb() {
        return ((zzqt) zza.get()).zzb();
    }

    public static boolean zzc() {
        return ((zzqt) zza.get()).zzc();
    }

    @Override // P3.C
    public final /* synthetic */ Object get() {
        return (zzqt) this.zzb.get();
    }
}
