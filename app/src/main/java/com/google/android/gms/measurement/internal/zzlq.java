package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes2.dex */
final class zzlq implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzn f12045b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f12046e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ zzbf f12047f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ zzla f12048j;

    public zzlq(zzla zzlaVar, zzn zznVar, boolean z6, zzbf zzbfVar, String str) {
        this.f12045b = zznVar;
        this.f12046e = z6;
        this.f12047f = zzbfVar;
        this.f12048j = zzlaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzla zzlaVar = this.f12048j;
        zzfq zzfqVar = zzlaVar.f12001d;
        if (zzfqVar == null) {
            zzlaVar.zzj().zzg().zza("Discarding data. Failed to send event to service");
            return;
        }
        zzn zznVar = this.f12045b;
        Preconditions.checkNotNull(zznVar);
        zzlaVar.a(zzfqVar, this.f12046e ? null : this.f12047f, zznVar);
        zzlaVar.f();
    }
}
