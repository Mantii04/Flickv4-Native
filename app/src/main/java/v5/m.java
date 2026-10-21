package v5;

import java.util.Arrays;
import java.util.Comparator;
import java.util.List;

/* loaded from: classes2.dex */
public abstract class m extends l {
    public static <T> List<T> asList(T[] tArr) {
        kotlin.jvm.internal.j.checkNotNullParameter(tArr, "<this>");
        List<T> asList = Arrays.asList(tArr);
        kotlin.jvm.internal.j.checkNotNullExpressionValue(asList, "asList(...)");
        return asList;
    }

    public static <T> T[] copyInto(T[] tArr, T[] destination, int i2, int i7, int i8) {
        kotlin.jvm.internal.j.checkNotNullParameter(tArr, "<this>");
        kotlin.jvm.internal.j.checkNotNullParameter(destination, "destination");
        System.arraycopy(tArr, i7, destination, i2, i8 - i7);
        return destination;
    }

    public static /* synthetic */ Object[] copyInto$default(Object[] objArr, Object[] objArr2, int i2, int i7, int i8, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            i2 = 0;
        }
        if ((i9 & 4) != 0) {
            i7 = 0;
        }
        if ((i9 & 8) != 0) {
            i8 = objArr.length;
        }
        return copyInto(objArr, objArr2, i2, i7, i8);
    }

    public static <T> T[] copyOfRange(T[] tArr, int i2, int i7) {
        kotlin.jvm.internal.j.checkNotNullParameter(tArr, "<this>");
        l.copyOfRangeToIndexCheck(i7, tArr.length);
        T[] tArr2 = (T[]) Arrays.copyOfRange(tArr, i2, i7);
        kotlin.jvm.internal.j.checkNotNullExpressionValue(tArr2, "copyOfRange(...)");
        return tArr2;
    }

    public static <T> void fill(T[] tArr, T t6, int i2, int i7) {
        kotlin.jvm.internal.j.checkNotNullParameter(tArr, "<this>");
        Arrays.fill(tArr, i2, i7, t6);
    }

    public static /* synthetic */ void fill$default(Object[] objArr, Object obj, int i2, int i7, int i8, Object obj2) {
        if ((i8 & 2) != 0) {
            i2 = 0;
        }
        if ((i8 & 4) != 0) {
            i7 = objArr.length;
        }
        fill(objArr, obj, i2, i7);
    }

    public static final <T> void sort(T[] tArr) {
        kotlin.jvm.internal.j.checkNotNullParameter(tArr, "<this>");
        if (tArr.length > 1) {
            Arrays.sort(tArr);
        }
    }

    public static final <T> void sortWith(T[] tArr, Comparator<? super T> comparator) {
        kotlin.jvm.internal.j.checkNotNullParameter(tArr, "<this>");
        kotlin.jvm.internal.j.checkNotNullParameter(comparator, "comparator");
        if (tArr.length > 1) {
            Arrays.sort(tArr, comparator);
        }
    }

    public static byte[] copyInto(byte[] bArr, byte[] destination, int i2, int i7, int i8) {
        kotlin.jvm.internal.j.checkNotNullParameter(bArr, "<this>");
        kotlin.jvm.internal.j.checkNotNullParameter(destination, "destination");
        System.arraycopy(bArr, i7, destination, i2, i8 - i7);
        return destination;
    }

    public static /* synthetic */ byte[] copyInto$default(byte[] bArr, byte[] bArr2, int i2, int i7, int i8, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            i2 = 0;
        }
        if ((i9 & 4) != 0) {
            i7 = 0;
        }
        if ((i9 & 8) != 0) {
            i8 = bArr.length;
        }
        return copyInto(bArr, bArr2, i2, i7, i8);
    }

    public static final void fill(int[] iArr, int i2, int i7, int i8) {
        kotlin.jvm.internal.j.checkNotNullParameter(iArr, "<this>");
        Arrays.fill(iArr, i7, i8, i2);
    }

    public static /* synthetic */ void fill$default(int[] iArr, int i2, int i7, int i8, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            i7 = 0;
        }
        if ((i9 & 4) != 0) {
            i8 = iArr.length;
        }
        fill(iArr, i2, i7, i8);
    }

    public static int[] copyInto(int[] iArr, int[] destination, int i2, int i7, int i8) {
        kotlin.jvm.internal.j.checkNotNullParameter(iArr, "<this>");
        kotlin.jvm.internal.j.checkNotNullParameter(destination, "destination");
        System.arraycopy(iArr, i7, destination, i2, i8 - i7);
        return destination;
    }

    public static /* synthetic */ int[] copyInto$default(int[] iArr, int[] iArr2, int i2, int i7, int i8, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            i2 = 0;
        }
        if ((i9 & 4) != 0) {
            i7 = 0;
        }
        if ((i9 & 8) != 0) {
            i8 = iArr.length;
        }
        return copyInto(iArr, iArr2, i2, i7, i8);
    }

    public static byte[] copyOfRange(byte[] bArr, int i2, int i7) {
        kotlin.jvm.internal.j.checkNotNullParameter(bArr, "<this>");
        l.copyOfRangeToIndexCheck(i7, bArr.length);
        byte[] copyOfRange = Arrays.copyOfRange(bArr, i2, i7);
        kotlin.jvm.internal.j.checkNotNullExpressionValue(copyOfRange, "copyOfRange(...)");
        return copyOfRange;
    }

    public static long[] copyInto(long[] jArr, long[] destination, int i2, int i7, int i8) {
        kotlin.jvm.internal.j.checkNotNullParameter(jArr, "<this>");
        kotlin.jvm.internal.j.checkNotNullParameter(destination, "destination");
        System.arraycopy(jArr, i7, destination, i2, i8 - i7);
        return destination;
    }
}
