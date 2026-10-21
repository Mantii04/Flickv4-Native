package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
final class zzjx implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ long f11910b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zziy f11911e;

    public zzjx(zziy zziyVar, long j7) {
        this.f11910b = j7;
        this.f11911e = zziyVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        long j7 = this.f11910b;
        zziy zziyVar = this.f11911e;
        zziyVar.b(j7, true);
        zziyVar.zzo().zza(new AtomicReference<>());
    }
}
