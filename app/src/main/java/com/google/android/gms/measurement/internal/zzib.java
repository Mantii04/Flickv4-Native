package com.google.android.gms.measurement.internal;

/* loaded from: classes2.dex */
final class zzib implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzn f11776b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zzhs f11777e;

    public zzib(zzhs zzhsVar, zzn zznVar) {
        this.f11776b = zznVar;
        this.f11777e = zzhsVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzhs zzhsVar = this.f11777e;
        zzhsVar.f11742a.L();
        zzhsVar.f11742a.I(this.f11776b);
    }
}
