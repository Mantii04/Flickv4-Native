package V3;

import sun.misc.Unsafe;

/* renamed from: V3.j, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC0349j {
    public static /* synthetic */ boolean a(Unsafe unsafe, com.google.common.util.concurrent.b bVar, long j7, Object obj, Object obj2) {
        while (!unsafe.compareAndSwapObject(bVar, j7, obj, obj2)) {
            if (unsafe.getObject(bVar, j7) != obj) {
                return false;
            }
        }
        return true;
    }
}
