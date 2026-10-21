package U3;

import P3.v;

/* loaded from: classes2.dex */
public abstract class g {
    public static byte checkedCast(long j7) {
        v.checkArgument((j7 >> 8) == 0, "out of range: %s", j7);
        return (byte) j7;
    }

    public static int toInt(byte b7) {
        return b7 & 255;
    }
}
