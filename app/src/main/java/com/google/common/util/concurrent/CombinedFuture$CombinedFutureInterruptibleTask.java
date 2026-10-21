package com.google.common.util.concurrent;

import P3.v;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
abstract class CombinedFuture$CombinedFutureInterruptibleTask<T> extends InterruptibleTask<T> {

    /* renamed from: f, reason: collision with root package name */
    public final Executor f13191f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ e f13192j;

    public CombinedFuture$CombinedFutureInterruptibleTask(e eVar, Executor executor) {
        this.f13192j = eVar;
        this.f13191f = (Executor) v.checkNotNull(executor);
    }

    @Override // com.google.common.util.concurrent.InterruptibleTask
    public final void a(Throwable th) {
        e eVar = this.f13192j;
        eVar.f13215w = null;
        if (th instanceof ExecutionException) {
            eVar.setException(((ExecutionException) th).getCause());
        } else if (th instanceof CancellationException) {
            eVar.cancel(false);
        } else {
            eVar.setException(th);
        }
    }

    @Override // com.google.common.util.concurrent.InterruptibleTask
    public final void b(Object obj) {
        this.f13192j.f13215w = null;
        ((CombinedFuture$CallableInterruptibleTask) this).f13190n.set(obj);
    }

    @Override // com.google.common.util.concurrent.InterruptibleTask
    public final boolean d() {
        return this.f13192j.isDone();
    }
}
