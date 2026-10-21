package com.google.android.gms.internal.common;

import androidx.media3.common.util.Log;
import java.util.Arrays;

/* loaded from: classes2.dex */
class zzaa extends zzab {
    Object[] zza = new Object[4];
    int zzb = 0;
    boolean zzc;

    public zzaa(int i2) {
    }

    public final zzaa zza(Object obj) {
        obj.getClass();
        int i2 = this.zzb;
        int i7 = i2 + 1;
        Object[] objArr = this.zza;
        int length = objArr.length;
        if (length < i7) {
            int i8 = length + (length >> 1) + 1;
            if (i8 < i7) {
                int highestOneBit = Integer.highestOneBit(i2);
                i8 = highestOneBit + highestOneBit;
            }
            if (i8 < 0) {
                i8 = Log.LOG_LEVEL_OFF;
            }
            this.zza = Arrays.copyOf(objArr, i8);
            this.zzc = false;
        } else if (this.zzc) {
            this.zza = (Object[]) objArr.clone();
            this.zzc = false;
        }
        Object[] objArr2 = this.zza;
        int i9 = this.zzb;
        this.zzb = i9 + 1;
        objArr2[i9] = obj;
        return this;
    }
}
