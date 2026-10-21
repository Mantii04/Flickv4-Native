package com.google.android.gms.measurement.internal;

/* loaded from: classes2.dex */
final class zzky implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzks f11993b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ long f11994e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ zzkv f11995f;

    public zzky(zzkv zzkvVar, zzks zzksVar, long j7) {
        this.f11993b = zzksVar;
        this.f11994e = j7;
        this.f11995f = zzkvVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzkv zzkvVar = this.f11995f;
        zzkvVar.d(this.f11993b, false, this.f11994e);
        zzkvVar.f11979e = null;
        zzkvVar.zzo().zza((zzks) null);
    }
}
