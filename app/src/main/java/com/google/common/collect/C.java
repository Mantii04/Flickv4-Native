package com.google.common.collect;

import Q3.M;
import Q3.O;
import Q3.T;
import androidx.media3.common.util.Log;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.Map;
import java.util.TreeMap;

/* loaded from: classes2.dex */
public abstract class C {
    public static int a(int i2) {
        if (i2 >= 3) {
            return i2 < 1073741824 ? (int) Math.ceil(i2 / 0.75d) : Log.LOG_LEVEL_OFF;
        }
        V3.r.b(i2, "expectedSize");
        return i2 + 1;
    }

    public static String b(Map map) {
        int size = map.size();
        V3.r.b(size, "size");
        StringBuilder sb = new StringBuilder((int) Math.min(size * 8, 1073741824L));
        sb.append('{');
        boolean z6 = true;
        for (Map.Entry entry : map.entrySet()) {
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

    public static <K, V> Map.Entry<K, V> immutableEntry(K k7, V v6) {
        return new ImmutableEntry(k7, v6);
    }

    public static <K, V> HashMap<K, V> newHashMap() {
        return new HashMap<>();
    }

    public static <K, V> HashMap<K, V> newHashMapWithExpectedSize(int i2) {
        return new HashMap<>(a(i2));
    }

    public static <K, V> IdentityHashMap<K, V> newIdentityHashMap() {
        return new IdentityHashMap<>();
    }

    public static <K extends Comparable, V> TreeMap<K, V> newTreeMap() {
        return new TreeMap<>();
    }

    public static <K, V1, V2> Map<K, V2> transformEntries(Map<K, V1> map, O o6) {
        return new T(map, o6);
    }

    public static <K, V1, V2> Map<K, V2> transformValues(Map<K, V1> map, P3.p pVar) {
        P3.v.checkNotNull(pVar);
        return transformEntries(map, new M(pVar));
    }
}
