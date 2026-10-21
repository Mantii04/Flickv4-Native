package com.google.common.util.concurrent;

import P3.v;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
final class CombinedFuture$CallableInterruptibleTask extends CombinedFuture$CombinedFutureInterruptibleTask<Object> {

    /* renamed from: m, reason: collision with root package name */
    public final Callable f13189m;

    /* renamed from: n, reason: collision with root package name */
    public final /* synthetic */ e f13190n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CombinedFuture$CallableInterruptibleTask(e eVar, Callable callable, Executor executor) {
        super(eVar, executor);
        this.f13190n = eVar;
        this.f13189m = (Callable) v.checkNotNull(callable);
    }

    @Override // com.google.common.util.concurrent.InterruptibleTask
    public final Object e() {
        return this.f13189m.call();
    }

    @Override // com.google.common.util.concurrent.InterruptibleTask
    public final String f() {
        return this.f13189m.toString();
    }
}
