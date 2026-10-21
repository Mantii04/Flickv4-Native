package com.google.android.gms.tasks;

import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
final class zze implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Task f12314b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zzf f12315e;

    public zze(zzf zzfVar, Task task) {
        this.f12315e = zzfVar;
        this.f12314b = task;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzf zzfVar = this.f12315e;
        zzw zzwVar = zzfVar.f12318f;
        try {
            Task task = (Task) zzfVar.f12317e.then(this.f12314b);
            if (task == null) {
                zzfVar.onFailure(new NullPointerException("Continuation returned null"));
                return;
            }
            Executor executor = TaskExecutors.f12298b;
            task.addOnSuccessListener(executor, zzfVar);
            task.addOnFailureListener(executor, zzfVar);
            task.addOnCanceledListener(executor, zzfVar);
        } catch (RuntimeExecutionException e3) {
            if (e3.getCause() instanceof Exception) {
                zzwVar.zza((Exception) e3.getCause());
            } else {
                zzwVar.zza(e3);
            }
        } catch (Exception e7) {
            zzwVar.zza(e7);
        }
    }
}
