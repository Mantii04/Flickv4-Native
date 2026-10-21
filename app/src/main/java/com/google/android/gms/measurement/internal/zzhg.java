package com.google.android.gms.measurement.internal;

import java.util.Map;

/* loaded from: classes2.dex */
final class zzhg implements com.google.android.gms.internal.measurement.zzo {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f11677a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzgy f11678b;

    public zzhg(zzgy zzgyVar, String str) {
        this.f11677a = str;
        this.f11678b = zzgyVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzo
    public final String zza(String str) {
        Map map = (Map) this.f11678b.f11652d.get(this.f11677a);
        if (map == null || !map.containsKey(str)) {
            return null;
        }
        return (String) map.get(str);
    }
}
