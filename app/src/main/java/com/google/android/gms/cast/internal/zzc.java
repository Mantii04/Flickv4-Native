package com.google.android.gms.cast.internal;

import androidx.media3.common.PlaybackException;
import com.google.android.gms.cast.Cast;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;

/* loaded from: classes.dex */
public abstract class zzc extends BaseImplementation.ApiMethodImpl {
    public zzc(GoogleApiClient googleApiClient) {
        super(Cast.f9602a, googleApiClient);
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl, com.google.android.gms.common.api.internal.BaseImplementation.ResultHolder
    @KeepForSdk
    public final /* bridge */ /* synthetic */ void setResult(Object obj) {
        setResult((zzc) obj);
    }

    public final void zzc(int i2) {
        setResult((zzc) createFailedResult(new Status(PlaybackException.ERROR_CODE_IO_NETWORK_CONNECTION_FAILED)));
    }
}
