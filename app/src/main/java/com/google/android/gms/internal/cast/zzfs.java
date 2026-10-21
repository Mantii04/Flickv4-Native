package com.google.android.gms.internal.cast;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzfs {
    Object[] zza;
    int zzb;
    zzfr zzc;

    public zzfs() {
        this(4);
    }

    private final void zzb(int i2) {
        Object[] objArr = this.zza;
        int length = objArr.length;
        int i7 = i2 + i2;
        if (i7 > length) {
            this.zza = Arrays.copyOf(objArr, zzfl.zza(length, i7));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final zzfs zza(Iterable iterable) {
        if (iterable instanceof Collection) {
            zzb(iterable.size() + this.zzb);
        }
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            Object key = entry.getKey();
            Object value = entry.getValue();
            zzb(this.zzb + 1);
            zzfh.zza(key, value);
            Object[] objArr = this.zza;
            int i2 = this.zzb;
            int i7 = i2 + i2;
            objArr[i7] = key;
            objArr[i7 + 1] = value;
            this.zzb = i2 + 1;
        }
        return this;
    }

    public zzfs(int i2) {
        this.zza = new Object[i2 + i2];
        this.zzb = 0;
    }
}
