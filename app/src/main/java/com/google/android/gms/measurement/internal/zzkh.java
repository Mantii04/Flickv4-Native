package com.google.android.gms.measurement.internal;

/* loaded from: classes2.dex */
final class zzkh implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Boolean f11938b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zziy f11939e;

    public zzkh(zziy zziyVar, Boolean bool) {
        this.f11938b = bool;
        this.f11939e = zziyVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f11939e.h(this.f11938b, true);
    }
}
