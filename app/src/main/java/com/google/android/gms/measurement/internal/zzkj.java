package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzqk;

/* loaded from: classes2.dex */
final class zzkj implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zziq f11945b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ long f11946e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ long f11947f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ boolean f11948j;

    /* renamed from: m, reason: collision with root package name */
    public final /* synthetic */ zziq f11949m;

    /* renamed from: n, reason: collision with root package name */
    public final /* synthetic */ zziy f11950n;

    public zzkj(zziy zziyVar, zziq zziqVar, long j7, long j8, boolean z6, zziq zziqVar2) {
        this.f11945b = zziqVar;
        this.f11946e = j7;
        this.f11947f = j8;
        this.f11948j = z6;
        this.f11949m = zziqVar2;
        this.f11950n = zziyVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zziy zziyVar = this.f11950n;
        zziq zziqVar = this.f11945b;
        zziyVar.e(zziqVar);
        zziyVar.b(this.f11946e, false);
        zziy.f(this.f11950n, this.f11945b, this.f11947f, true, this.f11948j);
        if (zzqk.zza() && zziyVar.zze().zza(zzbh.f11351r0)) {
            zziy.g(zziyVar, zziqVar, this.f11949m);
        }
    }
}
