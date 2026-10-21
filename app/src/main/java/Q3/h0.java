package Q3;

import java.util.Arrays;

/* loaded from: classes2.dex */
public abstract class h0 {
    public static void a(int i2, Object[] objArr) {
        for (int i7 = 0; i7 < i2; i7++) {
            if (objArr[i7] == null) {
                throw new NullPointerException(A.i.f(i7, "at index "));
            }
        }
    }

    public static <T> T[] newArray(T[] tArr, int i2) {
        if (tArr.length != 0) {
            tArr = (T[]) Arrays.copyOf(tArr, 0);
        }
        return (T[]) Arrays.copyOf(tArr, i2);
    }
}
