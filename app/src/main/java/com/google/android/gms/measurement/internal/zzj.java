package com.google.android.gms.measurement.internal;

/* loaded from: classes2.dex */
final class zzj implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ com.google.android.gms.internal.measurement.zzdi f11861b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zzbf f11862e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String f11863f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ AppMeasurementDynamiteService f11864j;

    public zzj(AppMeasurementDynamiteService appMeasurementDynamiteService, com.google.android.gms.internal.measurement.zzdi zzdiVar, zzbf zzbfVar, String str) {
        this.f11861b = zzdiVar;
        this.f11862e = zzbfVar;
        this.f11863f = str;
        this.f11864j = appMeasurementDynamiteService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f11864j.f11147a.zzr().zza(this.f11861b, this.f11862e, this.f11863f);
    }
}
