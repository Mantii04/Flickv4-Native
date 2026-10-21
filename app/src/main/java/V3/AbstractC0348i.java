package V3;

import sun.misc.Unsafe;

/* renamed from: V3.i, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC0348i {
    public static /* synthetic */ boolean a(Unsafe unsafe, com.google.common.util.concurrent.b bVar, long j7, C0341b c0341b, C0341b c0341b2) {
        while (!unsafe.compareAndSwapObject(bVar, j7, c0341b, c0341b2)) {
            if (unsafe.getObject(bVar, j7) != c0341b) {
                return false;
            }
        }
        return true;
    }
}
