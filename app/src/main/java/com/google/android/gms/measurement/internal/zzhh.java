package com.google.android.gms.measurement.internal;

import android.content.Context;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import java.lang.Thread;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public final class zzhh extends zzil {

    /* renamed from: k, reason: collision with root package name */
    public static final AtomicLong f11679k = new AtomicLong(Long.MIN_VALUE);

    /* renamed from: c, reason: collision with root package name */
    public zzhl f11680c;

    /* renamed from: d, reason: collision with root package name */
    public zzhl f11681d;

    /* renamed from: e, reason: collision with root package name */
    public final PriorityBlockingQueue f11682e;

    /* renamed from: f, reason: collision with root package name */
    public final LinkedBlockingQueue f11683f;

    /* renamed from: g, reason: collision with root package name */
    public final Thread.UncaughtExceptionHandler f11684g;

    /* renamed from: h, reason: collision with root package name */
    public final Thread.UncaughtExceptionHandler f11685h;

    /* renamed from: i, reason: collision with root package name */
    public final Object f11686i;

    /* renamed from: j, reason: collision with root package name */
    public final Semaphore f11687j;

    public zzhh(zzho zzhoVar) {
        super(zzhoVar);
        this.f11686i = new Object();
        this.f11687j = new Semaphore(2);
        this.f11682e = new PriorityBlockingQueue();
        this.f11683f = new LinkedBlockingQueue();
        this.f11684g = new zzhj(this, "Thread death: Uncaught exception on worker thread");
        this.f11685h = new zzhj(this, "Thread death: Uncaught exception on network thread");
    }

    public final Object a(AtomicReference atomicReference, long j7, String str, Runnable runnable) {
        synchronized (atomicReference) {
            zzl().zzb(runnable);
            try {
                atomicReference.wait(j7);
            } catch (InterruptedException unused) {
                zzj().zzu().zza("Interrupted waiting for ".concat(str));
                return null;
            }
        }
        Object obj = atomicReference.get();
        if (obj == null) {
            zzj().zzu().zza("Timed out waiting for ".concat(str));
        }
        return obj;
    }

    public final void b(zzhm zzhmVar) {
        synchronized (this.f11686i) {
            try {
                this.f11682e.add(zzhmVar);
                zzhl zzhlVar = this.f11680c;
                if (zzhlVar == null) {
                    zzhl zzhlVar2 = new zzhl(this, "Measurement Worker", this.f11682e);
                    this.f11680c = zzhlVar2;
                    zzhlVar2.setUncaughtExceptionHandler(this.f11684g);
                    this.f11680c.start();
                } else {
                    zzhlVar.zza();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzim, com.google.android.gms.measurement.internal.zzio
    public final /* bridge */ /* synthetic */ Context zza() {
        return super.zza();
    }

    @Override // com.google.android.gms.measurement.internal.zzim, com.google.android.gms.measurement.internal.zzio
    public final /* bridge */ /* synthetic */ Clock zzb() {
        return super.zzb();
    }

    public final void zzc(Runnable runnable) throws IllegalStateException {
        zzac();
        Preconditions.checkNotNull(runnable);
        b(new zzhm(this, runnable, true, "Task exception on worker thread"));
    }

    @Override // com.google.android.gms.measurement.internal.zzim, com.google.android.gms.measurement.internal.zzio
    public final /* bridge */ /* synthetic */ zzad zzd() {
        return super.zzd();
    }

    @Override // com.google.android.gms.measurement.internal.zzim
    public final /* bridge */ /* synthetic */ zzae zze() {
        return super.zze();
    }

    @Override // com.google.android.gms.measurement.internal.zzim
    public final /* bridge */ /* synthetic */ zzaz zzf() {
        return super.zzf();
    }

    public final boolean zzg() {
        return Thread.currentThread() == this.f11680c;
    }

    @Override // com.google.android.gms.measurement.internal.zzim
    public final /* bridge */ /* synthetic */ zzfw zzi() {
        return super.zzi();
    }

    @Override // com.google.android.gms.measurement.internal.zzim, com.google.android.gms.measurement.internal.zzio
    public final /* bridge */ /* synthetic */ zzgb zzj() {
        return super.zzj();
    }

    @Override // com.google.android.gms.measurement.internal.zzim
    public final /* bridge */ /* synthetic */ zzgm zzk() {
        return super.zzk();
    }

    @Override // com.google.android.gms.measurement.internal.zzim, com.google.android.gms.measurement.internal.zzio
    public final /* bridge */ /* synthetic */ zzhh zzl() {
        return super.zzl();
    }

    @Override // com.google.android.gms.measurement.internal.zzil
    public final boolean zzo() {
        return false;
    }

    @Override // com.google.android.gms.measurement.internal.zzim
    public final /* bridge */ /* synthetic */ zznt zzq() {
        return super.zzq();
    }

    @Override // com.google.android.gms.measurement.internal.zzim
    public final void zzr() {
        if (Thread.currentThread() != this.f11681d) {
            throw new IllegalStateException("Call expected from network thread");
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzim
    public final void zzt() {
        if (Thread.currentThread() != this.f11680c) {
            throw new IllegalStateException("Call expected from worker thread");
        }
    }

    public final <V> Future<V> zza(Callable<V> callable) throws IllegalStateException {
        zzac();
        Preconditions.checkNotNull(callable);
        zzhm zzhmVar = new zzhm(this, callable, false);
        if (Thread.currentThread() != this.f11680c) {
            b(zzhmVar);
            return zzhmVar;
        }
        if (!this.f11682e.isEmpty()) {
            zzj().zzu().zza("Callable skipped the worker queue.");
        }
        zzhmVar.run();
        return zzhmVar;
    }

    public final <V> Future<V> zzb(Callable<V> callable) throws IllegalStateException {
        zzac();
        Preconditions.checkNotNull(callable);
        zzhm zzhmVar = new zzhm(this, callable, true);
        if (Thread.currentThread() == this.f11680c) {
            zzhmVar.run();
            return zzhmVar;
        }
        b(zzhmVar);
        return zzhmVar;
    }

    public final void zzb(Runnable runnable) throws IllegalStateException {
        zzac();
        Preconditions.checkNotNull(runnable);
        b(new zzhm(this, runnable, false, "Task exception on worker thread"));
    }

    public final void zza(Runnable runnable) throws IllegalStateException {
        zzac();
        Preconditions.checkNotNull(runnable);
        zzhm zzhmVar = new zzhm(this, runnable, false, "Task exception on network thread");
        synchronized (this.f11686i) {
            try {
                this.f11683f.add(zzhmVar);
                zzhl zzhlVar = this.f11681d;
                if (zzhlVar == null) {
                    zzhl zzhlVar2 = new zzhl(this, "Measurement Network", this.f11683f);
                    this.f11681d = zzhlVar2;
                    zzhlVar2.setUncaughtExceptionHandler(this.f11685h);
                    this.f11681d.start();
                } else {
                    zzhlVar.zza();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
