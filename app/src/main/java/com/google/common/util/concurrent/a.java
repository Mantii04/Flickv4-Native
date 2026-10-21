package com.google.common.util.concurrent;

import P3.v;

/* loaded from: classes2.dex */
public final class a {

    /* renamed from: b, reason: collision with root package name */
    public static final a f13200b = new a(new AbstractFuture$Failure$1("Failure occurred while trying to finish a future."));

    /* renamed from: a, reason: collision with root package name */
    public final Throwable f13201a;

    public a(Throwable th) {
        this.f13201a = (Throwable) v.checkNotNull(th);
    }
}
