package Q3;

import java.util.Collection;
import java.util.Map;
import java.util.Set;

/* loaded from: classes2.dex */
public interface W {
    Map<Object, Collection<Object>> asMap();

    void clear();

    boolean containsEntry(Object obj, Object obj2);

    Collection<Map.Entry<Object, Object>> entries();

    Collection<Object> get(Object obj);

    boolean isEmpty();

    Set<Object> keySet();

    boolean put(Object obj, Object obj2);

    boolean remove(Object obj, Object obj2);

    int size();

    Collection<Object> values();
}
