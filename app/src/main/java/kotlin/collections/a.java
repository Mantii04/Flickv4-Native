package kotlin.collections;

import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.jvm.internal.j;
import v5.y;
import v5.z;

/* loaded from: classes2.dex */
public abstract class a extends z {
    public static <K, V> Map<K, V> emptyMap() {
        EmptyMap emptyMap = EmptyMap.f17397b;
        j.checkNotNull(emptyMap, "null cannot be cast to non-null type kotlin.collections.Map<K of kotlin.collections.MapsKt__MapsKt.emptyMap, V of kotlin.collections.MapsKt__MapsKt.emptyMap>");
        return emptyMap;
    }

    public static <K, V> V getValue(Map<K, ? extends V> map, K k7) {
        j.checkNotNullParameter(map, "<this>");
        return (V) y.getOrImplicitDefaultNullable(map, k7);
    }

    public static <K, V> Map<K, V> mapOf(Pair<? extends K, ? extends V>... pairs) {
        j.checkNotNullParameter(pairs, "pairs");
        return pairs.length > 0 ? toMap(pairs, new LinkedHashMap(z.mapCapacity(pairs.length))) : emptyMap();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <K, V> Map<K, V> optimizeReadOnlyMap(Map<K, ? extends V> map) {
        j.checkNotNullParameter(map, "<this>");
        int size = map.size();
        return size != 0 ? size != 1 ? map : z.toSingletonMap(map) : emptyMap();
    }

    public static <K, V> Map<K, V> plus(Map<? extends K, ? extends V> map, Pair<? extends K, ? extends V> pair) {
        j.checkNotNullParameter(map, "<this>");
        j.checkNotNullParameter(pair, "pair");
        if (map.isEmpty()) {
            return z.mapOf(pair);
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        linkedHashMap.put(pair.getFirst(), pair.getSecond());
        return linkedHashMap;
    }

    public static final <K, V> void putAll(Map<? super K, ? super V> map, Pair<? extends K, ? extends V>[] pairs) {
        j.checkNotNullParameter(map, "<this>");
        j.checkNotNullParameter(pairs, "pairs");
        for (Pair<? extends K, ? extends V> pair : pairs) {
            map.put(pair.component1(), pair.component2());
        }
    }

    public static <K, V> Map<K, V> toMap(Iterable<? extends Pair<? extends K, ? extends V>> iterable) {
        j.checkNotNullParameter(iterable, "<this>");
        if (!(iterable instanceof Collection)) {
            return optimizeReadOnlyMap(toMap(iterable, new LinkedHashMap()));
        }
        Collection collection = (Collection) iterable;
        int size = collection.size();
        if (size == 0) {
            return emptyMap();
        }
        if (size != 1) {
            return toMap(iterable, new LinkedHashMap(z.mapCapacity(collection.size())));
        }
        return z.mapOf(iterable instanceof List ? (Pair<? extends K, ? extends V>) ((List) iterable).get(0) : iterable.iterator().next());
    }

    public static <K, V> Map<K, V> toMutableMap(Map<? extends K, ? extends V> map) {
        j.checkNotNullParameter(map, "<this>");
        return new LinkedHashMap(map);
    }

    public static final <K, V> void putAll(Map<? super K, ? super V> map, Iterable<? extends Pair<? extends K, ? extends V>> pairs) {
        j.checkNotNullParameter(map, "<this>");
        j.checkNotNullParameter(pairs, "pairs");
        for (Pair<? extends K, ? extends V> pair : pairs) {
            map.put(pair.component1(), pair.component2());
        }
    }

    public static final <K, V, M extends Map<? super K, ? super V>> M toMap(Iterable<? extends Pair<? extends K, ? extends V>> iterable, M destination) {
        j.checkNotNullParameter(iterable, "<this>");
        j.checkNotNullParameter(destination, "destination");
        putAll(destination, iterable);
        return destination;
    }

    public static final <K, V, M extends Map<? super K, ? super V>> M toMap(Pair<? extends K, ? extends V>[] pairArr, M destination) {
        j.checkNotNullParameter(pairArr, "<this>");
        j.checkNotNullParameter(destination, "destination");
        putAll(destination, pairArr);
        return destination;
    }

    public static <K, V> Map<K, V> toMap(Map<? extends K, ? extends V> map) {
        j.checkNotNullParameter(map, "<this>");
        int size = map.size();
        if (size == 0) {
            return emptyMap();
        }
        if (size != 1) {
            return toMutableMap(map);
        }
        return z.toSingletonMap(map);
    }
}
