package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
final class zzke implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AtomicReference f11932b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zziy f11933e;

    public zzke(zziy zziyVar, AtomicReference atomicReference) {
        this.f11932b = atomicReference;
        this.f11933e = zziyVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f11932b) {
            try {
                try {
                    this.f11932b.set(Double.valueOf(this.f11933e.zze().zza(this.f11933e.zzg().a(), zzbh.f11292P)));
                } finally {
                    this.f11932b.notify();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
