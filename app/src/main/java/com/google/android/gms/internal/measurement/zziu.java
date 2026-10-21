package com.google.android.gms.internal.measurement;

import androidx.media3.common.util.Log;
import java.io.IOException;

/* loaded from: classes2.dex */
public abstract class zziu {
    private static volatile int zzd = 100;
    int zza;
    int zzb;
    zziy zzc;
    private int zze;
    private boolean zzf;

    public static int zza(int i2) {
        return (-(i2 & 1)) ^ (i2 >>> 1);
    }

    public abstract double zza() throws IOException;

    public abstract float zzb() throws IOException;

    public abstract int zzb(int i2) throws zzkb;

    public abstract int zzc();

    public abstract void zzc(int i2) throws zzkb;

    public abstract int zzd() throws IOException;

    public abstract void zzd(int i2);

    public abstract int zze() throws IOException;

    public abstract boolean zze(int i2) throws IOException;

    public abstract int zzf() throws IOException;

    public abstract int zzg() throws IOException;

    public abstract int zzh() throws IOException;

    public abstract int zzi() throws IOException;

    public abstract int zzj() throws IOException;

    public abstract long zzk() throws IOException;

    public abstract long zzl() throws IOException;

    public abstract long zzm() throws IOException;

    public abstract long zzn() throws IOException;

    public abstract long zzo() throws IOException;

    public abstract long zzp() throws IOException;

    public abstract zzij zzq() throws IOException;

    public abstract String zzr() throws IOException;

    public abstract String zzs() throws IOException;

    public abstract boolean zzt() throws IOException;

    public abstract boolean zzu() throws IOException;

    private zziu() {
        this.zzb = zzd;
        this.zze = Log.LOG_LEVEL_OFF;
        this.zzf = false;
    }

    public static long zza(long j7) {
        return (-(j7 & 1)) ^ (j7 >>> 1);
    }

    public static zziu zza(byte[] bArr, int i2, int i7, boolean z6) {
        zzix zzixVar = new zzix(bArr, i7);
        try {
            zzixVar.zzb(i7);
            return zzixVar;
        } catch (zzkb e3) {
            throw new IllegalArgumentException(e3);
        }
    }
}
