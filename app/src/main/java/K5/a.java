package K5;

import java.util.Random;

/* loaded from: classes2.dex */
public abstract class a extends d {
    public abstract Random getImpl();

    @Override // K5.d
    public int nextInt() {
        return getImpl().nextInt();
    }

    @Override // K5.d
    public int nextInt(int i2) {
        return getImpl().nextInt(i2);
    }
}
