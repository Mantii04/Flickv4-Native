package com.google.android.gms.measurement.internal;

/* loaded from: classes2.dex */
final class zzih implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzno f11792b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zzn f11793e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ zzhs f11794f;

    public zzih(zzhs zzhsVar, zzno zznoVar, zzn zznVar) {
        this.f11792b = zznoVar;
        this.f11793e = zznVar;
        this.f11794f = zzhsVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzhs zzhsVar = this.f11794f;
        zzhsVar.f11742a.L();
        zzno zznoVar = this.f11792b;
        Object zza = zznoVar.zza();
        zzn zznVar = this.f11793e;
        if (zza == null) {
            zzhsVar.f11742a.s(zznoVar.f12227e, zznVar);
        } else {
            zzhsVar.f11742a.p(zznoVar, zznVar);
        }
    }
}
