package com.google.android.gms.measurement.internal;

import V3.x;

/* loaded from: classes2.dex */
final class zzjn implements x {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzmv f11885a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zziy f11886b;

    public zzjn(zziy zziyVar, zzmv zzmvVar) {
        this.f11885a = zzmvVar;
        this.f11886b = zziyVar;
    }

    @Override // V3.x
    public final void onFailure(Throwable th) {
        zziy zziyVar = this.f11886b;
        zziyVar.zzt();
        zziyVar.f11849i = false;
        zziyVar.k();
        zziyVar.zzj().zzg().zza("registerTriggerAsync failed with throwable", th);
    }

    @Override // V3.x
    public final void onSuccess(Object obj) {
        zziy zziyVar = this.f11886b;
        zziyVar.zzt();
        zziyVar.f11849i = false;
        zziyVar.k();
        zziyVar.zzj().zzc().zza("registerTriggerAsync ran. uri", this.f11885a.f12130b);
    }
}
