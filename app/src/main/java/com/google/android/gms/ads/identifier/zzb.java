package com.google.android.gms.ads.identifier;

import com.google.android.gms.common.util.VisibleForTesting;
import java.lang.ref.WeakReference;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

@VisibleForTesting
/* loaded from: classes.dex */
final class zzb extends Thread {

    /* renamed from: b, reason: collision with root package name */
    public final WeakReference f9525b;

    /* renamed from: e, reason: collision with root package name */
    public final long f9526e;

    /* renamed from: f, reason: collision with root package name */
    public final CountDownLatch f9527f = new CountDownLatch(1);

    /* renamed from: j, reason: collision with root package name */
    public boolean f9528j = false;

    public zzb(AdvertisingIdClient advertisingIdClient, long j7) {
        this.f9525b = new WeakReference(advertisingIdClient);
        this.f9526e = j7;
        start();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        AdvertisingIdClient advertisingIdClient;
        WeakReference weakReference = this.f9525b;
        try {
            if (this.f9527f.await(this.f9526e, TimeUnit.MILLISECONDS) || (advertisingIdClient = (AdvertisingIdClient) weakReference.get()) == null) {
                return;
            }
            advertisingIdClient.zza();
            this.f9528j = true;
        } catch (InterruptedException unused) {
            AdvertisingIdClient advertisingIdClient2 = (AdvertisingIdClient) weakReference.get();
            if (advertisingIdClient2 != null) {
                advertisingIdClient2.zza();
                this.f9528j = true;
            }
        }
    }
}
