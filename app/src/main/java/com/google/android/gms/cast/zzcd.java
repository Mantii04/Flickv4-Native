package com.google.android.gms.cast;

import java.util.HashMap;

/* loaded from: classes.dex */
final class zzcd {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f10533a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f10534b = new HashMap();

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f10535c = new HashMap();

    public final int zza(String str) {
        Integer num = (Integer) this.f10535c.get(str);
        if (num != null) {
            return num.intValue();
        }
        return 0;
    }

    public final zzcd zzb(String str, String str2, int i2) {
        this.f10533a.put(str, str2);
        this.f10534b.put(str2, str);
        this.f10535c.put(str, Integer.valueOf(i2));
        return this;
    }

    public final String zzc(String str) {
        return (String) this.f10533a.get(str);
    }

    public final String zzd(String str) {
        return (String) this.f10534b.get(str);
    }
}
