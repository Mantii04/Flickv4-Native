package com.google.android.gms.tasks;

/* loaded from: classes2.dex */
final class zzm implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Task f12333b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zzn f12334e;

    public zzm(zzn zznVar, Task task) {
        this.f12334e = zznVar;
        this.f12333b = task;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f12334e.f12336e) {
            try {
                OnSuccessListener onSuccessListener = this.f12334e.f12337f;
                if (onSuccessListener != null) {
                    onSuccessListener.onSuccess(this.f12333b.getResult());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
