package com.google.android.gms.measurement;

import android.app.Service;
import android.app.job.JobParameters;
import android.content.Intent;
import android.os.IBinder;
import com.google.android.gms.measurement.internal.zzmf;
import com.google.android.gms.measurement.internal.zzmj;
import l0.AbstractC1204a;

/* loaded from: classes2.dex */
public final class AppMeasurementService extends Service implements zzmj {

    /* renamed from: b, reason: collision with root package name */
    public zzmf f11145b;

    public final zzmf a() {
        if (this.f11145b == null) {
            this.f11145b = new zzmf(this);
        }
        return this.f11145b;
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return a().zza(intent);
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        a().zza();
    }

    @Override // android.app.Service
    public final void onDestroy() {
        a().zzb();
        super.onDestroy();
    }

    @Override // android.app.Service
    public final void onRebind(Intent intent) {
        a().zzb(intent);
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i2, int i7) {
        return a().zza(intent, i2, i7);
    }

    @Override // android.app.Service
    public final boolean onUnbind(Intent intent) {
        return a().zzc(intent);
    }

    @Override // com.google.android.gms.measurement.internal.zzmj
    public final void zza(Intent intent) {
        AbstractC1204a.completeWakefulIntent(intent);
    }

    @Override // com.google.android.gms.measurement.internal.zzmj
    public final void zza(JobParameters jobParameters, boolean z6) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.measurement.internal.zzmj
    public final boolean zza(int i2) {
        return stopSelfResult(i2);
    }
}
