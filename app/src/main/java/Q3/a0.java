package Q3;

import java.util.Comparator;

/* loaded from: classes2.dex */
public abstract class a0 {
    public static Z hashKeys() {
        return hashKeys(8);
    }

    public static Z treeKeys() {
        return treeKeys(com.google.common.collect.G.natural());
    }

    public static Z hashKeys(int i2) {
        V3.r.b(i2, "expectedKeys");
        return new com.google.common.collect.D(i2);
    }

    public static <K0> Z treeKeys(Comparator<K0> comparator) {
        P3.v.checkNotNull(comparator);
        return new X(comparator);
    }
}
