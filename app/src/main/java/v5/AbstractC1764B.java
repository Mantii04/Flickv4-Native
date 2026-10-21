package v5;

import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.collections.EmptySet;

/* renamed from: v5.B, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC1764B extends AbstractC1763A {
    public static <T> Set<T> emptySet() {
        return EmptySet.f17398b;
    }

    public static <T> Set<T> mutableSetOf(T... elements) {
        kotlin.jvm.internal.j.checkNotNullParameter(elements, "elements");
        return (Set) n.toCollection(elements, new LinkedHashSet(z.mapCapacity(elements.length)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> Set<T> optimizeReadOnlySet(Set<? extends T> set) {
        kotlin.jvm.internal.j.checkNotNullParameter(set, "<this>");
        int size = set.size();
        return size != 0 ? size != 1 ? set : AbstractC1763A.setOf(set.iterator().next()) : emptySet();
    }
}
