package com.google.android.gms.internal.measurement;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import androidx.media3.common.C;

/* loaded from: classes2.dex */
public final class zzco {
    public static final int zza;
    private static final int zzb;

    static {
        int i2 = Build.VERSION.SDK_INT;
        zzb = C.BUFFER_FLAG_NOT_DEPENDED_ON;
        zza = i2 >= 31 ? 33554432 : 0;
    }

    public static PendingIntent zza(Context context, int i2, Intent intent, int i7) {
        return PendingIntent.getBroadcast(context, 0, intent, i7);
    }
}
