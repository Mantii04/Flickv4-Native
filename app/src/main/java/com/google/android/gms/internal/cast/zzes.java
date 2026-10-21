package com.google.android.gms.internal.cast;

import cz.msebera.android.httpclient.message.TokenParser;

/* loaded from: classes2.dex */
public final class zzes {
    public static String zza(String str) {
        int length = str.length();
        int i2 = 0;
        while (i2 < length) {
            if (zzb(str.charAt(i2))) {
                char[] charArray = str.toCharArray();
                while (i2 < length) {
                    char c7 = charArray[i2];
                    if (zzb(c7)) {
                        charArray[i2] = (char) (c7 ^ TokenParser.SP);
                    }
                    i2++;
                }
                return String.valueOf(charArray);
            }
            i2++;
        }
        return str;
    }

    public static boolean zzb(char c7) {
        return c7 >= 'a' && c7 <= 'z';
    }
}
