package V3;

import sun.misc.Unsafe;

/* renamed from: V3.h, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC0347h {
    public static /* synthetic */ boolean a(Unsafe unsafe, com.google.common.util.concurrent.b bVar, long j7, C0352m c0352m, C0352m c0352m2) {
        while (!unsafe.compareAndSwapObject(bVar, j7, c0352m, c0352m2)) {
            if (unsafe.getObject(bVar, j7) != c0352m) {
                return false;
            }
        }
        return true;
    }
}
