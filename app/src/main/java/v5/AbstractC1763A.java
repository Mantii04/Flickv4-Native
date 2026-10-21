package v5;

import java.util.Collections;
import java.util.Set;
import kotlin.collections.builders.SetBuilder;

/* renamed from: v5.A, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC1763A {
    public static <E> Set<E> build(Set<E> builder) {
        kotlin.jvm.internal.j.checkNotNullParameter(builder, "builder");
        return ((SetBuilder) builder).build();
    }

    public static <E> Set<E> createSetBuilder() {
        return new SetBuilder();
    }

    public static <T> Set<T> setOf(T t6) {
        Set<T> singleton = Collections.singleton(t6);
        kotlin.jvm.internal.j.checkNotNullExpressionValue(singleton, "singleton(...)");
        return singleton;
    }
}
