package com.google.android.gms.tasks;

/* loaded from: classes2.dex */
final class zzi implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Task f12323b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zzj f12324e;

    public zzi(zzj zzjVar, Task task) {
        this.f12324e = zzjVar;
        this.f12323b = task;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f12324e.f12326e) {
            try {
                OnCompleteListener onCompleteListener = this.f12324e.f12327f;
                if (onCompleteListener != null) {
                    onCompleteListener.onComplete(this.f12323b);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
