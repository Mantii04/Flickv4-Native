package com.google.android.gms.tasks;

import java.util.ArrayDeque;

/* loaded from: classes2.dex */
final class zzr {

    /* renamed from: a, reason: collision with root package name */
    public final Object f12343a = new Object();

    /* renamed from: b, reason: collision with root package name */
    public ArrayDeque f12344b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f12345c;

    public final void zza(zzq zzqVar) {
        synchronized (this.f12343a) {
            try {
                if (this.f12344b == null) {
                    this.f12344b = new ArrayDeque();
                }
                this.f12344b.add(zzqVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzb(Task task) {
        zzq zzqVar;
        synchronized (this.f12343a) {
            if (this.f12344b != null && !this.f12345c) {
                this.f12345c = true;
                while (true) {
                    synchronized (this.f12343a) {
                        try {
                            zzqVar = (zzq) this.f12344b.poll();
                            if (zzqVar == null) {
                                this.f12345c = false;
                                return;
                            }
                        } finally {
                        }
                    }
                    zzqVar.zzd(task);
                }
            }
        }
    }
}
