package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes2.dex */
final class zzlh implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzn f12021b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f12022e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ zzno f12023f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ zzla f12024j;

    public zzlh(zzla zzlaVar, zzn zznVar, boolean z6, zzno zznoVar) {
        this.f12021b = zznVar;
        this.f12022e = z6;
        this.f12023f = zznoVar;
        this.f12024j = zzlaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzla zzlaVar = this.f12024j;
        zzfq zzfqVar = zzlaVar.f12001d;
        if (zzfqVar == null) {
            zzlaVar.zzj().zzg().zza("Discarding data. Failed to set user property");
            return;
        }
        zzn zznVar = this.f12021b;
        Preconditions.checkNotNull(zznVar);
        zzlaVar.a(zzfqVar, this.f12022e ? null : this.f12023f, zznVar);
        zzlaVar.f();
    }
}
