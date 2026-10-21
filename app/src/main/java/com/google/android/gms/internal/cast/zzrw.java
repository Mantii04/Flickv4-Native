package com.google.android.gms.internal.cast;

import A.i;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.LockSupport;

/* loaded from: classes2.dex */
abstract class zzrw extends AtomicReference implements Runnable {
    private static final Runnable zza = new zzrv(null);
    private static final Runnable zzb = new zzrv(null);

    private final void zzg(Thread thread) {
        Runnable runnable = (Runnable) get();
        zzrt zzrtVar = null;
        boolean z6 = false;
        int i2 = 0;
        while (true) {
            if (!(runnable instanceof zzrt)) {
                if (runnable != zzb) {
                    break;
                }
            } else {
                zzrtVar = (zzrt) runnable;
            }
            i2++;
            if (i2 > 1000) {
                Runnable runnable2 = zzb;
                if (runnable == runnable2 || compareAndSet(runnable, runnable2)) {
                    z6 = Thread.interrupted() || z6;
                    LockSupport.park(zzrtVar);
                }
            } else {
                Thread.yield();
            }
            runnable = (Runnable) get();
        }
        if (z6) {
            thread.interrupt();
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        Thread currentThread = Thread.currentThread();
        Object obj = null;
        if (compareAndSet(null, currentThread)) {
            boolean zzf = zzf();
            if (!zzf) {
                try {
                    obj = zza();
                } catch (Throwable th) {
                    try {
                        if (th instanceof InterruptedException) {
                            Thread.currentThread().interrupt();
                        }
                        if (!compareAndSet(currentThread, zza)) {
                            zzg(currentThread);
                        }
                        zzc(th);
                        return;
                    } catch (Throwable th2) {
                        if (!compareAndSet(currentThread, zza)) {
                            zzg(currentThread);
                        }
                        zzd(null);
                        throw th2;
                    }
                }
            }
            if (!compareAndSet(currentThread, zza)) {
                zzg(currentThread);
            }
            if (zzf) {
                return;
            }
            zzd(obj);
        }
    }

    @Override // java.util.concurrent.atomic.AtomicReference
    public final String toString() {
        Runnable runnable = (Runnable) get();
        return i.C(runnable == zza ? "running=[DONE]" : runnable instanceof zzrt ? "running=[INTERRUPTED]" : runnable instanceof Thread ? i.l("running=[RUNNING ON ", ((Thread) runnable).getName(), "]") : "running=[NOT STARTED YET]", ", ", zzb());
    }

    public abstract Object zza() throws Exception;

    public abstract String zzb();

    public abstract void zzc(Throwable th);

    public abstract void zzd(Object obj);

    public final void zze() {
        Runnable runnable = (Runnable) get();
        if (runnable instanceof Thread) {
            zzrt zzrtVar = new zzrt(this, null);
            zzrtVar.setExclusiveOwnerThread(Thread.currentThread());
            if (compareAndSet(runnable, zzrtVar)) {
                try {
                    Thread thread = (Thread) runnable;
                    thread.interrupt();
                    if (((Runnable) getAndSet(zza)) == zzb) {
                        LockSupport.unpark(thread);
                    }
                } catch (Throwable th) {
                    if (((Runnable) getAndSet(zza)) == zzb) {
                        LockSupport.unpark((Thread) runnable);
                    }
                    throw th;
                }
            }
        }
    }

    public abstract boolean zzf();
}
