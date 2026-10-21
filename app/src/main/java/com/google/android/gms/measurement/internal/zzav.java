package com.google.android.gms.measurement.internal;

import android.os.Handler;
import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes2.dex */
abstract class zzav {

    /* renamed from: d, reason: collision with root package name */
    public static volatile com.google.android.gms.internal.measurement.zzdc f11219d;

    /* renamed from: a, reason: collision with root package name */
    public final zzio f11220a;

    /* renamed from: b, reason: collision with root package name */
    public final Runnable f11221b;

    /* renamed from: c, reason: collision with root package name */
    public volatile long f11222c;

    public zzav(zzio zzioVar) {
        Preconditions.checkNotNull(zzioVar);
        this.f11220a = zzioVar;
        this.f11221b = new zzau(this, zzioVar);
    }

    public final void a() {
        this.f11222c = 0L;
        b().removeCallbacks(this.f11221b);
    }

    public final Handler b() {
        com.google.android.gms.internal.measurement.zzdc zzdcVar;
        if (f11219d != null) {
            return f11219d;
        }
        synchronized (zzav.class) {
            try {
                if (f11219d == null) {
                    f11219d = new com.google.android.gms.internal.measurement.zzdc(this.f11220a.zza().getMainLooper());
                }
                zzdcVar = f11219d;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzdcVar;
    }

    public final void zza(long j7) {
        a();
        if (j7 >= 0) {
            this.f11222c = this.f11220a.zzb().currentTimeMillis();
            if (b().postDelayed(this.f11221b, j7)) {
                return;
            }
            this.f11220a.zzj().zzg().zza("Failed to schedule delayed post. time", Long.valueOf(j7));
        }
    }

    public abstract void zzb();

    public final boolean zzc() {
        return this.f11222c != 0;
    }
}
