package v5;

import androidx.media3.common.util.Log;
import java.util.Collection;
import java.util.Iterator;

/* renamed from: v5.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1765a {
    public C1765a(kotlin.jvm.internal.g gVar) {
    }

    public final void checkBoundsIndexes$kotlin_stdlib(int i2, int i7, int i8) {
        if (i2 < 0 || i7 > i8) {
            StringBuilder p6 = A.i.p(i2, i7, "startIndex: ", ", endIndex: ", ", size: ");
            p6.append(i8);
            throw new IndexOutOfBoundsException(p6.toString());
        }
        if (i2 > i7) {
            throw new IllegalArgumentException(A.i.e(i2, i7, "startIndex: ", " > endIndex: "));
        }
    }

    public final void checkElementIndex$kotlin_stdlib(int i2, int i7) {
        if (i2 < 0 || i2 >= i7) {
            throw new IndexOutOfBoundsException(A.i.e(i2, i7, "index: ", ", size: "));
        }
    }

    public final void checkPositionIndex$kotlin_stdlib(int i2, int i7) {
        if (i2 < 0 || i2 > i7) {
            throw new IndexOutOfBoundsException(A.i.e(i2, i7, "index: ", ", size: "));
        }
    }

    public final void checkRangeIndexes$kotlin_stdlib(int i2, int i7, int i8) {
        if (i2 < 0 || i7 > i8) {
            StringBuilder p6 = A.i.p(i2, i7, "fromIndex: ", ", toIndex: ", ", size: ");
            p6.append(i8);
            throw new IndexOutOfBoundsException(p6.toString());
        }
        if (i2 > i7) {
            throw new IllegalArgumentException(A.i.e(i2, i7, "fromIndex: ", " > toIndex: "));
        }
    }

    public final int newCapacity$kotlin_stdlib(int i2, int i7) {
        int i8 = i2 + (i2 >> 1);
        if (i8 - i7 < 0) {
            i8 = i7;
        }
        if (i8 - 2147483639 <= 0) {
            return i8;
        }
        if (i7 > 2147483639) {
            return Log.LOG_LEVEL_OFF;
        }
        return 2147483639;
    }

    public final boolean orderedEquals$kotlin_stdlib(Collection<?> c7, Collection<?> other) {
        kotlin.jvm.internal.j.checkNotNullParameter(c7, "c");
        kotlin.jvm.internal.j.checkNotNullParameter(other, "other");
        if (c7.size() != other.size()) {
            return false;
        }
        Iterator<?> it = other.iterator();
        Iterator<?> it2 = c7.iterator();
        while (it2.hasNext()) {
            if (!kotlin.jvm.internal.j.areEqual(it2.next(), it.next())) {
                return false;
            }
        }
        return true;
    }

    public final int orderedHashCode$kotlin_stdlib(Collection<?> c7) {
        kotlin.jvm.internal.j.checkNotNullParameter(c7, "c");
        Iterator<?> it = c7.iterator();
        int i2 = 1;
        while (it.hasNext()) {
            Object next = it.next();
            i2 = (i2 * 31) + (next != null ? next.hashCode() : 0);
        }
        return i2;
    }
}
