package com.google.firebase.concurrent;

import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
public final /* synthetic */ class i implements Callable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f13263b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Runnable f13264e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f13265f;

    public /* synthetic */ i(Runnable runnable, Object obj, int i2) {
        this.f13263b = i2;
        this.f13264e = runnable;
        this.f13265f = obj;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        Object lambda$submit$0;
        switch (this.f13263b) {
            case 0:
                lambda$submit$0 = LimitedConcurrencyExecutorService.lambda$submit$0(this.f13264e, this.f13265f);
                return lambda$submit$0;
            default:
                return PausableExecutorServiceImpl.lambda$submit$0(this.f13264e, this.f13265f);
        }
    }
}
