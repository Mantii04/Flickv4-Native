package com.google.android.gms.tasks;

import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
final class zzf<TResult, TContinuationResult> implements OnSuccessListener<TContinuationResult>, OnFailureListener, OnCanceledListener, zzq {

    /* renamed from: b, reason: collision with root package name */
    public final Executor f12316b;

    /* renamed from: e, reason: collision with root package name */
    public final Continuation f12317e;

    /* renamed from: f, reason: collision with root package name */
    public final zzw f12318f;

    public zzf(Executor executor, Continuation continuation, zzw zzwVar) {
        this.f12316b = executor;
        this.f12317e = continuation;
        this.f12318f = zzwVar;
    }

    @Override // com.google.android.gms.tasks.OnCanceledListener
    public final void onCanceled() {
        this.f12318f.zzc();
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    public final void onFailure(Exception exc) {
        this.f12318f.zza(exc);
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public final void onSuccess(TContinuationResult tcontinuationresult) {
        this.f12318f.zzb(tcontinuationresult);
    }

    @Override // com.google.android.gms.tasks.zzq
    public final void zzd(Task task) {
        this.f12316b.execute(new zze(this, task));
    }
}
