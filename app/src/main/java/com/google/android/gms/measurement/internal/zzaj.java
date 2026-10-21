package com.google.android.gms.measurement.internal;

import com.google.android.gms.measurement.internal.zziq;
import java.util.EnumMap;

/* loaded from: classes2.dex */
final class zzaj {

    /* renamed from: a, reason: collision with root package name */
    public final EnumMap f11192a;

    public zzaj() {
        this.f11192a = new EnumMap(zziq.zza.class);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("1");
        for (zziq.zza zzaVar : zziq.zza.values()) {
            zzai zzaiVar = (zzai) this.f11192a.get(zzaVar);
            if (zzaiVar == null) {
                zzaiVar = zzai.UNSET;
            }
            sb.append(zzaiVar.f11191b);
        }
        return sb.toString();
    }

    public final zzai zza(zziq.zza zzaVar) {
        zzai zzaiVar = (zzai) this.f11192a.get(zzaVar);
        return zzaiVar == null ? zzai.UNSET : zzaiVar;
    }

    public zzaj(EnumMap enumMap) {
        EnumMap enumMap2 = new EnumMap(zziq.zza.class);
        this.f11192a = enumMap2;
        enumMap2.putAll(enumMap);
    }

    public static zzaj zza(String str) {
        EnumMap enumMap = new EnumMap(zziq.zza.class);
        if (str.length() >= zziq.zza.values().length) {
            int i2 = 0;
            if (str.charAt(0) == '1') {
                zziq.zza[] values = zziq.zza.values();
                int length = values.length;
                int i7 = 1;
                while (i2 < length) {
                    enumMap.put((EnumMap) values[i2], (zziq.zza) zzai.zza(str.charAt(i7)));
                    i2++;
                    i7++;
                }
                return new zzaj(enumMap);
            }
        }
        return new zzaj();
    }

    public final void zza(zziq.zza zzaVar, int i2) {
        zzai zzaiVar = zzai.UNSET;
        if (i2 != -30) {
            if (i2 != -20) {
                if (i2 == -10) {
                    zzaiVar = zzai.MANIFEST;
                } else if (i2 != 0) {
                    if (i2 == 30) {
                        zzaiVar = zzai.INITIALIZATION;
                    }
                }
            }
            zzaiVar = zzai.API;
        } else {
            zzaiVar = zzai.TCF;
        }
        this.f11192a.put((EnumMap) zzaVar, (zziq.zza) zzaiVar);
    }

    public final void zza(zziq.zza zzaVar, zzai zzaiVar) {
        this.f11192a.put((EnumMap) zzaVar, (zziq.zza) zzaiVar);
    }
}
