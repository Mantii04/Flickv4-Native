package com.google.android.gms.measurement.internal;

/* loaded from: classes2.dex */
final class zzjm implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f11883b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zziy f11884e;

    public zzjm(zziy zziyVar, boolean z6) {
        this.f11883b = z6;
        this.f11884e = zziyVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zziy zziyVar = this.f11884e;
        boolean zzac = zziyVar.f11804a.zzac();
        boolean zzab = zziyVar.f11804a.zzab();
        zzho zzhoVar = zziyVar.f11804a;
        boolean z6 = this.f11883b;
        zzhoVar.f11702A = Boolean.valueOf(z6);
        if (zzab == z6) {
            zziyVar.f11804a.zzj().zzp().zza("Default data collection state already set to", Boolean.valueOf(z6));
        }
        if (zziyVar.f11804a.zzac() == zzac || zziyVar.f11804a.zzac() != zziyVar.f11804a.zzab()) {
            zziyVar.f11804a.zzj().zzv().zza("Default data collection is different than actual status", Boolean.valueOf(z6), Boolean.valueOf(zzac));
        }
        zziyVar.m();
    }
}
