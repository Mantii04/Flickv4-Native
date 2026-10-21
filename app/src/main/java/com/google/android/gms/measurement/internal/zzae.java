package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.ProcessUtils;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.measurement.zzpl;
import cz.msebera.android.httpclient.client.config.CookieSpecs;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes2.dex */
public final class zzae extends zzim {

    /* renamed from: b, reason: collision with root package name */
    public Boolean f11175b;

    /* renamed from: c, reason: collision with root package name */
    public String f11176c;

    /* renamed from: d, reason: collision with root package name */
    public zzag f11177d;

    /* renamed from: e, reason: collision with root package name */
    public Boolean f11178e;

    public static long zzh() {
        return ((Long) zzbh.f11324e.zza(null)).longValue();
    }

    public static long zzm() {
        return ((Long) zzbh.f11270E.zza(null)).longValue();
    }

    public final int a(String str, boolean z6) {
        if (!zzpl.zza() || !zze().zzf(null, zzbh.f11301T0)) {
            return 100;
        }
        if (z6) {
            return zza(str, zzbh.f11298S, 100, 500);
        }
        return 500;
    }

    public final String b(String str) {
        try {
            String str2 = (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class, String.class).invoke(null, str, "");
            Preconditions.checkNotNull(str2);
            return str2;
        } catch (ClassNotFoundException e3) {
            zzj().zzg().zza("Could not find SystemProperties class", e3);
            return "";
        } catch (IllegalAccessException e7) {
            zzj().zzg().zza("Could not access SystemProperties.get()", e7);
            return "";
        } catch (NoSuchMethodException e8) {
            zzj().zzg().zza("Could not find SystemProperties.get() method", e8);
            return "";
        } catch (InvocationTargetException e9) {
            zzj().zzg().zza("SystemProperties.get() threw an exception", e9);
            return "";
        }
    }

    public final Boolean c(String str) {
        Preconditions.checkNotEmpty(str);
        Bundle d7 = d();
        if (d7 == null) {
            zzj().zzg().zza("Failed to load metadata: Metadata bundle is null");
            return null;
        }
        if (d7.containsKey(str)) {
            return Boolean.valueOf(d7.getBoolean(str));
        }
        return null;
    }

    public final Bundle d() {
        try {
            if (zza().getPackageManager() == null) {
                zzj().zzg().zza("Failed to load metadata: PackageManager is null");
                return null;
            }
            ApplicationInfo applicationInfo = Wrappers.packageManager(zza()).getApplicationInfo(zza().getPackageName(), 128);
            if (applicationInfo != null) {
                return applicationInfo.metaData;
            }
            zzj().zzg().zza("Failed to load metadata: ApplicationInfo is null");
            return null;
        } catch (PackageManager.NameNotFoundException e3) {
            zzj().zzg().zza("Failed to load metadata: Package name not found", e3);
            return null;
        }
    }

    public final double zza(String str, zzfo<Double> zzfoVar) {
        if (str == null) {
            return zzfoVar.zza(null).doubleValue();
        }
        String zza = this.f11177d.zza(str, zzfoVar.zza());
        if (TextUtils.isEmpty(zza)) {
            return zzfoVar.zza(null).doubleValue();
        }
        try {
            return zzfoVar.zza(Double.valueOf(Double.parseDouble(zza))).doubleValue();
        } catch (NumberFormatException unused) {
            return zzfoVar.zza(null).doubleValue();
        }
    }

    public final int zzb(String str) {
        return zza(str, zzbh.f11280J, 25, 100);
    }

