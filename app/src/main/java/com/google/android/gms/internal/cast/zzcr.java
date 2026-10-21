package com.google.android.gms.internal.cast;

import com.google.android.gms.cast.framework.media.uicontroller.UIController;

/* loaded from: classes2.dex */
public abstract class zzcr extends UIController {
    private boolean zza = true;

    public void zza(boolean z6) {
        this.zza = z6;
    }

    public abstract void zzb(long j7);

    public final boolean zzc() {
        return this.zza;
    }
}
