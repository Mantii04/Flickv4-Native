package com.google.common.collect;

import Q3.k0;
import Q3.v0;
import Q3.w0;
import com.google.common.collect.Cut;
import java.util.Map;
import java.util.TreeMap;

/* loaded from: classes2.dex */
public final class H implements k0 {

    /* renamed from: a, reason: collision with root package name */
    public final TreeMap f13061a = C.newTreeMap();

    public static <K extends Comparable, V> H create() {
        return new H();
    }

    @Override // Q3.k0
    public Map<Range<Comparable>, Object> asMapOfRanges() {
        return new v0(this, this.f13061a.values());
    }

    public boolean equals(Object obj) {
        if (obj instanceof k0) {
            return asMapOfRanges().equals(((k0) obj).asMapOfRanges());
        }
        return false;
    }

    public Object get(Comparable comparable) {
        Map.Entry<Range<Comparable>, Object> entry = getEntry(comparable);
        if (entry == null) {
            return null;
        }
        return entry.getValue();
    }

    public Map.Entry<Range<Comparable>, Object> getEntry(Comparable comparable) {
        Map.Entry floorEntry = this.f13061a.floorEntry(new Cut.BelowValue((Comparable) P3.v.checkNotNull(comparable)));
        if (floorEntry == null || !((w0) floorEntry.getValue()).contains(comparable)) {
            return null;
        }
        return (Map.Entry) floorEntry.getValue();
    }

    public int hashCode() {
        return asMapOfRanges().hashCode();
    }

    public void put(Range<Comparable> range, Object obj) {
        if (range.isEmpty()) {
            return;
        }
        P3.v.checkNotNull(obj);
        remove(range);
        w0 w0Var = new w0(range, obj);
        this.f13061a.put(range.f13094b, w0Var);
    }

    public void putAll(k0 k0Var) {
        for (Map.Entry<Range<Comparable>, Object> entry : k0Var.asMapOfRanges().entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    public void remove(Range<Comparable> range) {
        if (range.isEmpty()) {
            return;
        }
        TreeMap treeMap = this.f13061a;
        Cut cut = range.f13094b;
        Map.Entry lowerEntry = treeMap.lowerEntry(cut);
        Cut cut2 = range.f13095e;
        if (lowerEntry != null) {
            w0 w0Var = (w0) lowerEntry.getValue();
            if (w0Var.f2921b.f13095e.compareTo(cut) > 0) {
                Range range2 = w0Var.f2921b;
                Cut cut3 = range2.f13095e;
                if (cut3.compareTo(cut2) > 0) {
                    treeMap.put(cut2, new w0(new Range(cut2, cut3), ((w0) lowerEntry.getValue()).getValue()));
                }
                Object value = ((w0) lowerEntry.getValue()).getValue();
                Cut cut4 = range2.f13094b;
                treeMap.put(cut4, new w0(new Range(cut4, cut), value));
            }
        }
        Map.Entry lowerEntry2 = treeMap.lowerEntry(cut2);
        if (lowerEntry2 != null) {
            w0 w0Var2 = (w0) lowerEntry2.getValue();
            if (w0Var2.f2921b.f13095e.compareTo(cut2) > 0) {
                Range range3 = w0Var2.f2921b;
                treeMap.put(cut2, new w0(new Range(cut2, range3.f13095e), ((w0) lowerEntry2.getValue()).getValue()));
            }
        }
        treeMap.subMap(cut, cut2).clear();
    }

    public String toString() {
        return this.f13061a.values().toString();
    }
}
