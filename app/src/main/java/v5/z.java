package v5;

import androidx.media3.common.util.Log;
import java.util.Collections;
import java.util.Map;
import kotlin.Pair;
import kotlin.collections.builders.MapBuilder;

/* loaded from: classes2.dex */
public abstract class z extends y {
    public static <K, V> Map<K, V> build(Map<K, V> builder) {
        kotlin.jvm.internal.j.checkNotNullParameter(builder, "builder");
        return ((MapBuilder) builder).build();
    }

    public static <K, V> Map<K, V> createMapBuilder() {
        return new MapBuilder();
    }

    public static int mapCapacity(int i2) {
        return i2 < 0 ? i2 : i2 < 3 ? i2 + 1 : i2 < 1073741824 ? (int) ((i2 / 0.75f) + 1.0f) : Log.LOG_LEVEL_OFF;
    }

    public static <K, V> Map<K, V> mapOf(Pair<? extends K, ? extends V> pair) {
        kotlin.jvm.internal.j.checkNotNullParameter(pair, "pair");
        Map<K, V> singletonMap = Collections.singletonMap(pair.getFirst(), pair.getSecond());
        kotlin.jvm.internal.j.checkNotNullExpressionValue(singletonMap, "singletonMap(...)");
        return singletonMap;
    }

    public static final <K, V> Map<K, V> toSingletonMap(Map<? extends K, ? extends V> map) {
        kotlin.jvm.internal.j.checkNotNullParameter(map, "<this>");
        Map.Entry<? extends K, ? extends V> next = map.entrySet().iterator().next();
        Map<K, V> singletonMap = Collections.singletonMap(next.getKey(), next.getValue());
        kotlin.jvm.internal.j.checkNotNullExpressionValue(singletonMap, "with(...)");
        return singletonMap;
    }
}
