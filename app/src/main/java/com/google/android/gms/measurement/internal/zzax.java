package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.google.android.gms.measurement.internal.zziq;
import cz.msebera.android.httpclient.client.config.CookieSpecs;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes2.dex */
public final class zzax {

    /* renamed from: f, reason: collision with root package name */
    public static final zzax f11224f = new zzax((Boolean) null, 100, (Boolean) null, (String) null);

    /* renamed from: a, reason: collision with root package name */
    public final int f11225a;

    /* renamed from: b, reason: collision with root package name */
    public final String f11226b;

    /* renamed from: c, reason: collision with root package name */
    public final Boolean f11227c;

    /* renamed from: d, reason: collision with root package name */
    public final String f11228d;

    /* renamed from: e, reason: collision with root package name */
    public final EnumMap f11229e;

    public zzax(Boolean bool, int i2, Boolean bool2, String str) {
        EnumMap enumMap = new EnumMap(zziq.zza.class);
        this.f11229e = enumMap;
        enumMap.put((EnumMap) zziq.zza.AD_USER_DATA, (zziq.zza) (bool == null ? zzip.f11805b : bool.booleanValue() ? zzip.f11808j : zzip.f11807f));
        this.f11225a = i2;
        this.f11226b = a();
        this.f11227c = bool2;
        this.f11228d = str;
    }

    public final String a() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f11225a);
        for (zziq.zza zzaVar : zzir.DMA.zza()) {
            sb.append(":");
            sb.append(zziq.a((zzip) this.f11229e.get(zzaVar)));
        }
        return sb.toString();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzax)) {
            return false;
        }
        zzax zzaxVar = (zzax) obj;
        if (this.f11226b.equalsIgnoreCase(zzaxVar.f11226b) && Objects.equals(this.f11227c, zzaxVar.f11227c)) {
            return Objects.equals(this.f11228d, zzaxVar.f11228d);
        }
        return false;
    }

    public final int hashCode() {
        Boolean bool = this.f11227c;
        int i2 = bool == null ? 3 : bool == Boolean.TRUE ? 7 : 13;
        String str = this.f11228d;
        return ((str == null ? 17 : str.hashCode()) * 137) + (i2 * 29) + this.f11226b.hashCode();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("source=");
        sb.append(zziq.d(this.f11225a));
        for (zziq.zza zzaVar : zzir.DMA.zza()) {
            sb.append(",");
            sb.append(zzaVar.f11818b);
            sb.append("=");
            zzip zzipVar = (zzip) this.f11229e.get(zzaVar);
            if (zzipVar == null) {
                sb.append("uninitialized");
            } else {
                int i2 = zzaw.f11223a[zzipVar.ordinal()];
                if (i2 == 1) {
                    sb.append("uninitialized");
                } else if (i2 == 2) {
                    sb.append(CookieSpecs.DEFAULT);
                } else if (i2 == 3) {
                    sb.append("denied");
                } else if (i2 == 4) {
                    sb.append("granted");
                }
            }
        }
        Boolean bool = this.f11227c;
        if (bool != null) {
            sb.append(",isDmaRegion=");
            sb.append(bool);
        }
        String str = this.f11228d;
        if (str != null) {
            sb.append(",cpsDisplayStr=");
            sb.append(str);
        }
        return sb.toString();
    }

    public final int zza() {
        return this.f11225a;
    }

    public final Bundle zzb() {
        Bundle bundle = new Bundle();
        for (Map.Entry entry : this.f11229e.entrySet()) {
            int ordinal = ((zzip) entry.getValue()).ordinal();
            String str = ordinal != 2 ? ordinal != 3 ? null : "granted" : "denied";
            if (str != null) {
                bundle.putString(((zziq.zza) entry.getKey()).f11818b, str);
            }
        }
        Boolean bool = this.f11227c;
        if (bool != null) {
            bundle.putString("is_dma_region", bool.toString());
        }
        String str2 = this.f11228d;
        if (str2 != null) {
            bundle.putString("cps_display_str", str2);
        }
        return bundle;
    }

    public final zzip zzc() {
        zzip zzipVar = (zzip) this.f11229e.get(zziq.zza.AD_USER_DATA);
        return zzipVar == null ? zzip.f11805b : zzipVar;
    }

    public final Boolean zzd() {
        return this.f11227c;
    }

    public final String zze() {
        return this.f11228d;
    }

    public final String zzf() {
        return this.f11226b;
    }

    public final boolean zzg() {
        Iterator it = this.f11229e.values().iterator();
        while (it.hasNext()) {
            if (((zzip) it.next()) != zzip.f11805b) {
                return true;
            }
        }
        return false;
    }

    public static zzax zza(Bundle bundle, int i2) {
        if (bundle == null) {
            return new zzax((Boolean) null, i2, (Boolean) null, (String) null);
        }
        EnumMap enumMap = new EnumMap(zziq.zza.class);
        for (zziq.zza zzaVar : zzir.DMA.zza()) {
            enumMap.put((EnumMap) zzaVar, (zziq.zza) zziq.c(bundle.getString(zzaVar.f11818b)));
        }
        return new zzax(enumMap, i2, bundle.containsKey("is_dma_region") ? Boolean.valueOf(bundle.getString("is_dma_region")) : null, bundle.getString("cps_display_str"));
    }

    public zzax(EnumMap enumMap, int i2, Boolean bool, String str) {
        EnumMap enumMap2 = new EnumMap(zziq.zza.class);
        this.f11229e = enumMap2;
        enumMap2.putAll(enumMap);
        this.f11225a = i2;
        this.f11226b = a();
        this.f11227c = bool;
        this.f11228d = str;
    }

    public static zzax zza(String str) {
        if (str != null && str.length() > 0) {
            String[] split = str.split(":");
            int parseInt = Integer.parseInt(split[0]);
            EnumMap enumMap = new EnumMap(zziq.zza.class);
            zziq.zza[] zza = zzir.DMA.zza();
            int length = zza.length;
            int i2 = 1;
            int i7 = 0;
            while (i7 < length) {
                enumMap.put((EnumMap) zza[i7], (zziq.zza) zziq.b(split[i2].charAt(0)));
                i7++;
                i2++;
            }
            return new zzax(enumMap, parseInt, (Boolean) null, (String) null);
        }
        return f11224f;
    }

    public static Boolean zza(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        int i2 = zzaw.f11223a[zziq.c(bundle.getString("ad_personalization")).ordinal()];
        if (i2 == 3) {
            return Boolean.FALSE;
        }
        if (i2 != 4) {
            return null;
        }
        return Boolean.TRUE;
    }
}
