package U3;

import P3.v;

/* loaded from: classes2.dex */
public abstract class b {
    public static byte[] concat(byte[]... bArr) {
        long j7 = 0;
        for (byte[] bArr2 : bArr) {
            j7 += bArr2.length;
        }
        int i2 = (int) j7;
        v.checkArgument(j7 == ((long) i2), "the total number of elements (%s) in the arrays must fit in an int", j7);
        byte[] bArr3 = new byte[i2];
        int i7 = 0;
        for (byte[] bArr4 : bArr) {
            System.arraycopy(bArr4, 0, bArr3, i7, bArr4.length);
            i7 += bArr4.length;
        }
        return bArr3;
    }
}
