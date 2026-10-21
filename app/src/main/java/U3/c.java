package U3;

import P3.v;

/* loaded from: classes2.dex */
public abstract class c {
    public static char checkedCast(long j7) {
        char c7 = (char) j7;
        v.checkArgument(((long) c7) == j7, "Out of range: %s", j7);
        return c7;
    }

    public static boolean contains(char[] cArr, char c7) {
        for (char c8 : cArr) {
            if (c8 == c7) {
                return true;
            }
        }
        return false;
    }

    public static char fromBytes(byte b7, byte b8) {
        return (char) ((b7 << 8) | (b8 & 255));
    }
}
