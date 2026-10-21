package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
final class zzmc extends zzlz {
    public zzmc(int i2) {
        super(i2);
    }

    @Override // com.google.android.gms.internal.measurement.zzlz
    public final void zzd() {
        if (!zze()) {
            for (int i2 = 0; i2 < zza(); i2++) {
                Map.Entry zzb = zzb(i2);
                if (((zzjl) zzb.getKey()).zze()) {
                    zzb.setValue(Collections.unmodifiableList((List) zzb.getValue()));
                }
            }
            for (Map.Entry entry : zzb()) {
                if (((zzjl) entry.getKey()).zze()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        super.zzd();
    }
}
