package com.google.android.gms.measurement.internal;

import A.i;
import android.os.Bundle;
import com.google.firebase.analytics.FirebaseAnalytics;

/* loaded from: classes2.dex */
public final class zzin {
    public static <T> T zza(Bundle bundle, String str, Class<T> cls, T t6) {
        T t7 = (T) bundle.get(str);
        if (t7 == null) {
            return t6;
        }
        if (cls.isAssignableFrom(t7.getClass())) {
            return t7;
        }
        String canonicalName = cls.getCanonicalName();
        throw new IllegalStateException(i.o(i.u("Invalid conditional user property field type. '", str, "' expected [", canonicalName, "] but was ["), t7.getClass().getCanonicalName(), "]"));
    }

    public static void zza(Bundle bundle, Object obj) {
        if (obj instanceof Double) {
            bundle.putDouble(FirebaseAnalytics.Param.VALUE, ((Double) obj).doubleValue());
        } else if (obj instanceof Long) {
            bundle.putLong(FirebaseAnalytics.Param.VALUE, ((Long) obj).longValue());
        } else {
            bundle.putString(FirebaseAnalytics.Param.VALUE, obj.toString());
        }
    }
}
