package com.google.android.gms.internal.cast;

import com.google.android.gms.cast.Cast;

/* loaded from: classes2.dex */
final class zzcf extends Cast.Listener {
    final /* synthetic */ zzcg zza;

    public zzcf(zzcg zzcgVar) {
        this.zza = zzcgVar;
    }

    @Override // com.google.android.gms.cast.Cast.Listener
    public final void onVolumeChanged() {
        this.zza.zza();
    }
}
