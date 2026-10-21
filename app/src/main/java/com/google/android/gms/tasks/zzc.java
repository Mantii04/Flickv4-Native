package com.google.android.gms.tasks;

/* loaded from: classes2.dex */
final class zzc implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Task f12309b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zzd f12310e;

    public zzc(zzd zzdVar, Task task) {
        this.f12310e = zzdVar;
        this.f12309b = task;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Task task = this.f12309b;
        boolean isCanceled = task.isCanceled();
        zzd zzdVar = this.f12310e;
        zzw zzwVar = zzdVar.f12313f;
        if (isCanceled) {
            zzwVar.zzc();
            return;
        }
        try {
            zzwVar.zzb(zzdVar.f12312e.then(task));
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
