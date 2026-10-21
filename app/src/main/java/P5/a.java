package P5;

/* loaded from: classes2.dex */
public abstract class a {
    public static int checkRadix(int i2) {
        if (2 <= i2 && i2 < 37) {
            return i2;
        }
        StringBuilder q6 = A.i.q(i2, "radix ", " was not in valid range ");
        q6.append(new M5.e(2, 36));
        throw new IllegalArgumentException(q6.toString());
    }

    public static final int digitOf(char c7, int i2) {
        return Character.digit((int) c7, i2);
    }

    public static final boolean isWhitespace(char c7) {
        return Character.isWhitespace(c7) || Character.isSpaceChar(c7);
    }
}
