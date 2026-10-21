package com.google.android.gms.internal.measurement;

import A.i;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzbq extends zzay {
    @Override // com.google.android.gms.internal.measurement.zzay
    public final zzaq zza(String str, zzh zzhVar, List<zzaq> list) {
        if (str == null || str.isEmpty() || !zzhVar.zzb(str)) {
            throw new IllegalArgumentException(i.k("Command not found: ", str));
        }
        zzaq zza = zzhVar.zza(str);
        if (zza instanceof zzal) {
            return ((zzal) zza).zza(zzhVar, list);
        }
        throw new IllegalArgumentException(i.l("Function ", str, " is not defined"));
    }
}
