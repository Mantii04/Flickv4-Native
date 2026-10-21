package com.google.android.gms.tasks;

import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
final class zzj implements zzq {

    /* renamed from: b, reason: collision with root package name */
    public final Executor f12325b;

    /* renamed from: e, reason: collision with root package name */
    public final Object f12326e = new Object();

    /* renamed from: f, reason: collision with root package name */
    public final OnCompleteListener f12327f;

    public zzj(Executor executor, OnCompleteListener onCompleteListener) {
        this.f12325b = executor;
        this.f12327f = onCompleteListener;
    }

    @Override // com.google.android.gms.tasks.zzq
    public final void zzd(Task task) {
        synchronized (this.f12326e) {
            try {
                if (this.f12327f == null) {
                    return;
                }
                this.f12325b.execute(new zzi(this, task));
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
