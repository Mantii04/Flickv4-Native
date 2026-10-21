package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
final class zzkc implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AtomicReference f11929b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zziy f11930e;

    public zzkc(zziy zziyVar, AtomicReference atomicReference) {
        this.f11929b = atomicReference;
        this.f11930e = zziyVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f11929b) {
            try {
                try {
                    this.f11929b.set(Long.valueOf(this.f11930e.zze().zzc(this.f11930e.zzg().a(), zzbh.f11288N)));
                } finally {
                    this.f11929b.notify();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
