package com.google.android.gms.tasks;

import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
final class zzn implements zzq {

    /* renamed from: b, reason: collision with root package name */
    public final Executor f12335b;

    /* renamed from: e, reason: collision with root package name */
    public final Object f12336e = new Object();

    /* renamed from: f, reason: collision with root package name */
    public final OnSuccessListener f12337f;

    public zzn(Executor executor, OnSuccessListener onSuccessListener) {
        this.f12335b = executor;
        this.f12337f = onSuccessListener;
    }

    @Override // com.google.android.gms.tasks.zzq
    public final void zzd(Task task) {
        if (task.isSuccessful()) {
            synchronized (this.f12336e) {
                try {
                    if (this.f12337f == null) {
                        return;
                    }
                    this.f12335b.execute(new zzm(this, task));
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
