package com.google.android.gms.measurement.internal;

/* loaded from: classes2.dex */
final class zzht implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzn f11745b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zzhs f11746e;

    public zzht(zzhs zzhsVar, zzn zznVar) {
        this.f11745b = zznVar;
        this.f11746e = zzhsVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzhs zzhsVar = this.f11746e;
        zzhsVar.f11742a.L();
        zzhsVar.f11742a.G(this.f11745b);
    }
}
