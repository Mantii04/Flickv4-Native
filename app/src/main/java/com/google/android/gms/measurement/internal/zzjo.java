package com.google.android.gms.measurement.internal;

/* loaded from: classes2.dex */
final class zzjo implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ long f11887b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zziy f11888e;

    public zzjo(zziy zziyVar, long j7) {
        this.f11887b = j7;
        this.f11888e = zziyVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zziy zziyVar = this.f11888e;
        zzgr zzgrVar = zziyVar.zzk().f11607l;
        long j7 = this.f11887b;
        zzgrVar.zza(j7);
        zziyVar.zzj().zzc().zza("Session timeout duration set", Long.valueOf(j7));
    }
}
