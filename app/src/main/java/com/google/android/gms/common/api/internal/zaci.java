package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.Api;

/* loaded from: classes.dex */
public final class zaci {

    /* renamed from: a, reason: collision with root package name */
    public final RegisterListenerMethod f10765a;

    /* renamed from: b, reason: collision with root package name */
    public final UnregisterListenerMethod f10766b;

    /* renamed from: c, reason: collision with root package name */
    public final Runnable f10767c;

    public zaci(RegisterListenerMethod<Api.AnyClient, ?> registerListenerMethod, UnregisterListenerMethod<Api.AnyClient, ?> unregisterListenerMethod, Runnable runnable) {
        this.f10765a = registerListenerMethod;
        this.f10766b = unregisterListenerMethod;
        this.f10767c = runnable;
    }
}
