package com.google.android.gms.cast;

import android.app.PendingIntent;
import android.os.RemoteException;
import android.text.TextUtils;
import androidx.media3.common.PlaybackException;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
final class zzl extends com.google.android.gms.cast.internal.zzad {
    @Override // com.google.android.gms.cast.internal.zzad, com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    /* renamed from: zza */
    public final void doExecute(com.google.android.gms.cast.internal.zzw zzwVar) throws RemoteException {
        if (TextUtils.isEmpty(null)) {
            setResult((zzl) new Status(PlaybackException.ERROR_CODE_IO_NETWORK_CONNECTION_FAILED, "IllegalArgument: sessionId cannot be null or empty", (PendingIntent) null));
            return;
        }
        try {
            zzwVar.zzV(null, this);
        } catch (IllegalStateException unused) {
            zzc(PlaybackException.ERROR_CODE_IO_NETWORK_CONNECTION_FAILED);
        }
    }
}
