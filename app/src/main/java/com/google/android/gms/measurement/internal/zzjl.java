package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
final class zzjl implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AtomicReference f11881b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zziy f11882e;

    public zzjl(zziy zziyVar, AtomicReference atomicReference) {
        this.f11881b = atomicReference;
        this.f11882e = zziyVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f11881b) {
            try {
                try {
                    AtomicReference atomicReference = this.f11881b;
                    zzae zze = this.f11882e.zze();
                    String a7 = this.f11882e.zzg().a();
                    zze.getClass();
                    atomicReference.set(Boolean.valueOf(zze.zzf(a7, zzbh.f11284L)));
                } finally {
                    this.f11881b.notify();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
