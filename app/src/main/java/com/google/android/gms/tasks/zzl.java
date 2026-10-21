package com.google.android.gms.tasks;

import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
final class zzl implements zzq {

    /* renamed from: b, reason: collision with root package name */
    public final Executor f12330b;

    /* renamed from: e, reason: collision with root package name */
    public final Object f12331e = new Object();

    /* renamed from: f, reason: collision with root package name */
    public final OnFailureListener f12332f;

    public zzl(Executor executor, OnFailureListener onFailureListener) {
        this.f12330b = executor;
        this.f12332f = onFailureListener;
    }

    @Override // com.google.android.gms.tasks.zzq
    public final void zzd(Task task) {
        if (task.isSuccessful() || task.isCanceled()) {
            return;
        }
        synchronized (this.f12331e) {
            try {
                if (this.f12332f == null) {
                    return;
                }
                this.f12330b.execute(new zzk(this, task));
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
