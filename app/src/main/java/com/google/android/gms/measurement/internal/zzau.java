package com.google.android.gms.measurement.internal;

/* loaded from: classes2.dex */
final class zzau implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzio f11217b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zzav f11218e;

    public zzau(zzav zzavVar, zzio zzioVar) {
        this.f11217b = zzioVar;
        this.f11218e = zzavVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f11217b.zzd();
        if (zzad.zza()) {
            this.f11217b.zzl().zzb(this);
            return;
        }
        boolean zzc = this.f11218e.zzc();
        this.f11218e.f11222c = 0L;
        if (zzc) {
            this.f11218e.zzb();
        }
    }
}
