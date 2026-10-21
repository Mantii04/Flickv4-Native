package com.google.android.gms.measurement.internal;

import com.google.android.gms.measurement.internal.AppMeasurementDynamiteService;

/* loaded from: classes2.dex */
final class zzl implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AppMeasurementDynamiteService.zza f11998b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ AppMeasurementDynamiteService f11999e;

    public zzl(AppMeasurementDynamiteService appMeasurementDynamiteService, AppMeasurementDynamiteService.zza zzaVar) {
        this.f11998b = zzaVar;
        this.f11999e = appMeasurementDynamiteService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f11999e.f11147a.zzp().zza(this.f11998b);
    }
}
