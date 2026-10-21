package com.google.android.gms.measurement.internal;

/* loaded from: classes2.dex */
final class zze implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ long f11441b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zza f11442e;

    public zze(zza zzaVar, long j7) {
        this.f11441b = j7;
        this.f11442e = zzaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f11442e.c(this.f11441b);
    }
}
