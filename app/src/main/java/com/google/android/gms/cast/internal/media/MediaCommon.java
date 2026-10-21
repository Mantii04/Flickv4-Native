package com.google.android.gms.cast.internal.media;

import com.google.android.gms.common.annotation.KeepForSdk;

@KeepForSdk
/* loaded from: classes.dex */
public class MediaCommon {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @KeepForSdk
    public static Integer mediaRepeatModeFromString(String str) {
        char c7;
        if (str == null) {
            return null;
        }
        switch (str.hashCode()) {
            case -1118317585:
                if (str.equals("REPEAT_ALL_AND_SHUFFLE")) {
                    c7 = 3;
                    break;
                }
                c7 = 65535;
                break;
            case -962896020:
                if (str.equals("REPEAT_SINGLE")) {
                    c7 = 2;
                    break;
                }
                c7 = 65535;
                break;
            case 1645938909:
                if (str.equals("REPEAT_ALL")) {
                    c7 = 1;
                    break;
                }
                c7 = 65535;
                break;
            case 1645952171:
                if (str.equals("REPEAT_OFF")) {
                    c7 = 0;
                    break;
                }
                c7 = 65535;
                break;
            default:
                c7 = 65535;
                break;
        }
        if (c7 == 0) {
            return 0;
        }
        if (c7 == 1) {
            return 1;
        }
        if (c7 != 2) {
            return c7 != 3 ? null : 3;
        }
        return 2;
    }

    public static String zza(Integer num) {
        if (num == null) {
            return null;
        }
        int intValue = num.intValue();
        if (intValue == 0) {
            return "REPEAT_OFF";
        }
        if (intValue == 1) {
            return "REPEAT_ALL";
        }
        if (intValue == 2) {
            return "REPEAT_SINGLE";
        }
        if (intValue != 3) {
            return null;
        }
        return "REPEAT_ALL_AND_SHUFFLE";
    }
}
