package com.google.android.gms.internal.cast;

import java.util.Arrays;

/* loaded from: classes2.dex */
public final class zzfn extends zzfk {
    public zzfn() {
        super(4);
    }

    public final zzfn zzb(Object obj) {
        obj.getClass();
        int i2 = this.zzb + 1;
        Object[] objArr = this.zza;
        int length = objArr.length;
        if (length < i2) {
            this.zza = Arrays.copyOf(objArr, zzfl.zza(length, i2));
            this.zzc = false;
        } else if (this.zzc) {
            this.zza = (Object[]) objArr.clone();
            this.zzc = false;
        }
        Object[] objArr2 = this.zza;
        int i7 = this.zzb;
        this.zzb = i7 + 1;
        objArr2[i7] = obj;
        return this;
    }

    public final zzfq zzc() {
        this.zzc = true;
        return zzfq.zzi(this.zza, this.zzb);
    }
}
