package v5;

import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* loaded from: classes2.dex */
public abstract class r extends q {
    public static <T extends Comparable<? super T>> void sort(List<T> list) {
        kotlin.jvm.internal.j.checkNotNullParameter(list, "<this>");
        if (list.size() > 1) {
            Collections.sort(list);
        }
    }

    public static final <T> void sortWith(List<T> list, Comparator<? super T> comparator) {
        kotlin.jvm.internal.j.checkNotNullParameter(list, "<this>");
        kotlin.jvm.internal.j.checkNotNullParameter(comparator, "comparator");
        if (list.size() > 1) {
            Collections.sort(list, comparator);
        }
    }
}
