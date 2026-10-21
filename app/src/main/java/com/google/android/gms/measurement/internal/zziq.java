package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import cz.msebera.android.httpclient.client.config.CookieSpecs;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zziq {

    /* renamed from: c, reason: collision with root package name */
    public static final zziq f11810c = new zziq(null, null, 100);

    /* renamed from: a, reason: collision with root package name */
    public final EnumMap f11811a;

    /* renamed from: b, reason: collision with root package name */
    public final int f11812b;

    public enum zza {
        AD_STORAGE("ad_storage"),
        ANALYTICS_STORAGE("analytics_storage"),
        AD_USER_DATA("ad_user_data"),
        AD_PERSONALIZATION("ad_personalization");


        /* renamed from: b, reason: collision with root package name */
        public final String f11818b;

        zza(String str) {
            this.f11818b = str;
        }
    }

    public zziq(EnumMap enumMap, int i2) {
        EnumMap enumMap2 = new EnumMap(zza.class);
        this.f11811a = enumMap2;
        enumMap2.putAll(enumMap);
        this.f11812b = i2;
    }

    public static char a(zzip zzipVar) {
        if (zzipVar == null) {
            return '-';
        }
        int ordinal = zzipVar.ordinal();
        if (ordinal == 1) {
            return '+';
        }
        if (ordinal != 2) {
            return ordinal != 3 ? '-' : '1';
        }
        return '0';
    }

    public static zzip b(char c7) {
        return c7 != '+' ? c7 != '0' ? c7 != '1' ? zzip.f11805b : zzip.f11808j : zzip.f11807f : zzip.f11806e;
    }

    public static zzip c(String str) {
        zzip zzipVar = zzip.f11805b;
        return str == null ? zzipVar : str.equals("granted") ? zzip.f11808j : str.equals("denied") ? zzip.f11807f : zzipVar;
    }

    public static String d(int i2) {
        return i2 != -30 ? i2 != -20 ? i2 != -10 ? i2 != 0 ? i2 != 30 ? i2 != 90 ? i2 != 100 ? "OTHER" : "UNKNOWN" : "REMOTE_CONFIG" : "1P_INIT" : "1P_API" : "MANIFEST" : "API" : "TCF";
    }

    public static boolean zza(int i2, int i7) {
        if (i2 == -20 && i7 == -30) {
            return true;
        }
        return (i2 == -30 && i7 == -20) || i2 == i7 || i2 < i7;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zziq)) {
            return false;
        }
        zziq zziqVar = (zziq) obj;
        for (zza zzaVar : zzir.STORAGE.f11822b) {
            if (this.f11811a.get(zzaVar) != zziqVar.f11811a.get(zzaVar)) {
                return false;
            }
        }
        return this.f11812b == zziqVar.f11812b;
    }

    public final int hashCode() {
        int i2 = this.f11812b * 17;
        Iterator it = this.f11811a.values().iterator();
        while (it.hasNext()) {
            i2 = (i2 * 31) + ((zzip) it.next()).hashCode();
        }
        return i2;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("source=");
        sb.append(d(this.f11812b));
        for (zza zzaVar : zzir.STORAGE.f11822b) {
            sb.append(",");
            sb.append(zzaVar.f11818b);
            sb.append("=");
            zzip zzipVar = (zzip) this.f11811a.get(zzaVar);
            if (zzipVar == null) {
                sb.append("uninitialized");
            } else {
                int ordinal = zzipVar.ordinal();
                if (ordinal == 0) {
                    sb.append("uninitialized");
                } else if (ordinal == 1) {
                    sb.append(CookieSpecs.DEFAULT);
                } else if (ordinal == 2) {
                    sb.append("denied");
                } else if (ordinal == 3) {
                    sb.append("granted");
                }
            }
        }
        return sb.toString();
    }

    public final Bundle zzb() {
        Bundle bundle = new Bundle();
        for (Map.Entry entry : this.f11811a.entrySet()) {
            int ordinal = ((zzip) entry.getValue()).ordinal();
            String str = ordinal != 2 ? ordinal != 3 ? null : "granted" : "denied";
            if (str != null) {
                bundle.putString(((zza) entry.getKey()).f11818b, str);
            }
        }
        return bundle;
    }

    public final zzip zzc() {
        zzip zzipVar = (zzip) this.f11811a.get(zza.AD_STORAGE);
        return zzipVar == null ? zzip.f11805b : zzipVar;
    }

    public final zzip zzd() {
        zzip zzipVar = (zzip) this.f11811a.get(zza.ANALYTICS_STORAGE);
        return zzipVar == null ? zzip.f11805b : zzipVar;
    }

    public final Boolean zze() {
        zzip zzipVar = (zzip) this.f11811a.get(zza.AD_STORAGE);
        if (zzipVar == null) {
            return null;
        }
        int ordinal = zzipVar.ordinal();
        if (ordinal != 1) {
            if (ordinal == 2) {
                return Boolean.FALSE;
            }
            if (ordinal != 3) {
                return null;
            }
        }
        return Boolean.TRUE;
    }

    public final Boolean zzf() {
        zzip zzipVar = (zzip) this.f11811a.get(zza.ANALYTICS_STORAGE);
        if (zzipVar == null) {
            return null;
        }
        int ordinal = zzipVar.ordinal();
        if (ordinal != 1) {
            if (ordinal == 2) {
                return Boolean.FALSE;
            }
            if (ordinal != 3) {
                return null;
            }
        }
        return Boolean.TRUE;
    }

    public final String zzg() {
        int ordinal;
        StringBuilder sb = new StringBuilder("G1");
        for (zza zzaVar : zzir.STORAGE.zza()) {
            zzip zzipVar = (zzip) this.f11811a.get(zzaVar);
            char c7 = '-';
            if (zzipVar != null && (ordinal = zzipVar.ordinal()) != 0) {
                if (ordinal != 1) {
                    if (ordinal == 2) {
                        c7 = '0';
                    } else if (ordinal != 3) {
                    }
                }
                c7 = '1';
            }
            sb.append(c7);
        }
        return sb.toString();
    }

    public final String zzh() {
        StringBuilder sb = new StringBuilder("G1");
        for (zza zzaVar : zzir.STORAGE.zza()) {
            sb.append(a((zzip) this.f11811a.get(zzaVar)));
        }
        return sb.toString();
    }

    public final boolean zzi() {
        return zza(zza.AD_STORAGE);
    }

    public final boolean zzj() {
        return zza(zza.ANALYTICS_STORAGE);
    }

    public final boolean zzk() {
        Iterator it = this.f11811a.values().iterator();
        while (it.hasNext()) {
            if (((zzip) it.next()) != zzip.f11805b) {
                return true;
            }
        }
        return false;
    }

    public final int zza() {
        return this.f11812b;
    }

    public static zziq zza(Bundle bundle, int i2) {
        if (bundle == null) {
            return new zziq(null, null, i2);
        }
        EnumMap enumMap = new EnumMap(zza.class);
        for (zza zzaVar : zzir.STORAGE.f11822b) {
            enumMap.put((EnumMap) zzaVar, (zza) c(bundle.getString(zzaVar.f11818b)));
        }
        return new zziq(enumMap, i2);
    }

    public final boolean zzc(zziq zziqVar) {
        return zzb(zziqVar, (zza[]) this.f11811a.keySet().toArray(new zza[0]));
    }

    public zziq(Boolean bool, Boolean bool2, int i2) {
        zzip zzipVar;
        EnumMap enumMap = new EnumMap(zza.class);
        this.f11811a = enumMap;
        zza zzaVar = zza.AD_STORAGE;
        zzip zzipVar2 = zzip.f11807f;
        zzip zzipVar3 = zzip.f11808j;
        zzip zzipVar4 = zzip.f11805b;
        if (bool == null) {
            zzipVar = zzipVar4;
        } else {
            zzipVar = bool.booleanValue() ? zzipVar3 : zzipVar2;
        }
        enumMap.put((EnumMap) zzaVar, (zza) zzipVar);
        zza zzaVar2 = zza.ANALYTICS_STORAGE;
        if (bool2 == null) {
            zzipVar2 = zzipVar4;
        } else if (bool2.booleanValue()) {
            zzipVar2 = zzipVar3;
        }
        enumMap.put((EnumMap) zzaVar2, (zza) zzipVar2);
        this.f11812b = i2;
    }

    public static zziq zzb(String str) {
        return zza(str, 100);
    }

    public final zziq zzb(zziq zziqVar) {
        EnumMap enumMap = new EnumMap(zza.class);
        for (zza zzaVar : zzir.STORAGE.f11822b) {
            zzip zzipVar = (zzip) this.f11811a.get(zzaVar);
            if (zzipVar == zzip.f11805b) {
                zzipVar = (zzip) zziqVar.f11811a.get(zzaVar);
            }
            if (zzipVar != null) {
                enumMap.put((EnumMap) zzaVar, (zza) zzipVar);
            }
        }
        return new zziq(enumMap, this.f11812b);
    }

    public static zziq zza(zzip zzipVar, zzip zzipVar2, int i2) {
        EnumMap enumMap = new EnumMap(zza.class);
        enumMap.put((EnumMap) zza.AD_STORAGE, (zza) zzipVar);
        enumMap.put((EnumMap) zza.ANALYTICS_STORAGE, (zza) zzipVar2);
        return new zziq(enumMap, -10);
    }

    public static zziq zza(String str, int i2) {
        EnumMap enumMap = new EnumMap(zza.class);
        if (str == null) {
            str = "";
        }
        zza[] zza2 = zzir.STORAGE.zza();
        for (int i7 = 0; i7 < zza2.length; i7++) {
            zza zzaVar = zza2[i7];
            int i8 = i7 + 2;
            if (i8 < str.length()) {
                enumMap.put((EnumMap) zzaVar, (zza) b(str.charAt(i8)));
            } else {
                enumMap.put((EnumMap) zzaVar, (zza) zzip.f11805b);
            }
        }
        return new zziq(enumMap, i2);
    }

    public final boolean zzb(zziq zziqVar, zza... zzaVarArr) {
        for (zza zzaVar : zzaVarArr) {
            zzip zzipVar = (zzip) this.f11811a.get(zzaVar);
            zzip zzipVar2 = (zzip) zziqVar.f11811a.get(zzaVar);
            zzip zzipVar3 = zzip.f11807f;
            if (zzipVar == zzipVar3 && zzipVar2 != zzipVar3) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0048 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.zziq zza(com.google.android.gms.measurement.internal.zziq r9) {
        /*
            r8 = this;
            java.util.EnumMap r0 = new java.util.EnumMap
            java.lang.Class<com.google.android.gms.measurement.internal.zziq$zza> r1 = com.google.android.gms.measurement.internal.zziq.zza.class
            r0.<init>(r1)
            com.google.android.gms.measurement.internal.zzir r1 = com.google.android.gms.measurement.internal.zzir.STORAGE
            com.google.android.gms.measurement.internal.zziq$zza[] r1 = r1.f11822b
            int r2 = r1.length
            r3 = 0
        Ld:
            if (r3 >= r2) goto L4b
            r4 = r1[r3]
            java.util.EnumMap r5 = r8.f11811a
            java.lang.Object r5 = r5.get(r4)
            com.google.android.gms.measurement.internal.zzip r5 = (com.google.android.gms.measurement.internal.zzip) r5
            java.util.EnumMap r6 = r9.f11811a
            java.lang.Object r6 = r6.get(r4)
            com.google.android.gms.measurement.internal.zzip r6 = (com.google.android.gms.measurement.internal.zzip) r6
            if (r5 != 0) goto L24
            goto L33
        L24:
            if (r6 != 0) goto L27
            goto L43
        L27:
            com.google.android.gms.measurement.internal.zzip r7 = com.google.android.gms.measurement.internal.zzip.f11805b
            if (r5 != r7) goto L2c
            goto L33
        L2c:
            if (r6 != r7) goto L2f
            goto L43
        L2f:
            com.google.android.gms.measurement.internal.zzip r7 = com.google.android.gms.measurement.internal.zzip.f11806e
            if (r5 != r7) goto L35
        L33:
            r5 = r6
            goto L43
        L35:
            if (r6 != r7) goto L38
            goto L43
        L38:
            com.google.android.gms.measurement.internal.zzip r7 = com.google.android.gms.measurement.internal.zzip.f11807f
            if (r5 == r7) goto L42
            if (r6 != r7) goto L3f
            goto L42
        L3f:
            com.google.android.gms.measurement.internal.zzip r5 = com.google.android.gms.measurement.internal.zzip.f11808j
            goto L43
        L42:
            r5 = r7
        L43:
            if (r5 == 0) goto L48
            r0.put(r4, r5)
        L48:
            int r3 = r3 + 1
            goto Ld
        L4b:
            com.google.android.gms.measurement.internal.zziq r9 = new com.google.android.gms.measurement.internal.zziq
            r1 = 100
            r9.<init>(r0, r1)
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zziq.zza(com.google.android.gms.measurement.internal.zziq):com.google.android.gms.measurement.internal.zziq");
    }

    public static String zza(Bundle bundle) {
        String string;
        zza[] zzaVarArr = zzir.STORAGE.f11822b;
        int length = zzaVarArr.length;
        int i2 = 0;
        while (true) {
            Boolean bool = null;
            if (i2 >= length) {
                return null;
            }
            zza zzaVar = zzaVarArr[i2];
            if (bundle.containsKey(zzaVar.f11818b) && (string = bundle.getString(zzaVar.f11818b)) != null) {
                if (string.equals("granted")) {
                    bool = Boolean.TRUE;
                } else if (string.equals("denied")) {
                    bool = Boolean.FALSE;
                }
                if (bool == null) {
                    return string;
                }
            }
            i2++;
        }
    }

    public final boolean zza(zziq zziqVar, zza... zzaVarArr) {
        for (zza zzaVar : zzaVarArr) {
            if (!zziqVar.zza(zzaVar) && zza(zzaVar)) {
                return true;
            }
        }
        return false;
    }

    public final boolean zza(zza zzaVar) {
        return ((zzip) this.f11811a.get(zzaVar)) != zzip.f11807f;
    }
}
