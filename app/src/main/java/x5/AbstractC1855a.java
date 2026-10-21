package x5;

import H5.l;
import java.util.Comparator;
import kotlin.jvm.internal.j;

/* renamed from: x5.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC1855a {
    public static <T extends Comparable<?>> int compareValues(T t6, T t7) {
        if (t6 == t7) {
            return 0;
        }
        if (t6 == null) {
            return -1;
        }
        if (t7 == null) {
            return 1;
        }
        return t6.compareTo(t7);
    }

    public static <T> int compareValuesBy(T t6, T t7, l... selectors) {
        j.checkNotNullParameter(selectors, "selectors");
        if (selectors.length <= 0) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        for (l lVar : selectors) {
            int compareValues = compareValues((Comparable) lVar.invoke(t6), (Comparable) lVar.invoke(t7));
            if (compareValues != 0) {
                return compareValues;
            }
        }
        return 0;
    }

    public static <T extends Comparable<? super T>> Comparator<T> naturalOrder() {
        C1856b c1856b = C1856b.f20932b;
        j.checkNotNull(c1856b, "null cannot be cast to non-null type java.util.Comparator<T of kotlin.comparisons.ComparisonsKt__ComparisonsKt.naturalOrder>{ kotlin.TypeAliasesKt.Comparator<T of kotlin.comparisons.ComparisonsKt__ComparisonsKt.naturalOrder> }");
        return c1856b;
    }
}
