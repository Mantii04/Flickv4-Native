package C;

import java.lang.reflect.Array;

/* loaded from: classes.dex */
public abstract class l {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.lang.Object, java.lang.Object[]] */
    public static <T> T[] append(T[] tArr, int i2, T t6) {
        if (i2 + 1 > tArr.length) {
            ?? r02 = (Object[]) Array.newInstance(tArr.getClass().getComponentType(), growSize(i2));
            System.arraycopy(tArr, 0, r02, 0, i2);
            tArr = r02;
        }
        tArr[i2] = t6;
        return tArr;
    }

    public static int growSize(int i2) {
        if (i2 <= 4) {
            return 8;
        }
        return i2 * 2;
    }

    public static int[] append(int[] iArr, int i2, int i7) {
        if (i2 + 1 > iArr.length) {
            int[] iArr2 = new int[growSize(i2)];
            System.arraycopy(iArr, 0, iArr2, 0, i2);
            iArr = iArr2;
        }
        iArr[i2] = i7;
        return iArr;
    }
}
