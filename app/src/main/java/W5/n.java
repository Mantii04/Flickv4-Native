package W5;

/* loaded from: classes2.dex */
public abstract class n {
    public static final void checkParallelism(int i2) {
        if (i2 < 1) {
            throw new IllegalArgumentException(A.i.f(i2, "Expected positive parallelism level, but got ").toString());
        }
    }
}
