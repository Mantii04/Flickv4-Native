package com.google.android.gms.measurement.internal;

/* loaded from: classes2.dex */
final class zzm implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ com.google.android.gms.internal.measurement.zzdi f12082b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ AppMeasurementDynamiteService f12083e;

    public zzm(AppMeasurementDynamiteService appMeasurementDynamiteService, com.google.android.gms.internal.measurement.zzdi zzdiVar) {
        this.f12082b = zzdiVar;
        this.f12083e = appMeasurementDynamiteService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AppMeasurementDynamiteService appMeasurementDynamiteService = this.f12083e;
        appMeasurementDynamiteService.f11147a.zzt().zza(this.f12082b, appMeasurementDynamiteService.f11147a.zzab());
    }
}
