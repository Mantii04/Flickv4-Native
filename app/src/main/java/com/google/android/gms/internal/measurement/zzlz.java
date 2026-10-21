package com.google.android.gms.internal.measurement;

import java.lang.Comparable;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

/* loaded from: classes2.dex */
class zzlz<K extends Comparable<K>, V> extends AbstractMap<K, V> {
    private final int zza;
    private List<zzmk> zzb;
    private Map<K, V> zzc;
    private boolean zzd;
    private volatile zzml zze;
    private Map<K, V> zzf;
    private volatile zzmd zzg;

    private final SortedMap<K, V> zzf() {
        zzg();
        if (this.zzc.isEmpty() && !(this.zzc instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.zzc = treeMap;
            this.zzf = treeMap.descendingMap();
        }
        return (SortedMap) this.zzc;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzg() {
        if (this.zzd) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        zzg();
        if (!this.zzb.isEmpty()) {
            this.zzb.clear();
        }
        if (this.zzc.isEmpty()) {
            return;
        }
        this.zzc.clear();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return zza((zzlz<K, V>) comparable) >= 0 || this.zzc.containsKey(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        if (this.zze == null) {
            this.zze = new zzml(this);
        }
        return this.zze;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzlz)) {
            return super.equals(obj);
        }
        zzlz zzlzVar = (zzlz) obj;
        int size = size();
        if (size != zzlzVar.size()) {
            return false;
        }
        int zza = zza();
        if (zza != zzlzVar.zza()) {
            return entrySet().equals(zzlzVar.entrySet());
        }
        for (int i2 = 0; i2 < zza; i2++) {
            if (!zzb(i2).equals(zzlzVar.zzb(i2))) {
                return false;
            }
        }
        if (zza != size) {
            return this.zzc.equals(zzlzVar.zzc);
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int zza = zza((zzlz<K, V>) comparable);
        return zza >= 0 ? (V) this.zzb.get(zza).getValue() : this.zzc.get(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int hashCode() {
        int zza = zza();
        int i2 = 0;
        for (int i7 = 0; i7 < zza; i7++) {
            i2 += this.zzb.get(i7).hashCode();
        }
        return this.zzc.size() > 0 ? this.zzc.hashCode() + i2 : i2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public /* synthetic */ Object put(Object obj, Object obj2) {
        return zza((zzlz<K, V>) obj, (Comparable) obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        zzg();
        Comparable comparable = (Comparable) obj;
        int zza = zza((zzlz<K, V>) comparable);
        if (zza >= 0) {
            return (V) zzc(zza);
        }
        if (this.zzc.isEmpty()) {
            return null;
        }
        return this.zzc.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.zzc.size() + this.zzb.size();
    }

    public final boolean zze() {
        return this.zzd;
    }

    private zzlz(int i2) {
        this.zza = i2;
        this.zzb = Collections.EMPTY_LIST;
        Map<K, V> map = Collections.EMPTY_MAP;
        this.zzc = map;
        this.zzf = map;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final V zzc(int i2) {
        zzg();
        V v6 = (V) this.zzb.remove(i2).getValue();
        if (!this.zzc.isEmpty()) {
            Iterator<Map.Entry<K, V>> it = zzf().entrySet().iterator();
            this.zzb.add(new zzmk(this, it.next()));
            it.remove();
        }
        return v6;
    }

    public final Iterable<Map.Entry<K, V>> zzb() {
        return this.zzc.isEmpty() ? zzmf.zza() : this.zzc.entrySet();
    }

    public void zzd() {
        if (this.zzd) {
            return;
        }
        this.zzc = this.zzc.isEmpty() ? Collections.EMPTY_MAP : Collections.unmodifiableMap(this.zzc);
        this.zzf = this.zzf.isEmpty() ? Collections.EMPTY_MAP : Collections.unmodifiableMap(this.zzf);
        this.zzd = true;
    }

    private final int zza(K k7) {
        int i2;
        int size = this.zzb.size();
        int i7 = size - 1;
        if (i7 >= 0) {
            int compareTo = k7.compareTo((Comparable) this.zzb.get(i7).getKey());
            if (compareTo > 0) {
                i2 = size + 1;
                return -i2;
            }
            if (compareTo == 0) {
                return i7;
            }
        }
        int i8 = 0;
        while (i8 <= i7) {
            int i9 = (i8 + i7) / 2;
            int compareTo2 = k7.compareTo((Comparable) this.zzb.get(i9).getKey());
            if (compareTo2 < 0) {
                i7 = i9 - 1;
            } else {
                if (compareTo2 <= 0) {
                    return i9;
                }
                i8 = i9 + 1;
            }
        }
        i2 = i8 + 1;
        return -i2;
    }

    public final Map.Entry<K, V> zzb(int i2) {
        return this.zzb.get(i2);
    }

    public final int zza() {
        return this.zzb.size();
    }

    public static <FieldDescriptorType extends zzjl<FieldDescriptorType>> zzlz<FieldDescriptorType, Object> zza(int i2) {
        return new zzmc(i2);
    }

    public final Set<Map.Entry<K, V>> zzc() {
        if (this.zzg == null) {
            this.zzg = new zzmd(this);
        }
        return this.zzg;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final V zza(K k7, V v6) {
        zzg();
        int zza = zza((zzlz<K, V>) k7);
        if (zza >= 0) {
            return (V) this.zzb.get(zza).setValue(v6);
        }
        zzg();
        if (this.zzb.isEmpty() && !(this.zzb instanceof ArrayList)) {
            this.zzb = new ArrayList(this.zza);
        }
        int i2 = -(zza + 1);
        if (i2 >= this.zza) {
            return zzf().put(k7, v6);
        }
        int size = this.zzb.size();
        int i7 = this.zza;
        if (size == i7) {
            zzmk remove = this.zzb.remove(i7 - 1);
            zzf().put((Comparable) remove.getKey(), remove.getValue());
        }
        this.zzb.add(i2, new zzmk(this, k7, v6));
        return null;
    }
}
