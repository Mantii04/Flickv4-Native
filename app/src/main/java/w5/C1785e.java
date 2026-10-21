package w5;

import kotlin.collections.builders.MapBuilder;

/* renamed from: w5.e, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1785e {
    public C1785e(kotlin.jvm.internal.g gVar) {
    }

    public static final int access$computeHashSize(C1785e c1785e, int i2) {
        c1785e.getClass();
        return Integer.highestOneBit(M5.g.coerceAtLeast(i2, 1) * 3);
    }

    public static final int access$computeShift(C1785e c1785e, int i2) {
        c1785e.getClass();
        return Integer.numberOfLeadingZeros(i2) + 1;
    }

    public final MapBuilder getEmpty$kotlin_stdlib() {
        MapBuilder mapBuilder;
        mapBuilder = MapBuilder.f17409x;
        return mapBuilder;
    }
}
