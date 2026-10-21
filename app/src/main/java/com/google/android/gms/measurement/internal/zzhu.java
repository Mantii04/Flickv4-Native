package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes2.dex */
final class zzhu implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzn f11747b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zzhs f11748e;

    public zzhu(zzhs zzhsVar, zzn zznVar) {
        this.f11747b = zznVar;
        this.f11748e = zzhsVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzhs zzhsVar = this.f11748e;
        zzhsVar.f11742a.L();
        zznd zzndVar = zzhsVar.f11742a;
        zzndVar.zzl().zzt();
        zzndVar.M();
        zzn zznVar = this.f11747b;
        Preconditions.checkNotEmpty(zznVar.f12154b);
        zzndVar.d(zznVar);
    }
}
