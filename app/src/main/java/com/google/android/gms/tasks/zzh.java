package com.google.android.gms.tasks;

import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
final class zzh implements zzq {

    /* renamed from: b, reason: collision with root package name */
    public final Executor f12320b;

    /* renamed from: e, reason: collision with root package name */
    public final Object f12321e = new Object();

    /* renamed from: f, reason: collision with root package name */
    public final OnCanceledListener f12322f;

    public zzh(Executor executor, OnCanceledListener onCanceledListener) {
        this.f12320b = executor;
        this.f12322f = onCanceledListener;
    }

    @Override // com.google.android.gms.tasks.zzq
    public final void zzd(Task task) {
        if (task.isCanceled()) {
            synchronized (this.f12321e) {
                try {
                    if (this.f12322f == null) {
                        return;
                    }
                    this.f12320b.execute(new zzg(this));
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
