package com.google.android.gms.measurement;

import android.annotation.TargetApi;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.content.Intent;
import com.google.android.gms.measurement.internal.zzmf;
import com.google.android.gms.measurement.internal.zzmj;

@TargetApi(24)
/* loaded from: classes2.dex */
public final class AppMeasurementJobService extends JobService implements zzmj {

    /* renamed from: b, reason: collision with root package name */
    public zzmf f11143b;

    public final zzmf a() {
        if (this.f11143b == null) {
            this.f11143b = new zzmf(this);
        }
        return this.f11143b;
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

    @Override // android.app.job.JobService
    public final boolean onStartJob(JobParameters jobParameters) {
        return a().zza(jobParameters);
    }

    @Override // android.app.job.JobService
    public final boolean onStopJob(JobParameters jobParameters) {
        return false;
    }

    @Override // android.app.Service
    public final boolean onUnbind(Intent intent) {
        return a().zzc(intent);
    }

    @Override // com.google.android.gms.measurement.internal.zzmj
    public final void zza(Intent intent) {
    }

    @Override // com.google.android.gms.measurement.internal.zzmj
    @TargetApi(24)
    public final void zza(JobParameters jobParameters, boolean z6) {
        jobFinished(jobParameters, false);
    }

    @Override // com.google.android.gms.measurement.internal.zzmj
    public final boolean zza(int i2) {
        throw new UnsupportedOperationException();
    }
}
