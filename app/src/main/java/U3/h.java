package U3;

import P3.v;

/* loaded from: classes2.dex */
public abstract class h {
    public static int checkedCast(long j7) {
        v.checkArgument((j7 >> 32) == 0, "out of range: %s", j7);
        return (int) j7;
    }
}
