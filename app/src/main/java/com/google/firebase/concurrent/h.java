package com.google.firebase.concurrent;

import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
public final /* synthetic */ class h implements Callable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f13261b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Runnable f13262e;

    public /* synthetic */ h(Runnable runnable, int i2) {
        this.f13261b = i2;
        this.f13262e = runnable;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        Object lambda$submit$1;
        Object lambda$submit$12;
        switch (this.f13261b) {
            case 0:
                lambda$submit$1 = LimitedConcurrencyExecutorService.lambda$submit$1(this.f13262e);
                return lambda$submit$1;
            default:
                lambda$submit$12 = PausableExecutorServiceImpl.lambda$submit$1(this.f13262e);
                return lambda$submit$12;
        }
    }
}
