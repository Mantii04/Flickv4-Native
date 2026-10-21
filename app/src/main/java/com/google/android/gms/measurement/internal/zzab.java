package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzfh;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

/* loaded from: classes2.dex */
abstract class zzab {

    /* renamed from: a, reason: collision with root package name */
    public final String f11158a;

    /* renamed from: b, reason: collision with root package name */
    public final int f11159b;

    /* renamed from: c, reason: collision with root package name */
    public Boolean f11160c;

    /* renamed from: d, reason: collision with root package name */
    public Boolean f11161d;

    /* renamed from: e, reason: collision with root package name */
    public Long f11162e;

    /* renamed from: f, reason: collision with root package name */
    public Long f11163f;

    public zzab(String str, int i2) {
        this.f11158a = str;
        this.f11159b = i2;
    }

    public static Boolean b(long j7, zzfh.zzd zzdVar) {
        try {
            return e(new BigDecimal(j7), zzdVar, FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE);
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    public static Boolean c(Boolean bool, boolean z6) {
        if (bool == null) {
            return null;
        }
        return Boolean.valueOf(bool.booleanValue() != z6);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static Boolean d(String str, zzfh.zzf zzfVar, zzgb zzgbVar) {
        List<String> zzf;
        Preconditions.checkNotNull(zzfVar);
        if (str != null && zzfVar.zzj() && zzfVar.zzb() != zzfh.zzf.zza.UNKNOWN_MATCH_TYPE) {
            zzfh.zzf.zza zzb = zzfVar.zzb();
            zzfh.zzf.zza zzaVar = zzfh.zzf.zza.IN_LIST;
            if (zzb == zzaVar) {
                if (zzfVar.zza() == 0) {
                    return null;
                }
            } else if (!zzfVar.zzi()) {
                return null;
            }
            zzfh.zzf.zza zzb2 = zzfVar.zzb();
            boolean zzg = zzfVar.zzg();
            String zze = (zzg || zzb2 == zzfh.zzf.zza.REGEXP || zzb2 == zzaVar) ? zzfVar.zze() : zzfVar.zze().toUpperCase(Locale.ENGLISH);
            if (zzfVar.zza() == 0) {
                zzf = null;
            } else {
                zzf = zzfVar.zzf();
                if (!zzg) {
                    ArrayList arrayList = new ArrayList(zzf.size());
                    Iterator<String> it = zzf.iterator();
                    while (it.hasNext()) {
                        arrayList.add(it.next().toUpperCase(Locale.ENGLISH));
                    }
                    zzf = Collections.unmodifiableList(arrayList);
                }
            }
            zzfh.zzf.zza zzaVar2 = zzfh.zzf.zza.REGEXP;
            String str2 = zzb2 == zzaVar2 ? zze : null;
            if (zzb2 != zzfh.zzf.zza.IN_LIST ? zze != null : zzf != null && !zzf.isEmpty()) {
                if (!zzg && zzb2 != zzaVar2) {
                    str = str.toUpperCase(Locale.ENGLISH);
                }
                switch (zzv.f12263a[zzb2.ordinal()]) {
                    case 1:
                        if (str2 != null) {
                            try {
                                return Boolean.valueOf(Pattern.compile(str2, zzg ? 0 : 66).matcher(str).matches());
                            } catch (PatternSyntaxException unused) {
                                if (zzgbVar != null) {
                                    zzgbVar.zzu().zza("Invalid regular expression in REGEXP audience filter. expression", str2);
                                    break;
                                }
                            }
                        }
                        break;
                    case 2:
                        return Boolean.valueOf(str.startsWith(zze));
                    case 3:
                        return Boolean.valueOf(str.endsWith(zze));
                    case 4:
                        return Boolean.valueOf(str.contains(zze));
                    case 5:
                        return Boolean.valueOf(str.equals(zze));
                    case 6:
                        if (zzf != null) {
                            return Boolean.valueOf(zzf.contains(str));
                        }
                        break;
                }
            }
        }
        return null;
    }

    public static Boolean e(BigDecimal bigDecimal, zzfh.zzd zzdVar, double d7) {
        BigDecimal bigDecimal2;
        BigDecimal bigDecimal3;
        BigDecimal bigDecimal4;
        Preconditions.checkNotNull(zzdVar);
        if (zzdVar.zzh() && zzdVar.zza() != zzfh.zzd.zzb.UNKNOWN_COMPARISON_TYPE) {
            zzfh.zzd.zzb zza = zzdVar.zza();
            zzfh.zzd.zzb zzbVar = zzfh.zzd.zzb.BETWEEN;
            if (zza != zzbVar ? zzdVar.zzi() : zzdVar.zzl() && zzdVar.zzk()) {
                zzfh.zzd.zzb zza2 = zzdVar.zza();
                try {
                    if (zzdVar.zza() == zzbVar) {
                        if (zznm.F(zzdVar.zzf()) && zznm.F(zzdVar.zze())) {
                            BigDecimal bigDecimal5 = new BigDecimal(zzdVar.zzf());
                            bigDecimal4 = new BigDecimal(zzdVar.zze());
                            bigDecimal3 = bigDecimal5;
                            bigDecimal2 = null;
                        }
                    } else if (zznm.F(zzdVar.zzd())) {
                        bigDecimal2 = new BigDecimal(zzdVar.zzd());
                        bigDecimal3 = null;
                        bigDecimal4 = null;
                    }
                    if (zza2 != zzbVar ? bigDecimal2 != null : bigDecimal3 != null) {
                        int i2 = zzv.f12264b[zza2.ordinal()];
                        if (i2 != 1) {
                            if (i2 != 2) {
                                if (i2 != 3) {
                                    if (i2 == 4 && bigDecimal3 != null) {
                                        if (bigDecimal.compareTo(bigDecimal3) >= 0 && bigDecimal.compareTo(bigDecimal4) <= 0) {
                                            r2 = true;
                                        }
                                        return Boolean.valueOf(r2);
                                    }
                                } else if (bigDecimal2 != null) {
                                    if (d7 == FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
                                        return Boolean.valueOf(bigDecimal.compareTo(bigDecimal2) == 0);
                                    }
                                    if (bigDecimal.compareTo(bigDecimal2.subtract(new BigDecimal(d7).multiply(new BigDecimal(2)))) > 0 && bigDecimal.compareTo(bigDecimal2.add(new BigDecimal(d7).multiply(new BigDecimal(2)))) < 0) {
                                        r2 = true;
                                    }
                                    return Boolean.valueOf(r2);
                                }
                            } else if (bigDecimal2 != null) {
                                return Boolean.valueOf(bigDecimal.compareTo(bigDecimal2) > 0);
                            }
                        } else if (bigDecimal2 != null) {
                            return Boolean.valueOf(bigDecimal.compareTo(bigDecimal2) < 0);
                        }
                    }
                } catch (NumberFormatException unused) {
                }
            }
        }
        return null;
    }

    public abstract int a();

    public abstract boolean f();

    public abstract boolean g();
}
