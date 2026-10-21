package com.google.android.gms.internal.measurement;

import android.content.ContentResolver;
import java.util.Map;

/* loaded from: classes2.dex */
public interface zzgn {
    String zza(ContentResolver contentResolver, String str) throws zzgq;

    <T extends Map<String, String>> T zza(ContentResolver contentResolver, String[] strArr, zzgo<T> zzgoVar) throws zzgq;
}
