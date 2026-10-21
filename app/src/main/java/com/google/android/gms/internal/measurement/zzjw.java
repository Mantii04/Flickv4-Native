package com.google.android.gms.internal.measurement;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* loaded from: classes2.dex */
public final class zzjw {
    public static final byte[] zzb;
    private static final ByteBuffer zze;
    private static final zziu zzf;
    private static final Charset zzc = Charset.forName("US-ASCII");
    static final Charset zza = Charset.forName("UTF-8");
    private static final Charset zzd = Charset.forName("ISO-8859-1");

    static {
        byte[] bArr = new byte[0];
        zzb = bArr;
        zze = ByteBuffer.wrap(bArr);
        zzf = zziu.zza(bArr, 0, bArr.length, false);
    }

    public static int zza(long j7) {
        return (int) (j7 ^ (j7 >>> 32));
    }

    public static String zzb(byte[] bArr) {
        return new String(bArr, zza);
    }

    public static boolean zzc(byte[] bArr) {
        return zznd.zza(bArr);
    }

    public static int zza(boolean z6) {
        return z6 ? 1231 : 1237;
    }

    public static int zza(byte[] bArr) {
        int length = bArr.length;
        int zza2 = zza(length, bArr, 0, length);
        if (zza2 == 0) {
            return 1;
        }
        return zza2;
    }

    public static int zza(int i2, byte[] bArr, int i7, int i8) {
        for (int i9 = i7; i9 < i7 + i8; i9++) {
            i2 = (i2 * 31) + bArr[i9];
        }
        return i2;
    }

    public static <T> T zza(T t6) {
        t6.getClass();
        return t6;
    }

    public static <T> T zza(T t6, String str) {
        if (t6 != null) {
            return t6;
        }
        throw new NullPointerException(str);
    }

    public static boolean zza(zzlg zzlgVar) {
        boolean z6 = zzlgVar instanceof zzib;
        return false;
    }
}
