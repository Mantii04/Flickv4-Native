package com.google.firebase.concurrent;

import com.google.firebase.concurrent.DelegatingScheduledFuture;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final /* synthetic */ class e implements DelegatingScheduledFuture.Resolver {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13251a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ DelegatingScheduledExecutorService f13252b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Runnable f13253c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ long f13254d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ long f13255e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ TimeUnit f13256f;

    public /* synthetic */ e(DelegatingScheduledExecutorService delegatingScheduledExecutorService, Runnable runnable, long j7, long j8, TimeUnit timeUnit, int i2) {
        this.f13251a = i2;
        this.f13252b = delegatingScheduledExecutorService;
        this.f13253c = runnable;
        this.f13254d = j7;
        this.f13255e = j8;
        this.f13256f = timeUnit;
    }

    @Override // com.google.firebase.concurrent.DelegatingScheduledFuture.Resolver
    public final ScheduledFuture addCompleter(DelegatingScheduledFuture.Completer completer) {
        ScheduledFuture lambda$scheduleAtFixedRate$8;
        ScheduledFuture lambda$scheduleWithFixedDelay$11;
        switch (this.f13251a) {
            case 0:
                lambda$scheduleAtFixedRate$8 = this.f13252b.lambda$scheduleAtFixedRate$8(this.f13253c, this.f13254d, this.f13255e, this.f13256f, completer);
                return lambda$scheduleAtFixedRate$8;
            default:
                lambda$scheduleWithFixedDelay$11 = this.f13252b.lambda$scheduleWithFixedDelay$11(this.f13253c, this.f13254d, this.f13255e, this.f13256f, completer);
                return lambda$scheduleWithFixedDelay$11;
        }
    }
}
