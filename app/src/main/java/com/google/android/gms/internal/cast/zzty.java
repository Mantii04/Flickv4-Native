package com.google.android.gms.internal.cast;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* loaded from: classes2.dex */
public final class zzty {
    static final Charset zza = Charset.forName("US-ASCII");
    static final Charset zzb = Charset.forName("UTF-8");
    static final Charset zzc = Charset.forName("ISO-8859-1");
    public static final byte[] zzd;
    public static final ByteBuffer zze;
    public static final zzsy zzf;

    static {
        byte[] bArr = new byte[0];
        zzd = bArr;
        zze = ByteBuffer.wrap(bArr);
        zzsw zzswVar = new zzsw(bArr, 0, 0, false, null);
        try {
            zzswVar.zza(0);
            zzf = zzswVar;
        } catch (zzua e3) {
            throw new IllegalArgumentException(e3);
        }
    }

    public static int zza(boolean z6) {
        return z6 ? 1231 : 1237;
    }

    public static int zzb(int i2, byte[] bArr, int i7, int i8) {
        for (int i9 = 0; i9 < i8; i9++) {
            i2 = (i2 * 31) + bArr[i9];
        }
        return i2;
    }

    public static Object zzc(Object obj, String str) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException("messageType");
    }

    public static String zzd(byte[] bArr) {
        return new String(bArr, zzb);
    }
}
