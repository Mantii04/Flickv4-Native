package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* loaded from: classes2.dex */
public final class zzky<K, V> {
    public static <K, V> int zza(zzkx<K, V> zzkxVar, K k7, V v6) {
        return zzjj.zza(zzkxVar.zza, 1, k7) + zzjj.zza(zzkxVar.zzc, 2, v6);
    }

    public static <K, V> void zza(zzja zzjaVar, zzkx<K, V> zzkxVar, K k7, V v6) throws IOException {
        zzjj.zza(zzjaVar, zzkxVar.zza, 1, k7);
        zzjj.zza(zzjaVar, zzkxVar.zzc, 2, v6);
    }
}
