package com.google.android.gms.measurement.internal;

/* loaded from: classes2.dex */
final class zzk implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ com.google.android.gms.internal.measurement.zzdi f11918b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f11919e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String f11920f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ AppMeasurementDynamiteService f11921j;

    public zzk(AppMeasurementDynamiteService appMeasurementDynamiteService, com.google.android.gms.internal.measurement.zzdi zzdiVar, String str, String str2) {
        this.f11918b = zzdiVar;
        this.f11919e = str;
        this.f11920f = str2;
        this.f11921j = appMeasurementDynamiteService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f11921j.f11147a.zzr().zza(this.f11918b, this.f11919e, this.f11920f);
    }
}
