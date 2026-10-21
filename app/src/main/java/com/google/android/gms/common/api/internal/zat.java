package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes.dex */
public final class zat implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener {
    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        Preconditions.checkNotNull(null, "Callbacks must be attached to a ClientConnectionHelper instance before connecting the client.");
        throw null;
    }

    @Override // com.google.android.gms.common.api.internal.OnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        Preconditions.checkNotNull(null, "Callbacks must be attached to a ClientConnectionHelper instance before connecting the client.");
        throw null;
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnectionSuspended(int i2) {
        Preconditions.checkNotNull(null, "Callbacks must be attached to a ClientConnectionHelper instance before connecting the client.");
        throw null;
    }
}
