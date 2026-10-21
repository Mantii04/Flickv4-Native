package com.google.android.gms.internal.measurement;

/* loaded from: classes2.dex */
final class zzio {
    private final zzja zza;
    private final byte[] zzb;

    public final zzij zza() {
        this.zza.zzb();
        return new zzit(this.zzb);
    }

    public final zzja zzb() {
        return this.zza;
    }

    private zzio(int i2) {
        byte[] bArr = new byte[i2];
        this.zzb = bArr;
        this.zza = zzja.zzb(bArr);
    }
}
