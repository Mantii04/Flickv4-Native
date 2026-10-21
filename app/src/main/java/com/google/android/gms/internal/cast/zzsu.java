package com.google.android.gms.internal.cast;

import A.i;
import java.io.IOException;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;

/* loaded from: classes2.dex */
public abstract class zzsu implements Iterable, Serializable {
    private static final Comparator zza;
    public static final zzsu zzb = new zzsr(zzty.zzd);
    private static final zzst zzd;
    private int zzc = 0;

    static {
        int i2 = zzsj.zza;
        zzd = new zzst(null);
        zza = new zzsm();
    }

    public static int zzj(int i2, int i7, int i8) {
        if (((i8 - i7) | i7) >= 0) {
            return i7;
        }
        throw new IndexOutOfBoundsException(i.e(i7, i8, "End index: ", " >= "));
    }

    public abstract boolean equals(Object obj);

    public final int hashCode() {
        int i2 = this.zzc;
        if (i2 == 0) {
            int zzd2 = zzd();
            i2 = zze(zzd2, 0, zzd2);
            if (i2 == 0) {
                i2 = 1;
            }
            this.zzc = i2;
        }
        return i2;
    }

    @Override // java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return new zzsl(this);
    }

    public final String toString() {
        Locale locale = Locale.ROOT;
        String hexString = Integer.toHexString(System.identityHashCode(this));
        int zzd2 = zzd();
        String zza2 = zzd() <= 50 ? zzvx.zza(this) : zzvx.zza(zzf(0, 47)).concat("...");
        StringBuilder sb = new StringBuilder("<ByteString@");
        sb.append(hexString);
        sb.append(" size=");
        sb.append(zzd2);
        sb.append(" contents=\"");
        return i.o(sb, zza2, "\">");
    }

    public abstract byte zza(int i2);

    public abstract byte zzb(int i2);

    public abstract int zzd();

    public abstract int zze(int i2, int i7, int i8);

    public abstract zzsu zzf(int i2, int i7);

    public abstract String zzg(Charset charset);

    public abstract void zzh(zzsk zzskVar) throws IOException;

    public abstract boolean zzi();

    public final int zzk() {
        return this.zzc;
    }

    public final String zzl(Charset charset) {
        return zzd() == 0 ? "" : zzg(charset);
    }
}
