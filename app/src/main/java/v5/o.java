package v5;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import kotlin.collections.builders.ListBuilder;

/* loaded from: classes2.dex */
public abstract class o {
    public static <E> List<E> build(List<E> builder) {
        kotlin.jvm.internal.j.checkNotNullParameter(builder, "builder");
        return ((ListBuilder) builder).build();
    }

    public static final <T> Object[] copyToArrayOfAny(T[] tArr, boolean z6) {
        kotlin.jvm.internal.j.checkNotNullParameter(tArr, "<this>");
        if (z6 && kotlin.jvm.internal.j.areEqual(tArr.getClass(), Object[].class)) {
            return tArr;
        }
        Object[] copyOf = Arrays.copyOf(tArr, tArr.length, Object[].class);
        kotlin.jvm.internal.j.checkNotNullExpressionValue(copyOf, "copyOf(...)");
        return copyOf;
    }

    public static <E> List<E> createListBuilder() {
        return new ListBuilder(0, 1, null);
    }

    public static <T> List<T> listOf(T t6) {
        List<T> singletonList = Collections.singletonList(t6);
        kotlin.jvm.internal.j.checkNotNullExpressionValue(singletonList, "singletonList(...)");
        return singletonList;
    }

    public static <T> T[] terminateCollectionToArray(int i2, T[] array) {
        kotlin.jvm.internal.j.checkNotNullParameter(array, "array");
        if (i2 < array.length) {
            array[i2] = null;
        }
        return array;
    }
}
