package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.AnyClient;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.tasks.TaskCompletionSource;

@KeepForSdk
/* loaded from: classes.dex */
public abstract class RegisterListenerMethod<A extends Api.AnyClient, L> {

    /* renamed from: a, reason: collision with root package name */
    public final ListenerHolder f10647a;

    /* renamed from: b, reason: collision with root package name */
    public final Feature[] f10648b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f10649c;

    /* renamed from: d, reason: collision with root package name */
    public final int f10650d;

    @KeepForSdk
    public RegisterListenerMethod(ListenerHolder<L> listenerHolder, Feature[] featureArr, boolean z6, int i2) {
        this.f10647a = listenerHolder;
        this.f10648b = featureArr;
        this.f10649c = z6;
        this.f10650d = i2;
    }

    @KeepForSdk
    public void clearListener() {
        this.f10647a.clear();
    }

    @KeepForSdk
    public ListenerHolder.ListenerKey<L> getListenerKey() {
        return this.f10647a.getListenerKey();
    }

    @KeepForSdk
    public Feature[] getRequiredFeatures() {
        return this.f10648b;
    }

    @KeepForSdk
    public abstract void registerListener(A a7, TaskCompletionSource<Void> taskCompletionSource) throws RemoteException;

    public final int zaa() {
        return this.f10650d;
    }

    public final boolean zab() {
        return this.f10649c;
    }
}
