package com.google.common.util.concurrent;

/* loaded from: classes2.dex */
public final class e extends c {

    /* renamed from: w, reason: collision with root package name */
    public CombinedFuture$CallableInterruptibleTask f13215w;

    @Override // com.google.common.util.concurrent.b
    public void interruptTask() {
        CombinedFuture$CallableInterruptibleTask combinedFuture$CallableInterruptibleTask = this.f13215w;
        if (combinedFuture$CallableInterruptibleTask != null) {
            combinedFuture$CallableInterruptibleTask.c();
        }
    }
}
