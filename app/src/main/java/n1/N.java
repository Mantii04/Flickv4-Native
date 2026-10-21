package n1;

import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;

/* loaded from: classes.dex */
public final class N {
    public N(kotlin.jvm.internal.g gVar) {
    }

    public final O acquire(String query, int i2) {
        kotlin.jvm.internal.j.checkNotNullParameter(query, "query");
        TreeMap treeMap = O.f18801s;
        synchronized (treeMap) {
            Map.Entry ceilingEntry = treeMap.ceilingEntry(Integer.valueOf(i2));
            if (ceilingEntry == null) {
                O o6 = new O(i2, null);
                o6.init(query, i2);
                return o6;
            }
            treeMap.remove(ceilingEntry.getKey());
            O sqliteQuery = (O) ceilingEntry.getValue();
            sqliteQuery.init(query, i2);
            kotlin.jvm.internal.j.checkNotNullExpressionValue(sqliteQuery, "sqliteQuery");
            return sqliteQuery;
        }
    }

    public final void prunePoolLocked$room_runtime_release() {
        TreeMap treeMap = O.f18801s;
        if (treeMap.size() <= 15) {
            return;
        }
        int size = treeMap.size() - 10;
        Iterator it = treeMap.descendingKeySet().iterator();
        kotlin.jvm.internal.j.checkNotNullExpressionValue(it, "queryPool.descendingKeySet().iterator()");
        while (true) {
            int i2 = size - 1;
            if (size <= 0) {
                return;
            }
            it.next();
            it.remove();
            size = i2;
        }
    }
}
