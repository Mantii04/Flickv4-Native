package com.google.android.gms.measurement.internal;

/* loaded from: classes2.dex */
final class zzly implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzfq f12078b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zzlx f12079e;

    public zzly(zzlx zzlxVar, zzfq zzfqVar) {
        this.f12078b = zzfqVar;
        this.f12079e = zzlxVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f12079e) {
            try {
                this.f12079e.f12075a = false;
                if (!this.f12079e.f12077c.zzah()) {
                    this.f12079e.f12077c.zzj().zzc().zza("Connected to remote service");
                    this.f12079e.f12077c.zza(this.f12078b);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
