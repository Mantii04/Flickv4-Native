package com.google.android.gms.measurement.internal;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.PersistableBundle;
import com.google.android.gms.common.util.Clock;

/* loaded from: classes2.dex */
public final class zzmx extends zzmy {

    /* renamed from: d, reason: collision with root package name */
    public final AlarmManager f12134d;

    /* renamed from: e, reason: collision with root package name */
    public zzmw f12135e;

    /* renamed from: f, reason: collision with root package name */
    public Integer f12136f;

    public zzmx(zznd zzndVar) {
        super(zzndVar);
        this.f12134d = (AlarmManager) zza().getSystemService("alarm");
    }

    public final int a() {
        if (this.f12136f == null) {
            this.f12136f = Integer.valueOf(("measurement" + zza().getPackageName()).hashCode());
        }
        return this.f12136f.intValue();
    }

    public final PendingIntent b() {
        Context zza = zza();
        return com.google.android.gms.internal.measurement.zzco.zza(zza, 0, new Intent().setClassName(zza, "com.google.android.gms.measurement.AppMeasurementReceiver").setAction("com.google.android.gms.measurement.UPLOAD"), com.google.android.gms.internal.measurement.zzco.zza);
    }

    public final zzav c() {
        if (this.f12135e == null) {
            this.f12135e = new zzmw(this, this.f12138b.f12193l);
        }
        return this.f12135e;
    }

    @Override // com.google.android.gms.measurement.internal.zzmz
    public final /* bridge */ /* synthetic */ zznm g_() {
        return super.g_();
    }

    @Override // com.google.android.gms.measurement.internal.zzim, com.google.android.gms.measurement.internal.zzio
    public final /* bridge */ /* synthetic */ Context zza() {
        return super.zza();
    }

    @Override // com.google.android.gms.measurement.internal.zzim, com.google.android.gms.measurement.internal.zzio
    public final /* bridge */ /* synthetic */ Clock zzb() {
        return super.zzb();
    }

    @Override // com.google.android.gms.measurement.internal.zzmy
    public final boolean zzc() {
        JobScheduler jobScheduler;
        AlarmManager alarmManager = this.f12134d;
        if (alarmManager != null) {
            alarmManager.cancel(b());
        }
        if (Build.VERSION.SDK_INT < 24 || (jobScheduler = (JobScheduler) zza().getSystemService("jobscheduler")) == null) {
            return false;
        }
        jobScheduler.cancel(a());
        return false;
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

    @Override // com.google.android.gms.measurement.internal.zzmz
    public final /* bridge */ /* synthetic */ zzan zzh() {
        return super.zzh();
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

    @Override // com.google.android.gms.measurement.internal.zzmz
    public final /* bridge */ /* synthetic */ zzmd zzn() {
        return super.zzn();
    }

    @Override // com.google.android.gms.measurement.internal.zzim
    public final /* bridge */ /* synthetic */ zznt zzq() {
        return super.zzq();
    }

    @Override // com.google.android.gms.measurement.internal.zzim
    public final /* bridge */ /* synthetic */ void zzt() {
        super.zzt();
    }

    public final void zzu() {
        JobScheduler jobScheduler;
        zzak();
        zzj().zzp().zza("Unscheduling upload");
        AlarmManager alarmManager = this.f12134d;
        if (alarmManager != null) {
            alarmManager.cancel(b());
        }
        c().a();
        if (Build.VERSION.SDK_INT < 24 || (jobScheduler = (JobScheduler) zza().getSystemService("jobscheduler")) == null) {
            return;
        }
        jobScheduler.cancel(a());
    }

    public final void zza(long j7) {
        zzak();
        Context zza = zza();
        if (!zznt.q(zza)) {
            zzj().zzc().zza("Receiver not registered/enabled");
        }
        if (!zznt.B(zza)) {
            zzj().zzc().zza("Service not registered/enabled");
        }
        zzu();
        zzj().zzp().zza("Scheduling upload, millis", Long.valueOf(j7));
        long elapsedRealtime = zzb().elapsedRealtime() + j7;
        if (j7 < Math.max(0L, ((Long) zzbh.f11364y.zza(null)).longValue()) && !c().zzc()) {
            c().zza(j7);
        }
        if (Build.VERSION.SDK_INT < 24) {
            AlarmManager alarmManager = this.f12134d;
            if (alarmManager != null) {
                alarmManager.setInexactRepeating(2, elapsedRealtime, Math.max(((Long) zzbh.f11354t.zza(null)).longValue(), j7), b());
                return;
            }
            return;
        }
        Context zza2 = zza();
        ComponentName componentName = new ComponentName(zza2, "com.google.android.gms.measurement.AppMeasurementJobService");
        int a7 = a();
        PersistableBundle persistableBundle = new PersistableBundle();
        persistableBundle.putString("action", "com.google.android.gms.measurement.UPLOAD");
        com.google.android.gms.internal.measurement.zzcn.zza(zza2, new JobInfo.Builder(a7, componentName).setMinimumLatency(j7).setOverrideDeadline(j7 << 1).setExtras(persistableBundle).build(), "com.google.android.gms", "UploadAlarm");
    }
}
