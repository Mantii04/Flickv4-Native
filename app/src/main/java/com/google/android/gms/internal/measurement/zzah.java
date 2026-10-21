package com.google.android.gms.internal.measurement;

import A.i;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes2.dex */
final class zzah implements Iterator<zzaq> {
    private int zza = 0;
    private final /* synthetic */ zzaf zzb;

    public zzah(zzaf zzafVar) {
        this.zzb = zzafVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zza < this.zzb.zzb();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ zzaq next() {
        if (this.zza >= this.zzb.zzb()) {
            throw new NoSuchElementException(i.f(this.zza, "Out of bounds index: "));
        }
        zzaf zzafVar = this.zzb;
        int i2 = this.zza;
        this.zza = i2 + 1;
        return zzafVar.zza(i2);
    }
}