    public final int zzc(String str) {
        return zzb(str, zzbh.f11346p);
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

    public final int zzg() {
        return zzq().zza(201500000, true) ? 100 : 25;
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

    public final String zzn() {
        return b("debug.firebase.analytics.app");
    }

    public final String zzo() {
        return b("debug.deferred.deeplink");
    }

    public final String zzp() {
        return this.f11176c;
    }

    @Override // com.google.android.gms.measurement.internal.zzim
    public final /* bridge */ /* synthetic */ zznt zzq() {
        return super.zzq();
    }

    @Override // com.google.android.gms.measurement.internal.zzim
    public final /* bridge */ /* synthetic */ void zzt() {
        super.zzt();
    }

    public final boolean zzu() {
        Boolean c7 = c("google_analytics_adid_collection_enabled");
        return c7 == null || c7.booleanValue();
    }

    public final boolean zzv() {
        Boolean c7 = c("google_analytics_automatic_screen_reporting_enabled");
        return c7 == null || c7.booleanValue();
    }

    public final boolean zzw() {
        Boolean c7 = c("firebase_analytics_collection_deactivated");
        return c7 != null && c7.booleanValue();
    }

    public final boolean zzx() {
        if (this.f11175b == null) {
            Boolean c7 = c("app_measurement_lite");
            this.f11175b = c7;
            if (c7 == null) {
                this.f11175b = Boolean.FALSE;
            }
        }
        return this.f11175b.booleanValue() || !this.f11804a.zzag();
    }

    public final boolean zzy() {
        if (this.f11178e == null) {
            synchronized (this) {
                try {
                    if (this.f11178e == null) {
                        ApplicationInfo applicationInfo = zza().getApplicationInfo();
                        String myProcessName = ProcessUtils.getMyProcessName();
                        if (applicationInfo != null) {
                            String str = applicationInfo.processName;
                            this.f11178e = Boolean.valueOf(str != null && str.equals(myProcessName));
                        }
                        if (this.f11178e == null) {
                            this.f11178e = Boolean.TRUE;
                            zzj().zzg().zza("My process not in the list of running processes");
                        }
                    }
                } finally {
                }
            }
        }
        return this.f11178e.booleanValue();
    }

    public final int zzb(String str, zzfo<Integer> zzfoVar) {
        if (str == null) {
            return zzfoVar.zza(null).intValue();
        }
        String zza = this.f11177d.zza(str, zzfoVar.zza());
        if (TextUtils.isEmpty(zza)) {
            return zzfoVar.zza(null).intValue();
        }
        try {
            return zzfoVar.zza(Integer.valueOf(Integer.parseInt(zza))).intValue();
        } catch (NumberFormatException unused) {
            return zzfoVar.zza(null).intValue();
        }
    }

    public final long zzc(String str, zzfo<Long> zzfoVar) {
        if (str == null) {
            return zzfoVar.zza(null).longValue();
        }
        String zza = this.f11177d.zza(str, zzfoVar.zza());
        if (TextUtils.isEmpty(zza)) {
            return zzfoVar.zza(null).longValue();
        }
        try {
            return zzfoVar.zza(Long.valueOf(Long.parseLong(zza))).longValue();
        } catch (NumberFormatException unused) {
            return zzfoVar.zza(null).longValue();
        }
    }

    public final String zzd(String str, zzfo<String> zzfoVar) {
        return str == null ? zzfoVar.zza(null) : zzfoVar.zza(this.f11177d.zza(str, zzfoVar.zza()));
    }

    public final zzip zze(String str) {
        Object obj;
        Preconditions.checkNotEmpty(str);
        Bundle d7 = d();
        if (d7 == null) {
            zzj().zzg().zza("Failed to load metadata: Metadata bundle is null");
            obj = null;
        } else {
            obj = d7.get(str);
        }
        zzip zzipVar = zzip.f11805b;
        if (obj == null) {
            return zzipVar;
        }
        if (Boolean.TRUE.equals(obj)) {
            return zzip.f11808j;
        }
        if (Boolean.FALSE.equals(obj)) {
            return zzip.f11807f;
        }
        if (CookieSpecs.DEFAULT.equals(obj)) {
            return zzip.f11806e;
        }
        zzj().zzu().zza("Invalid manifest metadata for", str);
        return zzipVar;
    }

    public final boolean zzf(String str, zzfo<Boolean> zzfoVar) {
        if (str == null) {
            return zzfoVar.zza(null).booleanValue();
        }
        String zza = this.f11177d.zza(str, zzfoVar.zza());
        return TextUtils.isEmpty(zza) ? zzfoVar.zza(null).booleanValue() : zzfoVar.zza(Boolean.valueOf("1".equals(zza))).booleanValue();
    }

    public final void zzi(String str) {
        this.f11176c = str;
    }

    public final boolean zzk(String str) {
        return "1".equals(this.f11177d.zza(str, "gaia_collection_enabled"));
    }

    public final boolean zzl(String str) {
        return "1".equals(this.f11177d.zza(str, "measurement.event_sampling_enabled"));
    }

    public final int zza(String str, zzfo<Integer> zzfoVar, int i2, int i7) {
        return Math.max(Math.min(zzb(str, zzfoVar), i7), i2);
    }

    @Override // com.google.android.gms.measurement.internal.zzim, com.google.android.gms.measurement.internal.zzio
    public final /* bridge */ /* synthetic */ Clock zzb() {
        return super.zzb();
    }

    @Override // com.google.android.gms.measurement.internal.zzim, com.google.android.gms.measurement.internal.zzio
    public final /* bridge */ /* synthetic */ Context zza() {
        return super.zza();
    }

    public final boolean zze(String str, zzfo<Boolean> zzfoVar) {
        return zzf(str, zzfoVar);
    }

    public final boolean zza(zzfo<Boolean> zzfoVar) {
        return zzf(null, zzfoVar);
    }
}
