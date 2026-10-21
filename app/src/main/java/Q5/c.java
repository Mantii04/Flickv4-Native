package Q5;

/* loaded from: classes2.dex */
public abstract class c {
    static {
        ThreadLocal[] threadLocalArr = new ThreadLocal[4];
        for (int i2 = 0; i2 < 4; i2++) {
            threadLocalArr[i2] = new ThreadLocal();
        }
    }

    public static final boolean getDurationAssertionsEnabled() {
        return false;
    }
}
