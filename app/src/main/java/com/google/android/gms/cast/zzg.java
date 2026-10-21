package com.google.android.gms.cast;

import android.os.RemoteException;
import androidx.media3.common.PlaybackException;

/* loaded from: classes.dex */
final class zzg extends zzp {
    @Override // com.google.android.gms.cast.zzp, com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    /* renamed from: zza */
    public final void doExecute(com.google.android.gms.cast.internal.zzw zzwVar) throws RemoteException {
        try {
            LaunchOptions launchOptions = new LaunchOptions();
            launchOptions.setRelaunchIfRunning(false);
            zzwVar.zzM(null, launchOptions, this);
        } catch (IllegalStateException unused) {
            zzc(PlaybackException.ERROR_CODE_IO_NETWORK_CONNECTION_FAILED);
        }
    }
}
