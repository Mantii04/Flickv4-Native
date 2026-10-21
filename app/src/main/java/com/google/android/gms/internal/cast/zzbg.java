package com.google.android.gms.internal.cast;

import android.content.Context;
import f1.M;
import f1.X;

/* loaded from: classes2.dex */
public final class zzbg {
    public X zza;
    private final Context zzb;

    public zzbg(Context context) {
        this.zzb = context;
    }

    public final X zza() {
        if (this.zza == null) {
            this.zza = X.getInstance(this.zzb);
        }
        return this.zza;
    }

    public final void zzb(M m7) {
        X zza = zza();
        if (zza != null) {
            zza.removeCallback(m7);
        }
    }
}
