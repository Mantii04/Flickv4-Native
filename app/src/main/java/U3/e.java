package U3;

import java.util.Arrays;

/* loaded from: classes2.dex */
public abstract class e {

    /* renamed from: a, reason: collision with root package name */
    public static final byte[] f3796a;

    static {
        byte[] bArr = new byte[128];
        Arrays.fill(bArr, (byte) -1);
        for (int i2 = 0; i2 < 10; i2++) {
            bArr[i2 + 48] = (byte) i2;
        }
        for (int i7 = 0; i7 < 26; i7++) {
            byte b7 = (byte) (i7 + 10);
            bArr[i7 + 65] = b7;
            bArr[i7 + 97] = b7;
        }
        f3796a = bArr;
    }
}
