package v5;

import java.util.Map;
import java.util.NoSuchElementException;

/* loaded from: classes2.dex */
public abstract class y {
    public static final <K, V> V getOrImplicitDefaultNullable(Map<K, ? extends V> map, K k7) {
        kotlin.jvm.internal.j.checkNotNullParameter(map, "<this>");
        if (map instanceof x) {
            return (V) ((x) map).b();
        }
        V v6 = map.get(k7);
        if (v6 != null || map.containsKey(k7)) {
            return v6;
        }
        throw new NoSuchElementException("Key " + k7 + " is missing in the map.");
    }
}
