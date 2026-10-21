package com.google.android.gms.measurement.internal;

import android.annotation.TargetApi;
import android.app.job.JobParameters;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzmj;

/* loaded from: classes2.dex */
public final class zzmf<T extends Context & zzmj> {

    /* renamed from: a, reason: collision with root package name */
    public final Context f12098a;

    public zzmf(T t6) {
        Preconditions.checkNotNull(t6);
        this.f12098a = t6;
    }

    public final zzgb a() {
        return zzho.zza(this.f12098a, null, null).zzj();
    }

    public final int zza(final Intent intent, int i2, final int i7) {
        Context context = this.f12098a;
        final zzgb zzj = zzho.zza(context, null, null).zzj();
        if (intent == null) {
            zzj.zzu().zza("AppMeasurementService started with null intent");
            return 2;
        }
        String action = intent.getAction();
        zzj.zzp().zza("Local AppMeasurementService called. startId, action", Integer.valueOf(i7), action);
        if ("com.google.android.gms.measurement.UPLOAD".equals(action)) {
            Runnable runnable = new Runnable() { // from class: com.google.android.gms.measurement.internal.zzmh
                @Override // java.lang.Runnable
                public final void run() {
                    zzmf zzmfVar = zzmf.this;
                    zzmj zzmjVar = (zzmj) zzmfVar.f12098a;
                    int i8 = i7;
                    if (zzmjVar.zza(i8)) {
                        zzj.zzp().zza("Local AppMeasurementService processed last upload request. StartId", Integer.valueOf(i8));
                        zzmfVar.a().zzp().zza("Completed wakeful intent.");
                        zzmjVar.zza(intent);
                    }
                }
            };
            zznd zza = zznd.zza(context);
            zza.zzl().zzb(new zzmg(zza, runnable));
        }
        return 2;
    }

    public final void zzb() {
        zzho.zza(this.f12098a, null, null).zzj().zzp().zza("Local AppMeasurementService is shutting down");
    }

    public final boolean zzc(Intent intent) {
        if (intent == null) {
            a().zzg().zza("onUnbind called with null intent");
            return true;
        }
        a().zzp().zza("onUnbind called for intent. action", intent.getAction());
        return true;
    }

    public final void zzb(Intent intent) {
        if (intent == null) {
            a().zzg().zza("onRebind called with null intent");
        } else {
            a().zzp().zza("onRebind called. action", intent.getAction());
        }
    }

    public final IBinder zza(Intent intent) {
        if (intent == null) {
            a().zzg().zza("onBind called with null intent");
            return null;
        }
        String action = intent.getAction();
        if ("com.google.android.gms.measurement.START".equals(action)) {
            return new zzhs(zznd.zza(this.f12098a));
        }
        a().zzu().zza("onBind received unknown action", action);
        return null;
    }

    public final void zza() {
        zzho.zza(this.f12098a, null, null).zzj().zzp().zza("Local AppMeasurementService is starting up");
    }

    @TargetApi(24)
    public final boolean zza(final JobParameters jobParameters) {
        Context context = this.f12098a;
        final zzgb zzj = zzho.zza(context, null, null).zzj();
        String string = jobParameters.getExtras().getString("action");
        zzj.zzp().zza("Local AppMeasurementJobService called. action", string);
        if (!"com.google.android.gms.measurement.UPLOAD".equals(string)) {
            return true;
        }
        Runnable runnable = new Runnable() { // from class: com.google.android.gms.measurement.internal.zzme
            @Override // java.lang.Runnable
            public final void run() {
                zzmf zzmfVar = zzmf.this;
                zzmfVar.getClass();
                zzj.zzp().zza("AppMeasurementJobService processed last upload request.");
                ((zzmj) zzmfVar.f12098a).zza(jobParameters, false);
            }
        };
        zznd zza = zznd.zza(context);
        zza.zzl().zzb(new zzmg(zza, runnable));
        return true;
    }
}
