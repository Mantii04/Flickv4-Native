package com.google.android.gms.measurement.internal;

import A.i;
import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.internal.measurement.zzoz;

/* loaded from: classes2.dex */
public final class zzgb extends zzil {

    /* renamed from: c, reason: collision with root package name */
    public char f11560c;

    /* renamed from: d, reason: collision with root package name */
    public long f11561d;

    /* renamed from: e, reason: collision with root package name */
    public String f11562e;

    /* renamed from: f, reason: collision with root package name */
    public final zzgd f11563f;

    /* renamed from: g, reason: collision with root package name */
    public final zzgd f11564g;

    /* renamed from: h, reason: collision with root package name */
    public final zzgd f11565h;

    /* renamed from: i, reason: collision with root package name */
    public final zzgd f11566i;

    /* renamed from: j, reason: collision with root package name */
    public final zzgd f11567j;

    /* renamed from: k, reason: collision with root package name */
    public final zzgd f11568k;

    /* renamed from: l, reason: collision with root package name */
    public final zzgd f11569l;

    /* renamed from: m, reason: collision with root package name */
    public final zzgd f11570m;

    /* renamed from: n, reason: collision with root package name */
    public final zzgd f11571n;

    public zzgb(zzho zzhoVar) {
        super(zzhoVar);
        this.f11560c = (char) 0;
        this.f11561d = -1L;
        this.f11563f = new zzgd(this, 6, false, false);
        this.f11564g = new zzgd(this, 6, true, false);
        this.f11565h = new zzgd(this, 6, false, true);
        this.f11566i = new zzgd(this, 5, false, false);
        this.f11567j = new zzgd(this, 5, true, false);
        this.f11568k = new zzgd(this, 5, false, true);
        this.f11569l = new zzgd(this, 4, false, false);
        this.f11570m = new zzgd(this, 3, false, false);
        this.f11571n = new zzgd(this, 2, false, false);
    }

    public static String a(Object obj, boolean z6) {
        String className;
        if (obj == null) {
            return "";
        }
        if (obj instanceof Integer) {
            obj = Long.valueOf(((Integer) obj).intValue());
        }
        int i2 = 0;
        if (obj instanceof Long) {
            if (!z6) {
                return String.valueOf(obj);
            }
            Long l7 = (Long) obj;
            if (Math.abs(l7.longValue()) < 100) {
                return String.valueOf(obj);
            }
            String str = String.valueOf(obj).charAt(0) == '-' ? "-" : "";
            String valueOf = String.valueOf(Math.abs(l7.longValue()));
            return str + Math.round(Math.pow(10.0d, valueOf.length() - 1)) + "..." + str + Math.round(Math.pow(10.0d, valueOf.length()) - 1.0d);
        }
        if (obj instanceof Boolean) {
            return String.valueOf(obj);
        }
        if (!(obj instanceof Throwable)) {
            return obj instanceof zzgc ? ((zzgc) obj).f11572a : z6 ? "-" : String.valueOf(obj);
        }
        Throwable th = (Throwable) obj;
        StringBuilder sb = new StringBuilder(z6 ? th.getClass().getName() : th.toString());
        String c7 = c(zzho.class.getCanonicalName());
        StackTraceElement[] stackTrace = th.getStackTrace();
        int length = stackTrace.length;
        while (true) {
            if (i2 >= length) {
                break;
            }
            StackTraceElement stackTraceElement = stackTrace[i2];
            if (!stackTraceElement.isNativeMethod() && (className = stackTraceElement.getClassName()) != null && c(className).equals(c7)) {
                sb.append(": ");
                sb.append(stackTraceElement);
                break;
            }
            i2++;
        }
        return sb.toString();
    }

