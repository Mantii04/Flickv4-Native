package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.Feature;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.AnyClient;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.TaskCompletionSource;

@KeepForSdk
/* loaded from: classes.dex */
public class RegistrationMethods<A extends Api.AnyClient, L> {

    /* renamed from: a, reason: collision with root package name */
    public final RegisterListenerMethod f10651a;

    /* renamed from: b, reason: collision with root package name */
    public final UnregisterListenerMethod f10652b;

    /* renamed from: c, reason: collision with root package name */
    public final zacj f10653c;

    @KeepForSdk
    public static class Builder<A extends Api.AnyClient, L> {

        /* renamed from: a, reason: collision with root package name */
        public RemoteCall f10654a;

        /* renamed from: b, reason: collision with root package name */
        public RemoteCall f10655b;

        /* renamed from: d, reason: collision with root package name */
        public ListenerHolder f10657d;

        /* renamed from: e, reason: collision with root package name */
        public Feature[] f10658e;

        /* renamed from: g, reason: collision with root package name */
        public int f10660g;

        /* renamed from: c, reason: collision with root package name */
        public zacj f10656c = zacj.f10768b;

        /* renamed from: f, reason: collision with root package name */
        public boolean f10659f = true;

        private Builder() {
        }

        @KeepForSdk
        public RegistrationMethods<A, L> build() {
            Preconditions.checkArgument(this.f10654a != null, "Must set register function");
            Preconditions.checkArgument(this.f10655b != null, "Must set unregister function");
            Preconditions.checkArgument(this.f10657d != null, "Must set holder");
            return new RegistrationMethods<>(new zack(this, this.f10657d, this.f10658e, this.f10659f, this.f10660g), new zacl(this, (ListenerHolder.ListenerKey) Preconditions.checkNotNull(this.f10657d.getListenerKey(), "Key must not be null")), this.f10656c);
        }

        @KeepForSdk
        public Builder<A, L> register(RemoteCall<A, TaskCompletionSource<Void>> remoteCall) {
            this.f10654a = remoteCall;
            return this;
        }

        @KeepForSdk
        public Builder<A, L> setFeatures(Feature... featureArr) {
            this.f10658e = featureArr;
            return this;
        }

        @KeepForSdk
        public Builder<A, L> setMethodKey(int i2) {
            this.f10660g = i2;
            return this;
        }

        @KeepForSdk
        public Builder<A, L> unregister(RemoteCall<A, TaskCompletionSource<Boolean>> remoteCall) {
            this.f10655b = remoteCall;
            return this;
        }

        @KeepForSdk
        public Builder<A, L> withHolder(ListenerHolder<L> listenerHolder) {
            this.f10657d = listenerHolder;
            return this;
        }
    }

    public /* synthetic */ RegistrationMethods(RegisterListenerMethod registerListenerMethod, UnregisterListenerMethod unregisterListenerMethod, zacj zacjVar) {
        this.f10651a = registerListenerMethod;
        this.f10652b = unregisterListenerMethod;
        this.f10653c = zacjVar;
    }

    @KeepForSdk
    public static <A extends Api.AnyClient, L> Builder<A, L> builder() {
        Builder<A, L> builder = new Builder<>();
        builder.f10656c = zacj.f10768b;
        builder.f10659f = true;
        return builder;
    }
}
