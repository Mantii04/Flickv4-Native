package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
final class zzkf implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AtomicReference f11934b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zziy f11935e;

    public zzkf(zziy zziyVar, AtomicReference atomicReference) {
        this.f11934b = atomicReference;
        this.f11935e = zziyVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f11934b) {
            try {
                try {
                    this.f11934b.set(Integer.valueOf(this.f11935e.zze().zzb(this.f11935e.zzg().a(), zzbh.f11290O)));
                } finally {
                    this.f11934b.notify();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
