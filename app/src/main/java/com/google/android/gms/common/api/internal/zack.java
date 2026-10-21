package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.RegistrationMethods;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes.dex */
final class zack extends RegisterListenerMethod {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ RegistrationMethods.Builder f10769e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zack(RegistrationMethods.Builder builder, ListenerHolder listenerHolder, Feature[] featureArr, boolean z6, int i2) {
        super(listenerHolder, featureArr, z6, i2);
        this.f10769e = builder;
    }

    @Override // com.google.android.gms.common.api.internal.RegisterListenerMethod
    public final void registerListener(Api.AnyClient anyClient, TaskCompletionSource<Void> taskCompletionSource) throws RemoteException {
        this.f10769e.f10654a.accept(anyClient, taskCompletionSource);
    }
}
