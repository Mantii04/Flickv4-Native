package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzqk;

/* loaded from: classes2.dex */
final class zzki implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zziq f11940b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ long f11941e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ boolean f11942f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ zziq f11943j;

    /* renamed from: m, reason: collision with root package name */
    public final /* synthetic */ zziy f11944m;

    public zzki(zziy zziyVar, zziq zziqVar, long j7, boolean z6, zziq zziqVar2) {
        this.f11940b = zziqVar;
        this.f11941e = j7;
        this.f11942f = z6;
        this.f11943j = zziqVar2;
        this.f11944m = zziyVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zziy zziyVar = this.f11944m;
        zziq zziqVar = this.f11940b;
        zziyVar.e(zziqVar);
        zziy.f(this.f11944m, this.f11940b, this.f11941e, false, this.f11942f);
        if (zzqk.zza() && zziyVar.zze().zza(zzbh.f11351r0)) {
            zziy.g(zziyVar, zziqVar, this.f11943j);
        }
    }
}
