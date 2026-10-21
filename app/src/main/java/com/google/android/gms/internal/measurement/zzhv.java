package com.google.android.gms.internal.measurement;

import P3.v;
import com.google.common.collect.ImmutableMultimap;

/* loaded from: classes2.dex */
public final class zzhv {
    private final boolean zza;

    public zzhv(zzhu zzhuVar) {
        v.checkNotNull(zzhuVar, "BuildInfo must be non-null");
        this.zza = !zzhuVar.zza();
    }

    public final boolean zza(String str) {
        v.checkNotNull(str, "flagName must not be null");
        if (this.zza) {
            return ((ImmutableMultimap) zzhx.zza.get()).containsValue(str);
        }
        return true;
    }
}
