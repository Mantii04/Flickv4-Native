package com.google.android.gms.measurement.internal;

/* loaded from: classes2.dex */
final class zzkx implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzks f11988b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zzks f11989e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ long f11990f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ boolean f11991j;

    /* renamed from: m, reason: collision with root package name */
    public final /* synthetic */ zzkv f11992m;

    public zzkx(zzkv zzkvVar, zzks zzksVar, zzks zzksVar2, long j7, boolean z6) {
        this.f11988b = zzksVar;
        this.f11989e = zzksVar2;
        this.f11990f = j7;
        this.f11991j = z6;
        this.f11992m = zzkvVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f11992m.c(this.f11988b, this.f11989e, this.f11990f, this.f11991j, null);
    }
}
