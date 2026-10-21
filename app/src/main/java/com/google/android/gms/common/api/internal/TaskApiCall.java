package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.AnyClient;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.TaskCompletionSource;

@KeepForSdk
/* loaded from: classes.dex */
public abstract class TaskApiCall<A extends Api.AnyClient, ResultT> {

    /* renamed from: a, reason: collision with root package name */
    public final Feature[] f10661a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f10662b;

    /* renamed from: c, reason: collision with root package name */
    public final int f10663c;

    @KeepForSdk
    public static class Builder<A extends Api.AnyClient, ResultT> {

        /* renamed from: a, reason: collision with root package name */
        public RemoteCall f10664a;

        /* renamed from: c, reason: collision with root package name */
        public Feature[] f10666c;

        /* renamed from: b, reason: collision with root package name */
        public boolean f10665b = true;

        /* renamed from: d, reason: collision with root package name */
        public int f10667d = 0;

        private Builder() {
        }

        @KeepForSdk
        public TaskApiCall<A, ResultT> build() {
            Preconditions.checkArgument(this.f10664a != null, "execute parameter required");
            return new zacv(this, this.f10666c, this.f10665b, this.f10667d);
        }

        @KeepForSdk
        public Builder<A, ResultT> run(RemoteCall<A, TaskCompletionSource<ResultT>> remoteCall) {
            this.f10664a = remoteCall;
            return this;
        }

        @KeepForSdk
        public Builder<A, ResultT> setAutoResolveMissingFeatures(boolean z6) {
            this.f10665b = z6;
            return this;
        }

        @KeepForSdk
        public Builder<A, ResultT> setFeatures(Feature... featureArr) {
            this.f10666c = featureArr;
            return this;
        }

        @KeepForSdk
        public Builder<A, ResultT> setMethodKey(int i2) {
            this.f10667d = i2;
            return this;
        }
    }

    @KeepForSdk
    @Deprecated
    public TaskApiCall() {
        this.f10661a = null;
        this.f10662b = false;
        this.f10663c = 0;
    }

    @KeepForSdk
    public static <A extends Api.AnyClient, ResultT> Builder<A, ResultT> builder() {
        Builder<A, ResultT> builder = new Builder<>();
        builder.f10665b = true;
        builder.f10667d = 0;
        return builder;
    }

    @KeepForSdk
    public abstract void doExecute(A a7, TaskCompletionSource<ResultT> taskCompletionSource) throws RemoteException;

    @KeepForSdk
    public boolean shouldAutoResolveMissingFeatures() {
        return this.f10662b;
    }

    public final int zaa() {
        return this.f10663c;
    }

    public final Feature[] zab() {
        return this.f10661a;
    }

    @KeepForSdk
    public TaskApiCall(Feature[] featureArr, boolean z6, int i2) {
        this.f10661a = featureArr;
        boolean z7 = false;
        if (featureArr != null && z6) {
            z7 = true;
        }
        this.f10662b = z7;
        this.f10663c = i2;
    }
}
