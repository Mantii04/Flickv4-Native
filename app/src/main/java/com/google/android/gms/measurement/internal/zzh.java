package com.google.android.gms.measurement.internal;

/* loaded from: classes2.dex */
final class zzh implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ com.google.android.gms.internal.measurement.zzdi f11665b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ AppMeasurementDynamiteService f11666e;

    public zzh(AppMeasurementDynamiteService appMeasurementDynamiteService, com.google.android.gms.internal.measurement.zzdi zzdiVar) {
        this.f11665b = zzdiVar;
        this.f11666e = appMeasurementDynamiteService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f11666e.f11147a.zzr().zza(this.f11665b);
    }
}
