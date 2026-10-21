package M;

/* loaded from: classes.dex */
public abstract class f1 {
    public static int a(int i2) {
        if (i2 == 1) {
            return 0;
        }
        if (i2 == 2) {
            return 1;
        }
        if (i2 == 4) {
            return 2;
        }
        if (i2 == 8) {
            return 3;
        }
        if (i2 == 16) {
            return 4;
        }
        if (i2 == 32) {
            return 5;
        }
        if (i2 == 64) {
            return 6;
        }
        if (i2 == 128) {
            return 7;
        }
        if (i2 == 256) {
            return 8;
        }
        throw new IllegalArgumentException(A.i.f(i2, "type needs to be >= FIRST and <= LAST, type="));
    }

    public static int ime() {
        return 8;
    }

    public static int mandatorySystemGestures() {
        return 32;
    }

    public static int systemBars() {
        return 7;
    }
}
