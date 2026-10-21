package com.google.android.gms.cast.framework;

import android.os.Bundle;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Map;

/* loaded from: classes.dex */
public class CastReasonCodes {

    /* renamed from: a, reason: collision with root package name */
    public final Map f9858a;

    @Retention(RetentionPolicy.SOURCE)
    public @interface CastReasonType {
    }

    public CastReasonCodes(Bundle bundle) {
        this.f9858a = com.google.android.gms.internal.cast.zzah.zza(bundle, "com.google.android.gms.cast.MAP_CAST_STATUS_CODES_TO_CAST_REASON_CODES");
    }

    public final int zza(int i2) {
        Integer num;
        Map map = this.f9858a;
        if (map == null) {
            return 0;
        }
        Integer valueOf = Integer.valueOf(i2);
        if (map.containsKey(valueOf) && (num = (Integer) map.get(valueOf)) != null) {
            return num.intValue();
        }
        return 0;
    }
}
