package K1;

import java.util.Iterator;
import java.util.Set;

/* loaded from: classes.dex */
public abstract class X {
    public static void insertTags(Y y6, String id, Set<String> tags) {
        kotlin.jvm.internal.j.checkNotNullParameter(id, "id");
        kotlin.jvm.internal.j.checkNotNullParameter(tags, "tags");
        Iterator<T> it = tags.iterator();
        while (it.hasNext()) {
            ((b0) y6).insert(new W((String) it.next(), id));
        }
    }
}
