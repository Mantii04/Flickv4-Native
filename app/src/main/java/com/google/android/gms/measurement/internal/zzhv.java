package com.google.android.gms.measurement.internal;

/* loaded from: classes2.dex */
final class zzhv implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzac f11749b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zzn f11750e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ zzhs f11751f;

    public zzhv(zzhs zzhsVar, zzac zzacVar, zzn zznVar) {
        this.f11749b = zzacVar;
        this.f11750e = zznVar;
        this.f11751f = zzhsVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzhs zzhsVar = this.f11751f;
        zzhsVar.f11742a.L();
        zzac zzacVar = this.f11749b;
        Object zza = zzacVar.f11166f.zza();
        zzn zznVar = this.f11750e;
        if (zza == null) {
            zzhsVar.f11742a.k(zzacVar, zznVar);
        } else {
            zzhsVar.f11742a.B(zzacVar, zznVar);
        }
    }
}
