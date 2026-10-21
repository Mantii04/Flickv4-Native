package w5;

import java.util.Arrays;
import java.util.Collection;
import java.util.List;

/* renamed from: w5.d, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC1784d {
    public static final boolean access$subarrayContentEquals(Object[] objArr, int i2, int i7, List list) {
        if (i7 == list.size()) {
            for (int i8 = 0; i8 < i7; i8++) {
                if (kotlin.jvm.internal.j.areEqual(objArr[i2 + i8], list.get(i8))) {
                }
            }
            return true;
        }
        return false;
    }

    public static final int access$subarrayContentHashCode(Object[] objArr, int i2, int i7) {
        int i8 = 1;
        for (int i9 = 0; i9 < i7; i9++) {
            Object obj = objArr[i2 + i9];
            i8 = (i8 * 31) + (obj != null ? obj.hashCode() : 0);
        }
        return i8;
    }

    public static final String access$subarrayContentToString(Object[] objArr, int i2, int i7, Collection collection) {
        StringBuilder sb = new StringBuilder((i7 * 3) + 2);
        sb.append("[");
        for (int i8 = 0; i8 < i7; i8++) {
            if (i8 > 0) {
                sb.append(", ");
            }
            Object obj = objArr[i2 + i8];
            if (obj == collection) {
                sb.append("(this Collection)");
            } else {
                sb.append(obj);
            }
        }
        sb.append("]");
        String sb2 = sb.toString();
        kotlin.jvm.internal.j.checkNotNullExpressionValue(sb2, "toString(...)");
        return sb2;
    }

    public static final <E> E[] arrayOfUninitializedElements(int i2) {
        if (i2 >= 0) {
            return (E[]) new Object[i2];
        }
        throw new IllegalArgumentException("capacity must be non-negative.");
    }

    public static final <T> T[] copyOfUninitializedElements(T[] tArr, int i2) {
        kotlin.jvm.internal.j.checkNotNullParameter(tArr, "<this>");
        T[] tArr2 = (T[]) Arrays.copyOf(tArr, i2);
        kotlin.jvm.internal.j.checkNotNullExpressionValue(tArr2, "copyOf(...)");
        return tArr2;
    }

    public static final <E> void resetAt(E[] eArr, int i2) {
        kotlin.jvm.internal.j.checkNotNullParameter(eArr, "<this>");
        eArr[i2] = null;
    }

    public static final <E> void resetRange(E[] eArr, int i2, int i7) {
        kotlin.jvm.internal.j.checkNotNullParameter(eArr, "<this>");
        while (i2 < i7) {
            resetAt(eArr, i2);
            i2++;
        }
    }
}
