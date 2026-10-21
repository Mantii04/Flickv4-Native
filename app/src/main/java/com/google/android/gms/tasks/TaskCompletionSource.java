package com.google.android.gms.tasks;

/* loaded from: classes2.dex */
public class TaskCompletionSource<TResult> {

    /* renamed from: a, reason: collision with root package name */
    public final zzw f12296a = new zzw();

    public Task<TResult> getTask() {
        return this.f12296a;
    }

    public void setException(Exception exc) {
        this.f12296a.zza(exc);
    }

    public void setResult(TResult tresult) {
        this.f12296a.zzb(tresult);
    }

    public boolean trySetException(Exception exc) {
        return this.f12296a.zzd(exc);
    }

    public boolean trySetResult(TResult tresult) {
        return this.f12296a.zze(tresult);
    }
}
