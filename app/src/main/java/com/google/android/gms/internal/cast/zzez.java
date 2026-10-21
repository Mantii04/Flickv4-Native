package com.google.android.gms.internal.cast;

import A.i;
import com.google.firebase.analytics.FirebaseAnalytics;

/* loaded from: classes2.dex */
public final class zzez {
    public static int zza(int i2, int i7, String str) {
        String zzb;
        if (i2 >= 0 && i2 < i7) {
            return i2;
        }
        if (i2 < 0) {
            zzb = zzfb.zzb("%s (%s) must not be negative", FirebaseAnalytics.Param.INDEX, Integer.valueOf(i2));
        } else {
            if (i7 < 0) {
                throw new IllegalArgumentException(i.f(i7, "negative size: "));
            }
            zzb = zzfb.zzb("%s (%s) must be less than size (%s)", FirebaseAnalytics.Param.INDEX, Integer.valueOf(i2), Integer.valueOf(i7));
        }
        throw new IndexOutOfBoundsException(zzb);
    }

    public static int zzb(int i2, int i7, String str) {
        if (i2 < 0 || i2 > i7) {
            throw new IndexOutOfBoundsException(zze(i2, i7, FirebaseAnalytics.Param.INDEX));
        }
        return i2;
    }

    public static Object zzc(Object obj, Object obj2) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException((String) obj2);
    }

    public static void zzd(int i2, int i7, int i8) {
        if (i2 < 0 || i7 < i2 || i7 > i8) {
            throw new IndexOutOfBoundsException((i2 < 0 || i2 > i8) ? zze(i2, i8, "start index") : (i7 < 0 || i7 > i8) ? zze(i7, i8, "end index") : zzfb.zzb("end index (%s) must not be less than start index (%s)", Integer.valueOf(i7), Integer.valueOf(i2)));
        }
    }

    private static String zze(int i2, int i7, String str) {
        if (i2 < 0) {
            return zzfb.zzb("%s (%s) must not be negative", str, Integer.valueOf(i2));
        }
        if (i7 >= 0) {
            return zzfb.zzb("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i2), Integer.valueOf(i7));
        }
        throw new IllegalArgumentException(i.f(i7, "negative size: "));
    }
}
