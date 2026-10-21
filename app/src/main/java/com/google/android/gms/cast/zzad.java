package com.google.android.gms.cast;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes.dex */
final class zzad extends zzaf {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ TaskCompletionSource f10453a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ CastRemoteDisplayClient f10454b;

    public zzad(CastRemoteDisplayClient castRemoteDisplayClient, TaskCompletionSource taskCompletionSource) {
        this.f10454b = castRemoteDisplayClient;
        this.f10453a = taskCompletionSource;
    }

    @Override // com.google.android.gms.cast.zzaf, com.google.android.gms.internal.cast.zzds
    public final void zzd(int i2) throws RemoteException {
        CastRemoteDisplayClient castRemoteDisplayClient = this.f10454b;
        castRemoteDisplayClient.f9631j.d("onError: %d", Integer.valueOf(i2));
        CastRemoteDisplayClient.a(castRemoteDisplayClient);
        TaskUtil.setResultOrApiException(Status.f10607p, this.f10453a);
    }

    @Override // com.google.android.gms.cast.zzaf, com.google.android.gms.internal.cast.zzds
    public final void zzf() throws RemoteException {
        CastRemoteDisplayClient castRemoteDisplayClient = this.f10454b;
        castRemoteDisplayClient.f9631j.d("onDisconnected", new Object[0]);
        CastRemoteDisplayClient.a(castRemoteDisplayClient);
        TaskUtil.setResultOrApiException(Status.f10605m, this.f10453a);
    }
}
