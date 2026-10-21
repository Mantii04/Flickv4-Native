package q;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.internal.j;

/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public final LinkedHashMap f19547a;

    public c(int i2, float f3) {
        this.f19547a = new LinkedHashMap(i2, f3, true);
    }

    public final Object get(Object key) {
        j.checkNotNullParameter(key, "key");
        return this.f19547a.get(key);
    }

    public final Set<Map.Entry<Object, Object>> getEntries() {
        Set<Map.Entry<Object, Object>> entrySet = this.f19547a.entrySet();
        j.checkNotNullExpressionValue(entrySet, "map.entries");
        return entrySet;
    }

    public final boolean isEmpty() {
        return this.f19547a.isEmpty();
    }

    public final Object put(Object key, Object value) {
        j.checkNotNullParameter(key, "key");
        j.checkNotNullParameter(value, "value");
        return this.f19547a.put(key, value);
    }

    public final Object remove(Object key) {
        j.checkNotNullParameter(key, "key");
        return this.f19547a.remove(key);
    }
}
