package com.google.android.gms.internal.cast;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes2.dex */
public abstract class zztc extends zzsk {
    public static final /* synthetic */ int zzb = 0;
    private static final Logger zzc = Logger.getLogger(zztc.class.getName());
    private static final boolean zzd = zzwj.zzx();
    zztd zza;

    private zztc() {
    }

    @Deprecated
    public static int zzt(int i2, zzux zzuxVar, zzvi zzviVar) {
        int zzq = ((zzsh) zzuxVar).zzq(zzviVar);
        int zzx = zzx(i2 << 3);
        return zzx + zzx + zzq;
    }

    public static int zzu(int i2) {
        if (i2 >= 0) {
            return zzx(i2);
        }
        return 10;
    }

    public static int zzv(zzux zzuxVar, zzvi zzviVar) {
        int zzq = ((zzsh) zzuxVar).zzq(zzviVar);
        return zzx(zzq) + zzq;
    }

    public static int zzw(String str) {
        int length;
        try {
            length = zzwn.zzc(str);
        } catch (zzwm unused) {
            length = str.getBytes(zzty.zzb).length;
        }
        return zzx(length) + length;
    }

    public static int zzx(int i2) {
        if ((i2 & (-128)) == 0) {
            return 1;
        }
        if ((i2 & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i2) == 0) {
            return 3;
        }
        return (i2 & (-268435456)) == 0 ? 4 : 5;
    }

    public static int zzy(long j7) {
        int i2;
        if (((-128) & j7) == 0) {
            return 1;
        }
        if (j7 < 0) {
            return 10;
        }
        if (((-34359738368L) & j7) != 0) {
            j7 >>>= 28;
            i2 = 6;
        } else {
            i2 = 2;
        }
        if (((-2097152) & j7) != 0) {
            j7 >>>= 14;
            i2 += 2;
        }
        return (j7 & (-16384)) != 0 ? i2 + 1 : i2;
    }

    public static zztc zzz(byte[] bArr, int i2, int i7) {
        return new zzsz(bArr, 0, i7);
    }

    public final void zzA() {
        if (zza() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    public final void zzB(String str, zzwm zzwmVar) throws IOException {
        zzc.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) zzwmVar);
        byte[] bytes = str.getBytes(zzty.zzb);
        try {
            int length = bytes.length;
            zzq(length);
            zzl(bytes, 0, length);
        } catch (IndexOutOfBoundsException e3) {
            throw new zzta(e3);
        }
    }

    public abstract int zza();

    public abstract void zzb(byte b7) throws IOException;

    public abstract void zzd(int i2, boolean z6) throws IOException;

    public abstract void zze(int i2, zzsu zzsuVar) throws IOException;

    public abstract void zzf(int i2, int i7) throws IOException;

    public abstract void zzg(int i2) throws IOException;

    public abstract void zzh(int i2, long j7) throws IOException;

    public abstract void zzi(long j7) throws IOException;

    public abstract void zzj(int i2, int i7) throws IOException;

    public abstract void zzk(int i2) throws IOException;

    public abstract void zzl(byte[] bArr, int i2, int i7) throws IOException;

    public abstract void zzm(int i2, String str) throws IOException;

    public abstract void zzo(int i2, int i7) throws IOException;

    public abstract void zzp(int i2, int i7) throws IOException;

    public abstract void zzq(int i2) throws IOException;

    public abstract void zzr(int i2, long j7) throws IOException;

    public abstract void zzs(long j7) throws IOException;

    public /* synthetic */ zztc(zztb zztbVar) {
    }
}
