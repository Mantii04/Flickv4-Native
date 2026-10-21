package io.reactivex.internal.fuseable;

import m6.d;

/* loaded from: classes2.dex */
public interface QueueSubscription<T> extends QueueFuseable<T>, d {
    @Override // m6.d
    /* synthetic */ void cancel();

    @Override // m6.d
    /* synthetic */ void request(long j7);
}
