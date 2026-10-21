package com.google.android.gms.internal.cast;

import java.util.NoSuchElementException;

/* loaded from: classes2.dex */
final class zzsl extends zzsn {
    final /* synthetic */ zzsu zza;
    private int zzb = 0;
    private final int zzc;

    public zzsl(zzsu zzsuVar) {
        this.zza = zzsuVar;
        this.zzc = zzsuVar.zzd();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zzb < this.zzc;
    }

    @Override // com.google.android.gms.internal.cast.zzsp
    public final byte zza() {
        int i2 = this.zzb;
        if (i2 >= this.zzc) {
            throw new NoSuchElementException();
        }
        this.zzb = i2 + 1;
        return this.zza.zzb(i2);
    }
}
