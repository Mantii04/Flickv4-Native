package M5;

import A.i;
import kotlin.jvm.internal.j;
import org.apache.commons.lang3.ClassUtils;

/* loaded from: classes2.dex */
public abstract class g extends f {
    public static int coerceAtLeast(int i2, int i7) {
        return i2 < i7 ? i7 : i2;
    }

    public static int coerceAtMost(int i2, int i7) {
        return i2 > i7 ? i7 : i2;
    }

    public static int coerceIn(int i2, int i7, int i8) {
        if (i7 <= i8) {
            return i2 < i7 ? i7 : i2 > i8 ? i8 : i2;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + i8 + " is less than minimum " + i7 + ClassUtils.PACKAGE_SEPARATOR_CHAR);
    }

    public static b downTo(int i2, int i7) {
        return b.f2107j.fromClosedRange(i2, i7, -1);
    }

    public static b step(b bVar, int i2) {
        j.checkNotNullParameter(bVar, "<this>");
        f.checkStepIsPositive(i2 > 0, Integer.valueOf(i2));
        a aVar = b.f2107j;
        int first = bVar.getFirst();
        int last = bVar.getLast();
        if (bVar.getStep() <= 0) {
            i2 = -i2;
        }
        return aVar.fromClosedRange(first, last, i2);
    }

    public static e until(int i2, int i7) {
        return i7 <= Integer.MIN_VALUE ? e.f2115m.getEMPTY() : new e(i2, i7 - 1);
    }

    public static long coerceAtLeast(long j7, long j8) {
        return j7 < j8 ? j8 : j7;
    }

    public static long coerceAtMost(long j7, long j8) {
        return j7 > j8 ? j8 : j7;
    }

    public static long coerceIn(long j7, long j8, long j9) {
        if (j8 <= j9) {
            return j7 < j8 ? j8 : j7 > j9 ? j9 : j7;
        }
        StringBuilder r6 = i.r(j9, "Cannot coerce value to an empty range: maximum ", " is less than minimum ");
        r6.append(j8);
        r6.append(ClassUtils.PACKAGE_SEPARATOR_CHAR);
        throw new IllegalArgumentException(r6.toString());
    }
}
