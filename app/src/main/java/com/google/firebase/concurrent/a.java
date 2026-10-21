package com.google.firebase.concurrent;

import com.google.firebase.concurrent.DelegatingScheduledFuture;
import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
public final /* synthetic */ class a implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f13236b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f13237e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f13238f;

    public /* synthetic */ a(int i2, Object obj, Object obj2) {
        this.f13236b = i2;
        this.f13237e = obj;
        this.f13238f = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f13236b) {
            case 0:
                ((CustomThreadFactory) this.f13237e).lambda$newThread$0((Runnable) this.f13238f);
                break;
            case 1:
                DelegatingScheduledExecutorService.lambda$schedule$3((Callable) this.f13237e, (DelegatingScheduledFuture.Completer) this.f13238f);
                break;
            default:
                ((LimitedConcurrencyExecutor) this.f13237e).lambda$decorate$0((Runnable) this.f13238f);
                break;
        }
    }
}
