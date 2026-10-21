package com.google.android.gms.tasks;

import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
final class zzp<TResult, TContinuationResult> implements OnSuccessListener<TContinuationResult>, OnFailureListener, OnCanceledListener, zzq {

    /* renamed from: b, reason: collision with root package name */
    public final Executor f12340b;

    /* renamed from: e, reason: collision with root package name */
    public final SuccessContinuation f12341e;

    /* renamed from: f, reason: collision with root package name */
    public final zzw f12342f;

    public zzp(Executor executor, SuccessContinuation successContinuation, zzw zzwVar) {
        this.f12340b = executor;
        this.f12341e = successContinuation;
        this.f12342f = zzwVar;
    }

    @Override // com.google.android.gms.tasks.OnCanceledListener
    public final void onCanceled() {
        this.f12342f.zzc();
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    public final void onFailure(Exception exc) {
        this.f12342f.zza(exc);
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public final void onSuccess(TContinuationResult tcontinuationresult) {
        this.f12342f.zzb(tcontinuationresult);
    }

    @Override // com.google.android.gms.tasks.zzq
    public final void zzd(Task task) {
        this.f12340b.execute(new zzo(this, task));
    }
}
