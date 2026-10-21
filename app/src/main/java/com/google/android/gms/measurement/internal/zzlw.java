package com.google.android.gms.measurement.internal;

/* loaded from: classes2.dex */
final class zzlw implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzfq f12073b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zzlx f12074e;

    public zzlw(zzlx zzlxVar, zzfq zzfqVar) {
        this.f12073b = zzfqVar;
        this.f12074e = zzlxVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f12074e) {
            try {
                this.f12074e.f12075a = false;
                if (!this.f12074e.f12077c.zzah()) {
                    this.f12074e.f12077c.zzj().zzp().zza("Connected to service");
                    this.f12074e.f12077c.zza(this.f12073b);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
