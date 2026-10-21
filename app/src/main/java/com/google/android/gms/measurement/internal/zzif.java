package com.google.android.gms.measurement.internal;

/* loaded from: classes2.dex */
final class zzif implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzbf f11786b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f11787e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ zzhs f11788f;

    public zzif(zzhs zzhsVar, zzbf zzbfVar, String str) {
        this.f11786b = zzbfVar;
        this.f11787e = str;
        this.f11788f = zzhsVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzhs zzhsVar = this.f11788f;
        zzhsVar.f11742a.L();
        zzhsVar.f11742a.m(this.f11786b, this.f11787e);
    }
}
