package com.google.firebase.concurrent;

import com.google.firebase.concurrent.DelegatingScheduledFuture;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final /* synthetic */ class b implements DelegatingScheduledFuture.Resolver {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13239a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ DelegatingScheduledExecutorService f13240b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ long f13241c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ TimeUnit f13242d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f13243e;

    public /* synthetic */ b(DelegatingScheduledExecutorService delegatingScheduledExecutorService, Object obj, long j7, TimeUnit timeUnit, int i2) {
        this.f13239a = i2;
        this.f13240b = delegatingScheduledExecutorService;
        this.f13243e = obj;
        this.f13241c = j7;
        this.f13242d = timeUnit;
    }

    @Override // com.google.firebase.concurrent.DelegatingScheduledFuture.Resolver
    public final ScheduledFuture addCompleter(DelegatingScheduledFuture.Completer completer) {
        ScheduledFuture lambda$schedule$2;
        ScheduledFuture lambda$schedule$5;
        switch (this.f13239a) {
            case 0:
                lambda$schedule$2 = this.f13240b.lambda$schedule$2((Runnable) this.f13243e, this.f13241c, this.f13242d, completer);
                return lambda$schedule$2;
            default:
                lambda$schedule$5 = this.f13240b.lambda$schedule$5((Callable) this.f13243e, this.f13241c, this.f13242d, completer);
                return lambda$schedule$5;
        }
    }
}
