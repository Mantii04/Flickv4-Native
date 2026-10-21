package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes2.dex */
final class zzau implements Iterator<zzaq> {
    private int zza = 0;
    private final /* synthetic */ zzas zzb;

    public zzau(zzas zzasVar) {
        this.zzb = zzasVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        String str;
        int i2 = this.zza;
        str = this.zzb.zza;
        return i2 < str.length();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ zzaq next() {
        String str;
        String str2;
        int i2 = this.zza;
        str = this.zzb.zza;
        if (i2 >= str.length()) {
            throw new NoSuchElementException();
        }
        str2 = this.zzb.zza;
        int i7 = this.zza;
        this.zza = i7 + 1;
        return new zzas(String.valueOf(str2.charAt(i7)));
    }
}
