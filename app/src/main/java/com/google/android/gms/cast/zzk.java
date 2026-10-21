package com.google.android.gms.cast;

import android.os.RemoteException;
import androidx.media3.common.PlaybackException;

/* loaded from: classes.dex */
final class zzk extends com.google.android.gms.cast.internal.zzad {
    @Override // com.google.android.gms.cast.internal.zzad, com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    /* renamed from: zza */
    public final void doExecute(com.google.android.gms.cast.internal.zzw zzwVar) throws RemoteException {
        try {
            zzwVar.zzV("", this);
        } catch (IllegalStateException unused) {
            zzc(PlaybackException.ERROR_CODE_IO_NETWORK_CONNECTION_FAILED);
        }
    }
}
