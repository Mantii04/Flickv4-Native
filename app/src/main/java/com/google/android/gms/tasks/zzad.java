package com.google.android.gms.tasks;

import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
final class zzad<T> implements zzae<T> {

    /* renamed from: b, reason: collision with root package name */
    public final CountDownLatch f12300b = new CountDownLatch(1);

    private zzad() {
    }

    @Override // com.google.android.gms.tasks.OnCanceledListener
    public final void onCanceled() {
        this.f12300b.countDown();
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    public final void onFailure(Exception exc) {
        this.f12300b.countDown();
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public final void onSuccess(T t6) {
        this.f12300b.countDown();
    }

    public final void zza() throws InterruptedException {
        this.f12300b.await();
    }

    public final boolean zzb(long j7, TimeUnit timeUnit) throws InterruptedException {
        return this.f12300b.await(j7, timeUnit);
    }

    public /* synthetic */ zzad(int i2) {
    }
}
