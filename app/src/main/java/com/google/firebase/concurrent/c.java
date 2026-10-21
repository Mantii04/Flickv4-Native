package com.google.firebase.concurrent;

import com.google.firebase.concurrent.DelegatingScheduledFuture;

/* loaded from: classes2.dex */
public final /* synthetic */ class c implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f13244b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Runnable f13245e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ DelegatingScheduledFuture.Completer f13246f;

    public /* synthetic */ c(Runnable runnable, DelegatingScheduledFuture.Completer completer, int i2) {
        this.f13244b = i2;
        this.f13245e = runnable;
        this.f13246f = completer;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f13244b) {
            case 0:
                DelegatingScheduledExecutorService.lambda$scheduleWithFixedDelay$9(this.f13245e, this.f13246f);
                break;
            case 1:
                DelegatingScheduledExecutorService.lambda$schedule$0(this.f13245e, this.f13246f);
                break;
            default:
                DelegatingScheduledExecutorService.lambda$scheduleAtFixedRate$6(this.f13245e, this.f13246f);
                break;
        }
    }
}
