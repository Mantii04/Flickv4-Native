package com.google.android.gms.internal.cast;

import androidx.media3.common.util.Log;

/* loaded from: classes2.dex */
final class zzsw extends zzsy {
    private final byte[] zzb;
    private int zzc;
    private int zzd;
    private int zze;

    public /* synthetic */ zzsw(byte[] bArr, int i2, int i7, boolean z6, zzsv zzsvVar) {
        super(null);
        this.zze = Log.LOG_LEVEL_OFF;
        this.zzb = bArr;
        this.zzc = 0;
    }

    public final int zza(int i2) throws zzua {
        int i7 = this.zze;
        this.zze = 0;
        int i8 = this.zzc + this.zzd;
        this.zzc = i8;
        if (i8 <= 0) {
            this.zzd = 0;
            return i7;
        }
        this.zzd = i8;
        this.zzc = 0;
        return i7;
    }
}
