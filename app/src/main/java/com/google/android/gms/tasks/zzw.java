package com.google.android.gms.tasks;

import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
final class zzw<TResult> extends Task<TResult> {

    /* renamed from: a, reason: collision with root package name */
    public final Object f12347a = new Object();

    /* renamed from: b, reason: collision with root package name */
    public final zzr f12348b = new zzr();

    /* renamed from: c, reason: collision with root package name */
    public boolean f12349c;

    /* renamed from: d, reason: collision with root package name */
    public volatile boolean f12350d;

    /* renamed from: e, reason: collision with root package name */
    public Object f12351e;

    /* renamed from: f, reason: collision with root package name */
    public Exception f12352f;

    public final void a() {
        synchronized (this.f12347a) {
            try {
                if (this.f12349c) {
                    this.f12348b.zzb(this);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.tasks.Task
    public final Task<TResult> addOnCanceledListener(Executor executor, OnCanceledListener onCanceledListener) {
        this.f12348b.zza(new zzh(executor, onCanceledListener));
        a();
        return this;
    }

    @Override // com.google.android.gms.tasks.Task
    public final Task<TResult> addOnCompleteListener(OnCompleteListener<TResult> onCompleteListener) {
        this.f12348b.zza(new zzj(TaskExecutors.f12297a, onCompleteListener));
        a();
        return this;
    }

    @Override // com.google.android.gms.tasks.Task
    public final Task<TResult> addOnFailureListener(OnFailureListener onFailureListener) {
        addOnFailureListener(TaskExecutors.f12297a, onFailureListener);
        return this;
    }

    @Override // com.google.android.gms.tasks.Task
    public final Task<TResult> addOnSuccessListener(OnSuccessListener<? super TResult> onSuccessListener) {
        addOnSuccessListener(TaskExecutors.f12297a, onSuccessListener);
        return this;
    }

    @Override // com.google.android.gms.tasks.Task
    public final <TContinuationResult> Task<TContinuationResult> continueWith(Continuation<TResult, TContinuationResult> continuation) {
        return continueWith(TaskExecutors.f12297a, continuation);
    }

    @Override // com.google.android.gms.tasks.Task
    public final <TContinuationResult> Task<TContinuationResult> continueWithTask(Executor executor, Continuation<TResult, Task<TContinuationResult>> continuation) {
        zzw zzwVar = new zzw();
        this.f12348b.zza(new zzf(executor, continuation, zzwVar));
        a();
        return zzwVar;
    }

    @Override // com.google.android.gms.tasks.Task
    public final Exception getException() {
        Exception exc;
        synchronized (this.f12347a) {
            exc = this.f12352f;
        }
        return exc;
    }

    @Override // com.google.android.gms.tasks.Task
    public final TResult getResult() {
        TResult tresult;
        synchronized (this.f12347a) {
            try {
                Preconditions.checkState(this.f12349c, "Task is not yet complete");
                if (this.f12350d) {
                    throw new CancellationException("Task is already canceled.");
                }
                Exception exc = this.f12352f;
                if (exc != null) {
                    throw new RuntimeExecutionException(exc);
                }
                tresult = (TResult) this.f12351e;
            } catch (Throwable th) {
                throw th;
            }
        }
        return tresult;
    }

    @Override // com.google.android.gms.tasks.Task
    public final boolean isCanceled() {
        return this.f12350d;
    }

    @Override // com.google.android.gms.tasks.Task
    public final boolean isComplete() {
        boolean z6;
        synchronized (this.f12347a) {
            z6 = this.f12349c;
        }
        return z6;
    }

    @Override // com.google.android.gms.tasks.Task
    public final boolean isSuccessful() {
        boolean z6;
        synchronized (this.f12347a) {
            try {
                z6 = false;
                if (this.f12349c && !this.f12350d && this.f12352f == null) {
                    z6 = true;
                }
            } finally {
            }
        }
        return z6;
    }

    @Override // com.google.android.gms.tasks.Task
    public final <TContinuationResult> Task<TContinuationResult> onSuccessTask(SuccessContinuation<TResult, TContinuationResult> successContinuation) {
        Executor executor = TaskExecutors.f12297a;
        zzw zzwVar = new zzw();
        this.f12348b.zza(new zzp(executor, successContinuation, zzwVar));
        a();
        return zzwVar;
    }

    public final void zza(Exception exc) {
        Preconditions.checkNotNull(exc, "Exception must not be null");
        synchronized (this.f12347a) {
            if (this.f12349c) {
                throw DuplicateTaskCompletionException.of(this);
            }
            this.f12349c = true;
            this.f12352f = exc;
        }
        this.f12348b.zzb(this);
    }

    public final void zzb(Object obj) {
        synchronized (this.f12347a) {
            if (this.f12349c) {
                throw DuplicateTaskCompletionException.of(this);
            }
            this.f12349c = true;
            this.f12351e = obj;
        }
        this.f12348b.zzb(this);
    }

    public final boolean zzc() {
        synchronized (this.f12347a) {
            try {
                if (this.f12349c) {
                    return false;
                }
                this.f12349c = true;
                this.f12350d = true;
                this.f12348b.zzb(this);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean zzd(Exception exc) {
        Preconditions.checkNotNull(exc, "Exception must not be null");
        synchronized (this.f12347a) {
            try {
                if (this.f12349c) {
                    return false;
                }
                this.f12349c = true;
                this.f12352f = exc;
                this.f12348b.zzb(this);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean zze(Object obj) {
        synchronized (this.f12347a) {
            try {
                if (this.f12349c) {
                    return false;
                }
                this.f12349c = true;
                this.f12351e = obj;
                this.f12348b.zzb(this);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.tasks.Task
    public final Task<TResult> addOnFailureListener(Executor executor, OnFailureListener onFailureListener) {
        this.f12348b.zza(new zzl(executor, onFailureListener));
        a();
        return this;
    }

    @Override // com.google.android.gms.tasks.Task
    public final Task<TResult> addOnSuccessListener(Executor executor, OnSuccessListener<? super TResult> onSuccessListener) {
        this.f12348b.zza(new zzn(executor, onSuccessListener));
        a();
        return this;
    }

    @Override // com.google.android.gms.tasks.Task
    public final <TContinuationResult> Task<TContinuationResult> continueWith(Executor executor, Continuation<TResult, TContinuationResult> continuation) {
        zzw zzwVar = new zzw();
        this.f12348b.zza(new zzd(executor, continuation, zzwVar));
        a();
        return zzwVar;
    }

    @Override // com.google.android.gms.tasks.Task
    public final Task<TResult> addOnCompleteListener(Executor executor, OnCompleteListener<TResult> onCompleteListener) {
        this.f12348b.zza(new zzj(executor, onCompleteListener));
        a();
        return this;
    }

    @Override // com.google.android.gms.tasks.Task
    public final <TContinuationResult> Task<TContinuationResult> onSuccessTask(Executor executor, SuccessContinuation<TResult, TContinuationResult> successContinuation) {
        zzw zzwVar = new zzw();
        this.f12348b.zza(new zzp(executor, successContinuation, zzwVar));
        a();
        return zzwVar;
    }
}
