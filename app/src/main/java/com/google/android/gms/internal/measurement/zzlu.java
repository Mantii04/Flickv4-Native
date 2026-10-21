package com.google.android.gms.internal.measurement;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* loaded from: classes2.dex */
final class zzlu {
    private static final zzlu zza = new zzlu();
    private final ConcurrentMap<Class<?>, zzly<?>> zzc = new ConcurrentHashMap();
    private final zzlx zzb = new zzku();

    private zzlu() {
    }

    public static zzlu zza() {
        return zza;
    }

    public final <T> zzly<T> zza(Class<T> cls) {
        zzjw.zza(cls, "messageType");
        zzly<T> zzlyVar = (zzly) this.zzc.get(cls);
        if (zzlyVar == null) {
            zzlyVar = this.zzb.zza(cls);
            zzjw.zza(cls, "messageType");
            zzjw.zza(zzlyVar, "schema");
            zzly<T> zzlyVar2 = (zzly) this.zzc.putIfAbsent(cls, zzlyVar);
            if (zzlyVar2 != null) {
                return zzlyVar2;
            }
        }
        return zzlyVar;
    }

    public final <T> zzly<T> zza(T t6) {
        return zza((Class) t6.getClass());
    }
}
