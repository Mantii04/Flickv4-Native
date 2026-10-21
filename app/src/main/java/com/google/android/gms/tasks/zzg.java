package com.google.android.gms.tasks;

/* loaded from: classes2.dex */
final class zzg implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzh f12319b;

    public zzg(zzh zzhVar) {
        this.f12319b = zzhVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f12319b.f12321e) {
            try {
                OnCanceledListener onCanceledListener = this.f12319b.f12322f;
                if (onCanceledListener != null) {
                    onCanceledListener.onCanceled();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
