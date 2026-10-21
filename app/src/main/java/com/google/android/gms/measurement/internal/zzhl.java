package com.google.android.gms.measurement.internal;

import android.os.Process;
import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes2.dex */
final class zzhl extends Thread {

    /* renamed from: b, reason: collision with root package name */
    public final Object f11692b;

    /* renamed from: e, reason: collision with root package name */
    public final BlockingQueue f11693e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f11694f = false;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ zzhh f11695j;

    public zzhl(zzhh zzhhVar, String str, BlockingQueue<zzhm<?>> blockingQueue) {
        this.f11695j = zzhhVar;
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(blockingQueue);
        this.f11692b = new Object();
        this.f11693e = blockingQueue;
        setName(str);
    }

    public final void a(InterruptedException interruptedException) {
        this.f11695j.zzj().zzu().zza(getName() + " was interrupted", interruptedException);
    }

    public final void b() {
        synchronized (this.f11695j.f11686i) {
            try {
                if (!this.f11694f) {
                    this.f11695j.f11687j.release();
                    this.f11695j.f11686i.notifyAll();
                    zzhh zzhhVar = this.f11695j;
                    if (this == zzhhVar.f11680c) {
                        zzhhVar.f11680c = null;
                    } else if (this == zzhhVar.f11681d) {
                        zzhhVar.f11681d = null;
                    } else {
                        zzhhVar.zzj().zzg().zza("Current scheduler thread is neither worker nor network");
                    }
                    this.f11694f = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        boolean z6 = false;
        while (!z6) {
            try {
                this.f11695j.f11687j.acquire();
                z6 = true;
            } catch (InterruptedException e3) {
                a(e3);
            }
        }
        try {
            int threadPriority = Process.getThreadPriority(Process.myTid());
            while (true) {
                zzhm zzhmVar = (zzhm) this.f11693e.poll();
                if (zzhmVar != null) {
                    Process.setThreadPriority(zzhmVar.f11697e ? threadPriority : 10);
                    zzhmVar.run();
                } else {
                    synchronized (this.f11692b) {
                        if (this.f11693e.peek() == null) {
                            zzhh zzhhVar = this.f11695j;
                            AtomicLong atomicLong = zzhh.f11679k;
                            zzhhVar.getClass();
                            try {
                                this.f11692b.wait(30000L);
                            } catch (InterruptedException e7) {
                                a(e7);
                            }
                        }
                    }
                    synchronized (this.f11695j.f11686i) {
                        if (this.f11693e.peek() == null) {
                            b();
                            b();
                            return;
                        }
                    }
                }
            }
        } catch (Throwable th) {
            b();
            throw th;
        }
    }

    public final void zza() {
        synchronized (this.f11692b) {
            this.f11692b.notifyAll();
        }
    }
}
