package com.google.android.gms.measurement.internal;

/* loaded from: classes2.dex */
final class zzkz implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ long f11996b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zzkv f11997e;

    public zzkz(zzkv zzkvVar, long j7) {
        this.f11996b = j7;
        this.f11997e = zzkvVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzkv zzkvVar = this.f11997e;
        zzkvVar.zzc().zza(this.f11996b);
        zzkvVar.f11979e = null;
    }
}
