package com.google.common.util.concurrent;

import P3.v;
import V3.t;
import java.util.concurrent.Callable;
import java.util.concurrent.RunnableFuture;

/* loaded from: classes2.dex */
public final class h extends t implements RunnableFuture {

    /* renamed from: q, reason: collision with root package name */
    public volatile TrustedListenableFutureTask$TrustedFutureInterruptibleTask f13217q;

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.common.util.concurrent.TrustedListenableFutureTask$TrustedFutureInterruptibleTask] */
    public h(final Callable callable) {
        this.f13217q = new InterruptibleTask<Object>(callable) { // from class: com.google.common.util.concurrent.TrustedListenableFutureTask$TrustedFutureInterruptibleTask

            /* renamed from: f, reason: collision with root package name */
            public final Callable f13198f;

            {
                this.f13198f = (Callable) v.checkNotNull(callable);
            }

            @Override // com.google.common.util.concurrent.InterruptibleTask
            public final void a(Throwable th) {
                h.this.setException(th);
            }

            @Override // com.google.common.util.concurrent.InterruptibleTask
            public final void b(Object obj) {
                h.this.set(obj);
            }

            @Override // com.google.common.util.concurrent.InterruptibleTask
            public final boolean d() {
                return h.this.isDone();
            }

            @Override // com.google.common.util.concurrent.InterruptibleTask
            public final Object e() {
                return this.f13198f.call();
            }

            @Override // com.google.common.util.concurrent.InterruptibleTask
            public final String f() {
                return this.f13198f.toString();
            }
        };
    }

    @Override // com.google.common.util.concurrent.b
    public void afterDone() {
        TrustedListenableFutureTask$TrustedFutureInterruptibleTask trustedListenableFutureTask$TrustedFutureInterruptibleTask;
        super.afterDone();
        if (wasInterrupted() && (trustedListenableFutureTask$TrustedFutureInterruptibleTask = this.f13217q) != null) {
            trustedListenableFutureTask$TrustedFutureInterruptibleTask.c();
        }
        this.f13217q = null;
    }

    @Override // com.google.common.util.concurrent.b
    public String pendingToString() {
        TrustedListenableFutureTask$TrustedFutureInterruptibleTask trustedListenableFutureTask$TrustedFutureInterruptibleTask = this.f13217q;
        if (trustedListenableFutureTask$TrustedFutureInterruptibleTask == null) {
            return super.pendingToString();
        }
        return "task=[" + trustedListenableFutureTask$TrustedFutureInterruptibleTask + "]";
    }

    @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
    public void run() {
        TrustedListenableFutureTask$TrustedFutureInterruptibleTask trustedListenableFutureTask$TrustedFutureInterruptibleTask = this.f13217q;
        if (trustedListenableFutureTask$TrustedFutureInterruptibleTask != null) {
            trustedListenableFutureTask$TrustedFutureInterruptibleTask.run();
        }
        this.f13217q = null;
    }
}
