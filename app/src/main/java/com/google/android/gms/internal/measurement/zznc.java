package com.google.android.gms.internal.measurement;

import androidx.media3.exoplayer.analytics.AnalyticsListener;
import com.fasterxml.jackson.core.base.GeneratorBase;

/* loaded from: classes2.dex */
final class zznc {
    private static boolean zza(byte b7) {
        return b7 > -65;
    }

    public static /* synthetic */ void zza(byte b7, byte b8, byte b9, byte b10, char[] cArr, int i2) {
        if (!zza(b8)) {
            if ((((b8 + 112) + (b7 << 28)) >> 30) == 0 && !zza(b9) && !zza(b10)) {
                int i7 = ((b7 & 7) << 18) | ((b8 & 63) << 12) | ((b9 & 63) << 6) | (b10 & 63);
                cArr[i2] = (char) ((i7 >>> 10) + 55232);
                cArr[i2 + 1] = (char) ((i7 & AnalyticsListener.EVENT_DRM_KEYS_LOADED) + GeneratorBase.SURR2_FIRST);
                return;
            }
        }
        throw zzkb.zzd();
    }

    public static /* synthetic */ void zza(byte b7, char[] cArr, int i2) {
        cArr[i2] = (char) b7;
    }

    public static /* synthetic */ void zza(byte b7, byte b8, byte b9, char[] cArr, int i2) {
        if (!zza(b8) && ((b7 != -32 || b8 >= -96) && ((b7 != -19 || b8 < -96) && !zza(b9)))) {
            cArr[i2] = (char) (((b7 & 15) << 12) | ((b8 & 63) << 6) | (b9 & 63));
            return;
        }
        throw zzkb.zzd();
    }

    public static /* synthetic */ void zza(byte b7, byte b8, char[] cArr, int i2) {
        if (b7 >= -62 && !zza(b8)) {
            cArr[i2] = (char) (((b7 & 31) << 6) | (b8 & 63));
            return;
        }
        throw zzkb.zzd();
    }
}
