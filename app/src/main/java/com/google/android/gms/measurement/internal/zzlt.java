package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes2.dex */
final class zzlt implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzn f12057b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f12058e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ zzac f12059f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ zzla f12060j;

    public zzlt(zzla zzlaVar, zzn zznVar, boolean z6, zzac zzacVar, zzac zzacVar2) {
        this.f12057b = zznVar;
        this.f12058e = z6;
        this.f12059f = zzacVar;
        this.f12060j = zzlaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzla zzlaVar = this.f12060j;
        zzfq zzfqVar = zzlaVar.f12001d;
        if (zzfqVar == null) {
            zzlaVar.zzj().zzg().zza("Discarding data. Failed to send conditional user property to service");
            return;
        }
        zzn zznVar = this.f12057b;
        Preconditions.checkNotNull(zznVar);
        zzlaVar.a(zzfqVar, this.f12058e ? null : this.f12059f, zznVar);
        zzlaVar.f();
    }
}
