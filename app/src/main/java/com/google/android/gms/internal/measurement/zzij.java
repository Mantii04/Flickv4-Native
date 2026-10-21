package com.google.android.gms.internal.measurement;

import A.i;
import java.io.IOException;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;

/* loaded from: classes2.dex */
public abstract class zzij implements Serializable, Iterable<Byte> {
    public static final zzij zza = new zzit(zzjw.zzb);
    private static final zzim zzb = new zzis();
    private static final Comparator<zzij> zzc = new zzil();
    private int zzd = 0;

    public static /* synthetic */ int zza(byte b7) {
        return b7 & 255;
    }

    public static zzio zzc(int i2) {
        return new zzio(i2);
    }

    public abstract boolean equals(Object obj);

    public final int hashCode() {
        int i2 = this.zzd;
        if (i2 == 0) {
            int zzb2 = zzb();
            i2 = zzb(zzb2, 0, zzb2);
            if (i2 == 0) {
                i2 = 1;
            }
            this.zzd = i2;
        }
        return i2;
    }

    @Override // java.lang.Iterable
    public /* synthetic */ Iterator<Byte> iterator() {
        return new zzii(this);
    }

    public final String toString() {
        Locale locale = Locale.ROOT;
        String hexString = Integer.toHexString(System.identityHashCode(this));
        int zzb2 = zzb();
        String zza2 = zzb() <= 50 ? zzmp.zza(this) : i.B(zzmp.zza(zza(0, 47)), "...");
        StringBuilder sb = new StringBuilder("<ByteString@");
        sb.append(hexString);
        sb.append(" size=");
        sb.append(zzb2);
        sb.append(" contents=\"");
        return i.o(sb, zza2, "\">");
    }

    public abstract byte zza(int i2);

    public abstract zzij zza(int i2, int i7);

    public abstract String zza(Charset charset);

    public abstract void zza(zzig zzigVar) throws IOException;

    public abstract byte zzb(int i2);

    public abstract int zzb();

    public abstract int zzb(int i2, int i7, int i8);

    public abstract boolean zzd();

    public static int zza(int i2, int i7, int i8) {
        int i9 = i7 - i2;
        if ((i2 | i7 | i9 | (i8 - i7)) >= 0) {
            return i9;
        }
        if (i2 < 0) {
            throw new IndexOutOfBoundsException(i.g(i2, "Beginning index: ", " < 0"));
        }
        if (i7 < i2) {
            throw new IndexOutOfBoundsException(i.e(i2, i7, "Beginning index larger than ending index: ", ", "));
        }
        throw new IndexOutOfBoundsException(i.e(i7, i8, "End index: ", " >= "));
    }

    public final String zzc() {
        return zzb() == 0 ? "" : zza(zzjw.zza);
    }

    public final int zza() {
        return this.zzd;
    }

    public static zzij zza(byte[] bArr, int i2, int i7) {
        zza(i2, i2 + i7, bArr.length);
        return new zzit(zzb.zza(bArr, i2, i7));
    }

    public static zzij zza(String str) {
        return new zzit(str.getBytes(zzjw.zza));
    }

    public static zzij zza(byte[] bArr) {
        return new zzit(bArr);
    }
}
