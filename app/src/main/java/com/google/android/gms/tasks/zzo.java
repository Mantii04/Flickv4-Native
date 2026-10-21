package com.google.android.gms.tasks;

import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
final class zzo implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Task f12338b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zzp f12339e;

    public zzo(zzp zzpVar, Task task) {
        this.f12339e = zzpVar;
        this.f12338b = task;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzp zzpVar = this.f12339e;
        try {
            Task then = zzpVar.f12341e.then(this.f12338b.getResult());
            if (then == null) {
                zzpVar.onFailure(new NullPointerException("Continuation returned null"));
                return;
            }
            Executor executor = TaskExecutors.f12298b;
            then.addOnSuccessListener(executor, zzpVar);
            then.addOnFailureListener(executor, zzpVar);
            then.addOnCanceledListener(executor, zzpVar);
        } catch (RuntimeExecutionException e3) {
            if (e3.getCause() instanceof Exception) {
                zzpVar.onFailure((Exception) e3.getCause());
            } else {
                zzpVar.onFailure(e3);
            }
        } catch (CancellationException unused) {
            zzpVar.onCanceled();
        } catch (Exception e7) {
            zzpVar.onFailure(e7);
        }
    }
}
