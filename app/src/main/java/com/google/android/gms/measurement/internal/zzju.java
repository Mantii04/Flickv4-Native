package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
final class zzju implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AtomicReference f11905b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zziy f11906e;

    public zzju(zziy zziyVar, AtomicReference atomicReference) {
        this.f11905b = atomicReference;
        this.f11906e = zziyVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f11905b) {
            try {
                try {
                    AtomicReference atomicReference = this.f11905b;
                    zzae zze = this.f11906e.zze();
                    String a7 = this.f11906e.zzg().a();
                    zze.getClass();
                    atomicReference.set(zze.zzd(a7, zzbh.f11286M));
                } finally {
                    this.f11905b.notify();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
