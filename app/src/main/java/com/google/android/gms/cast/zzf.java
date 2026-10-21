package com.google.android.gms.cast;

import android.os.RemoteException;
import androidx.media3.common.PlaybackException;
import com.google.android.gms.common.api.GoogleApiClient;

/* loaded from: classes.dex */
final class zzf extends com.google.android.gms.cast.internal.zzad {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f10543a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f10544b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzf(GoogleApiClient googleApiClient, String str, String str2) {
        super(googleApiClient);
        this.f10543a = str;
        this.f10544b = str2;
    }

    @Override // com.google.android.gms.cast.internal.zzad, com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    /* renamed from: zza */
    public final void doExecute(com.google.android.gms.cast.internal.zzw zzwVar) throws RemoteException {
        try {
            zzwVar.zzQ(this.f10543a, this.f10544b, this);
        } catch (IllegalArgumentException | IllegalStateException unused) {
            zzc(PlaybackException.ERROR_CODE_IO_NETWORK_CONNECTION_FAILED);
        }
    }
}
