package com.google.android.gms.measurement.internal;

/* loaded from: classes2.dex */
final class zzi implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ com.google.android.gms.internal.measurement.zzdi f11767b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f11768e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String f11769f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ boolean f11770j;

    /* renamed from: m, reason: collision with root package name */
    public final /* synthetic */ AppMeasurementDynamiteService f11771m;

    public zzi(AppMeasurementDynamiteService appMeasurementDynamiteService, com.google.android.gms.internal.measurement.zzdi zzdiVar, String str, String str2, boolean z6) {
        this.f11767b = zzdiVar;
        this.f11768e = str;
        this.f11769f = str2;
        this.f11770j = z6;
        this.f11771m = appMeasurementDynamiteService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f11771m.f11147a.zzr().zza(this.f11767b, this.f11768e, this.f11769f, this.f11770j);
    }
}
