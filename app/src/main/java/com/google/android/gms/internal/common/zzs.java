package com.google.android.gms.internal.common;

import A.i;
import com.google.firebase.analytics.FirebaseAnalytics;
import org.jspecify.nullness.NullMarked;

@NullMarked
/* loaded from: classes2.dex */
public final class zzs {
    public static int zza(int i2, int i7, String str) {
        String zza;
        if (i2 >= 0 && i2 < i7) {
            return i2;
        }
        if (i2 < 0) {
            zza = zzy.zza("%s (%s) must not be negative", FirebaseAnalytics.Param.INDEX, Integer.valueOf(i2));
        } else {
            if (i7 < 0) {
                throw new IllegalArgumentException(i.f(i7, "negative size: "));
            }
            zza = zzy.zza("%s (%s) must be less than size (%s)", FirebaseAnalytics.Param.INDEX, Integer.valueOf(i2), Integer.valueOf(i7));
        }
        throw new IndexOutOfBoundsException(zza);
    }

    public static int zzb(int i2, int i7, String str) {
        if (i2 < 0 || i2 > i7) {
            throw new IndexOutOfBoundsException(zzd(i2, i7, FirebaseAnalytics.Param.INDEX));
        }
        return i2;
    }

    public static void zzc(int i2, int i7, int i8) {
        if (i2 < 0 || i7 < i2 || i7 > i8) {
            throw new IndexOutOfBoundsException((i2 < 0 || i2 > i8) ? zzd(i2, i8, "start index") : (i7 < 0 || i7 > i8) ? zzd(i7, i8, "end index") : zzy.zza("end index (%s) must not be less than start index (%s)", Integer.valueOf(i7), Integer.valueOf(i2)));
        }
    }

    private static String zzd(int i2, int i7, String str) {
        if (i2 < 0) {
            return zzy.zza("%s (%s) must not be negative", str, Integer.valueOf(i2));
        }
        if (i7 >= 0) {
            return zzy.zza("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i2), Integer.valueOf(i7));
        }
        throw new IllegalArgumentException(i.f(i7, "negative size: "));
    }
}
