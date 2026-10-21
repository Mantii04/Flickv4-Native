package v5;

import java.util.Collection;

/* loaded from: classes2.dex */
public abstract class q extends p {
    public static <T> int collectionSizeOrDefault(Iterable<? extends T> iterable, int i2) {
        kotlin.jvm.internal.j.checkNotNullParameter(iterable, "<this>");
        return iterable instanceof Collection ? ((Collection) iterable).size() : i2;
    }
}
