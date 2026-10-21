package com.google.android.gms.internal.cast;

import A.i;
import java.io.Serializable;
import java.util.Collection;
import java.util.Map;
import java.util.Set;

/* loaded from: classes2.dex */
public abstract class zzft implements Map, Serializable {
    private transient zzfu zza;
    private transient zzfu zzb;
    private transient zzfm zzc;

    /* JADX WARN: Multi-variable type inference failed */
    public static zzft zzc(Iterable iterable) {
        zzfs zzfsVar = new zzfs(iterable instanceof Collection ? iterable.size() : 4);
        zzfsVar.zza(iterable);
        zzfr zzfrVar = zzfsVar.zzc;
        if (zzfrVar != null) {
            throw zzfrVar.zza();
        }
        zzgc zzh = zzgc.zzh(zzfsVar.zzb, zzfsVar.zza, zzfsVar);
        zzfr zzfrVar2 = zzfsVar.zzc;
        if (zzfrVar2 == null) {
            return zzh;
        }
        throw zzfrVar2.zza();
    }

    public static zzft zzd() {
        return zzgc.zza;
    }

    @Override // java.util.Map
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final boolean containsKey(Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.Map
    public final boolean containsValue(Object obj) {
        return values().contains(obj);
    }

    @Override // java.util.Map
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Map) {
            return entrySet().equals(((Map) obj).entrySet());
        }
        return false;
    }

    @Override // java.util.Map
    public abstract Object get(Object obj);

    @Override // java.util.Map
    public final Object getOrDefault(Object obj, Object obj2) {
        Object obj3 = get(obj);
        return obj3 != null ? obj3 : obj2;
    }

    @Override // java.util.Map
    public final int hashCode() {
        return zzge.zza(entrySet());
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.Map
    public final /* bridge */ /* synthetic */ Set keySet() {
        zzfu zzfuVar = this.zzb;
        if (zzfuVar != null) {
            return zzfuVar;
        }
        zzfu zzf = zzf();
        this.zzb = zzf;
        return zzf;
    }

    @Override // java.util.Map
    @Deprecated
    public final Object put(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @Deprecated
    public final void putAll(Map map) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @Deprecated
    public final Object remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    public final String toString() {
        int size = size();
        if (size < 0) {
            throw new IllegalArgumentException(i.f(size, "size cannot be negative but was: "));
        }
        StringBuilder sb = new StringBuilder((int) Math.min(size * 8, 1073741824L));
        sb.append('{');
        boolean z6 = true;
        for (Map.Entry entry : entrySet()) {
            if (!z6) {
                sb.append(", ");
            }
            sb.append(entry.getKey());
            sb.append('=');
            sb.append(entry.getValue());
            z6 = false;
        }
        sb.append('}');
        return sb.toString();
    }

    public abstract zzfm zza();

    @Override // java.util.Map
    /* renamed from: zzb, reason: merged with bridge method [inline-methods] */
    public final zzfm values() {
        zzfm zzfmVar = this.zzc;
        if (zzfmVar != null) {
            return zzfmVar;
        }
        zzfm zza = zza();
        this.zzc = zza;
        return zza;
    }

    public abstract zzfu zze();

    public abstract zzfu zzf();

    @Override // java.util.Map
    /* renamed from: zzg, reason: merged with bridge method [inline-methods] */
    public final zzfu entrySet() {
        zzfu zzfuVar = this.zza;
        if (zzfuVar != null) {
            return zzfuVar;
        }
        zzfu zze = zze();
        this.zza = zze;
        return zze;
    }
}
