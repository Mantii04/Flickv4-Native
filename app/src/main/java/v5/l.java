package v5;

import java.lang.reflect.Array;

/* loaded from: classes2.dex */
public abstract class l {
    public static final <T> T[] arrayOfNulls(T[] reference, int i2) {
        kotlin.jvm.internal.j.checkNotNullParameter(reference, "reference");
        Object newInstance = Array.newInstance(reference.getClass().getComponentType(), i2);
        kotlin.jvm.internal.j.checkNotNull(newInstance, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.arrayOfNulls>");
        return (T[]) ((Object[]) newInstance);
    }

    public static final void copyOfRangeToIndexCheck(int i2, int i7) {
        if (i2 <= i7) {
            return;
        }
        throw new IndexOutOfBoundsException("toIndex (" + i2 + ") is greater than size (" + i7 + ").");
    }
}
