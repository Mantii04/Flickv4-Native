package com.google.android.gms.internal.cast;

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
class zzvv extends AbstractMap {
    private final int zza;
    private List zzb = Collections.EMPTY_LIST;
    private Map zzc;
    private boolean zzd;
    private volatile zzvt zze;
    private Map zzf;

    public /* synthetic */ zzvv(int i2, zzvu zzvuVar) {
        this.zza = i2;
        Map map = Collections.EMPTY_MAP;
        this.zzc = map;
        this.zzf = map;
    }

    private final int zzk(Comparable comparable) {
        int size = this.zzb.size();
        int i2 = size - 1;
        int i7 = 0;
        if (i2 >= 0) {
            int compareTo = comparable.compareTo(((zzvp) this.zzb.get(i2)).zza());
            if (compareTo > 0) {
                return -(size + 1);
            }
            if (compareTo == 0) {
                return i2;
            }
        }
        while (i7 <= i2) {
            int i8 = (i7 + i2) / 2;
            int compareTo2 = comparable.compareTo(((zzvp) this.zzb.get(i8)).zza());
            if (compareTo2 < 0) {
                i2 = i8 - 1;
            } else {
                if (compareTo2 <= 0) {
                    return i8;
                }
                i7 = i8 + 1;
            }
        }
        return -(i7 + 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object zzl(int i2) {
        zzn();
        Object value = ((zzvp) this.zzb.remove(i2)).getValue();
        if (!this.zzc.isEmpty()) {
            Iterator it = zzm().entrySet().iterator();
            List list = this.zzb;
            Map.Entry entry = (Map.Entry) it.next();
            list.add(new zzvp(this, (Comparable) entry.getKey(), entry.getValue()));
            it.remove();
        }
        return value;
    }

    private final SortedMap zzm() {
        zzn();
        if (this.zzc.isEmpty() && !(this.zzc instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.zzc = treeMap;
            this.zzf = treeMap.descendingMap();
        }
        return (SortedMap) this.zzc;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzn() {
        if (this.zzd) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        zzn();
        if (!this.zzb.isEmpty()) {
            this.zzb.clear();
        }
        if (this.zzc.isEmpty()) {
            return;
        }
        this.zzc.clear();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return zzk(comparable) >= 0 || this.zzc.containsKey(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        if (this.zze == null) {
            this.zze = new zzvt(this, null);
        }
        return this.zze;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzvv)) {
            return super.equals(obj);
        }
        zzvv zzvvVar = (zzvv) obj;
        int size = size();
        if (size != zzvvVar.size()) {
            return false;
        }
        int zzb = zzb();
        if (zzb != zzvvVar.zzb()) {
            return entrySet().equals(zzvvVar.entrySet());
        }
        for (int i2 = 0; i2 < zzb; i2++) {
            if (!zzg(i2).equals(zzvvVar.zzg(i2))) {
                return false;
            }
        }
        if (zzb != size) {
            return this.zzc.equals(zzvvVar.zzc);
        }
        return true;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int zzk = zzk(comparable);
        return zzk >= 0 ? ((zzvp) this.zzb.get(zzk)).getValue() : this.zzc.get(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        int zzb = zzb();
        int i2 = 0;
        for (int i7 = 0; i7 < zzb; i7++) {
            i2 += ((zzvp) this.zzb.get(i7)).hashCode();
        }
        return this.zzc.size() > 0 ? this.zzc.hashCode() + i2 : i2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        zzn();
        Comparable comparable = (Comparable) obj;
        int zzk = zzk(comparable);
        if (zzk >= 0) {
            return zzl(zzk);
        }
        if (this.zzc.isEmpty()) {
            return null;
        }
        return this.zzc.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.zzc.size() + this.zzb.size();
    }

    public void zza() {
        if (this.zzd) {
            return;
        }
        this.zzc = this.zzc.isEmpty() ? Collections.EMPTY_MAP : Collections.unmodifiableMap(this.zzc);
        this.zzf = this.zzf.isEmpty() ? Collections.EMPTY_MAP : Collections.unmodifiableMap(this.zzf);
        this.zzd = true;
    }

    public final int zzb() {
        return this.zzb.size();
    }

    public final Iterable zzc() {
        return this.zzc.isEmpty() ? zzvo.zza() : this.zzc.entrySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    /* renamed from: zze, reason: merged with bridge method [inline-methods] */
    public final Object put(Comparable comparable, Object obj) {
        zzn();
        int zzk = zzk(comparable);
        if (zzk >= 0) {
            return ((zzvp) this.zzb.get(zzk)).setValue(obj);
        }
        zzn();
        if (this.zzb.isEmpty() && !(this.zzb instanceof ArrayList)) {
            this.zzb = new ArrayList(this.zza);
        }
        int i2 = -(zzk + 1);
        if (i2 >= this.zza) {
            return zzm().put(comparable, obj);
        }
        int size = this.zzb.size();
        int i7 = this.zza;
        if (size == i7) {
            zzvp zzvpVar = (zzvp) this.zzb.remove(i7 - 1);
            zzm().put(zzvpVar.zza(), zzvpVar.getValue());
        }
        this.zzb.add(i2, new zzvp(this, comparable, obj));
        return null;
    }

    public final Map.Entry zzg(int i2) {
        return (Map.Entry) this.zzb.get(i2);
    }

    public final boolean zzj() {
        return this.zzd;
    }
}