    public static String b(boolean z6, String str, Object obj, Object obj2, Object obj3) {
        String str2 = "";
        if (str == null) {
            str = "";
        }
        String a7 = a(obj, z6);
        String a8 = a(obj2, z6);
        String a9 = a(obj3, z6);
        StringBuilder sb = new StringBuilder();
        if (!TextUtils.isEmpty(str)) {
            sb.append(str);
            str2 = ": ";
        }
        String str3 = ", ";
        if (!TextUtils.isEmpty(a7)) {
            sb.append(str2);
            sb.append(a7);
            str2 = ", ";
        }
        if (TextUtils.isEmpty(a8)) {
            str3 = str2;
        } else {
            sb.append(str2);
            sb.append(a8);
        }
        if (!TextUtils.isEmpty(a9)) {
            sb.append(str3);
            sb.append(a9);
        }
        return sb.toString();
    }

    public static String c(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        int lastIndexOf = str.lastIndexOf(46);
        return lastIndexOf == -1 ? (zzoz.zza() && ((Boolean) zzbh.f11263A0.zza(null)).booleanValue()) ? "" : str : str.substring(0, lastIndexOf);
    }

    public final String d() {
        String str;
        synchronized (this) {
            try {
                if (this.f11562e == null) {
                    this.f11562e = this.f11804a.zzw() != null ? this.f11804a.zzw() : "FA";
                }
                Preconditions.checkNotNull(this.f11562e);
                str = this.f11562e;
            } catch (Throwable th) {
                throw th;
            }
        }
        return str;
    }

    @Override // com.google.android.gms.measurement.internal.zzim, com.google.android.gms.measurement.internal.zzio
    public final /* bridge */ /* synthetic */ Context zza() {
        return super.zza();
    }

    @Override // com.google.android.gms.measurement.internal.zzim, com.google.android.gms.measurement.internal.zzio
    public final /* bridge */ /* synthetic */ Clock zzb() {
        return super.zzb();
    }

    public final zzgd zzc() {
        return this.f11570m;
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

    public final zzgd zzg() {
        return this.f11563f;
    }

    public final zzgd zzh() {
        return this.f11565h;
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

    public final zzgd zzm() {
        return this.f11564g;
    }

    public final zzgd zzn() {
        return this.f11569l;
    }

    @Override // com.google.android.gms.measurement.internal.zzil
    public final boolean zzo() {
        return false;
    }

    public final zzgd zzp() {
        return this.f11571n;
    }

    @Override // com.google.android.gms.measurement.internal.zzim
    public final /* bridge */ /* synthetic */ zznt zzq() {
        return super.zzq();
    }

    @Override // com.google.android.gms.measurement.internal.zzim
    public final /* bridge */ /* synthetic */ void zzt() {
        super.zzt();
    }

    public final zzgd zzu() {
        return this.f11566i;
    }

    public final zzgd zzv() {
        return this.f11568k;
    }

    public final zzgd zzw() {
        return this.f11567j;
    }

    public final String zzx() {
        Pair<String, Long> zza;
        if (zzk().f11601f == null || (zza = zzk().f11601f.zza()) == null || zza == zzgm.f11597A) {
            return null;
        }
        return i.C(String.valueOf(zza.second), ":", (String) zza.first);
    }

    public static Object zza(String str) {
        if (str == null) {
            return null;
        }
        return new zzgc(str);
    }

    public final void zza(int i2, boolean z6, boolean z7, String str, Object obj, Object obj2, Object obj3) {
        if (!z6 && zza(i2)) {
            zza(i2, b(false, str, obj, obj2, obj3));
        }
        if (z7 || i2 < 5) {
            return;
        }
        Preconditions.checkNotNull(str);
        zzhh zzhhVar = this.f11804a.f11719j;
        if (zzhhVar == null) {
            zza(6, "Scheduler not set. Not logging error/warn");
            return;
        }
        if (!zzhhVar.f11803b) {
            zza(6, "Scheduler not initialized. Not logging error/warn");
            return;
        }
        if (i2 < 0) {
            i2 = 0;
        }
        if (i2 >= 9) {
            i2 = 8;
        }
        zzhhVar.zzb(new zzga(this, i2, str, obj, obj2, obj3));
    }

    public final void zza(int i2, String str) {
        Log.println(i2, d(), str);
    }

    public final boolean zza(int i2) {
        return Log.isLoggable(d(), i2);
    }
}
