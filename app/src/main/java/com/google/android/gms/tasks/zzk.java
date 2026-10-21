package com.google.android.gms.tasks;

import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes2.dex */
final class zzk implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Task f12328b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zzl f12329e;

    public zzk(zzl zzlVar, Task task) {
        this.f12329e = zzlVar;
        this.f12328b = task;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f12329e.f12331e) {
            try {
                OnFailureListener onFailureListener = this.f12329e.f12332f;
                if (onFailureListener != null) {
                    onFailureListener.onFailure((Exception) Preconditions.checkNotNull(this.f12328b.getException()));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
