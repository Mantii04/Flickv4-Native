package com.google.android.gms.internal.common;

import A.i;
import cz.msebera.android.httpclient.message.TokenParser;

/* loaded from: classes2.dex */
final class zzl extends zzk {
    private final char zza;

    public zzl(char c7) {
        this.zza = c7;
    }

    public final String toString() {
        char[] cArr = new char[6];
        cArr[0] = TokenParser.ESCAPE;
        cArr[1] = 'u';
        cArr[2] = 0;
        cArr[3] = 0;
        cArr[4] = 0;
        cArr[5] = 0;
        int i2 = this.zza;
        for (int i7 = 0; i7 < 4; i7++) {
            cArr[5 - i7] = "0123456789ABCDEF".charAt(i2 & 15);
            i2 >>= 4;
        }
        return i.l("CharMatcher.is('", String.copyValueOf(cArr), "')");
    }

    @Override // com.google.android.gms.internal.common.zzo
    public final boolean zza(char c7) {
        return c7 == this.zza;
    }
}
