package com.google.firebase.concurrent;

import com.google.firebase.concurrent.DelegatingScheduledFuture;

/* loaded from: classes2.dex */
public final /* synthetic */ class d implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f13247b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ DelegatingScheduledExecutorService f13248e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Runnable f13249f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ DelegatingScheduledFuture.Completer f13250j;

    public /* synthetic */ d(DelegatingScheduledExecutorService delegatingScheduledExecutorService, Runnable runnable, DelegatingScheduledFuture.Completer completer, int i2) {
        this.f13247b = i2;
        this.f13248e = delegatingScheduledExecutorService;
        this.f13249f = runnable;
        this.f13250j = completer;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f13247b) {
            case 0:
                this.f13248e.lambda$scheduleWithFixedDelay$10(this.f13249f, this.f13250j);
                break;
            case 1:
                this.f13248e.lambda$scheduleAtFixedRate$7(this.f13249f, this.f13250j);
                break;
            default:
                this.f13248e.lambda$schedule$1(this.f13249f, this.f13250j);
                break;
        }
    }
}
