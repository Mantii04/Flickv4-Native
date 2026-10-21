package R5;

import y5.AbstractC1949h;
import y5.InterfaceC1950i;
import y5.InterfaceC1951j;
import y5.InterfaceC1952k;

/* renamed from: R5.p0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0292p0 {
    public static <R> R fold(InterfaceC0294q0 interfaceC0294q0, R r6, H5.p pVar) {
        return (R) AbstractC1949h.fold(interfaceC0294q0, r6, pVar);
    }

    public static <E extends InterfaceC1950i> E get(InterfaceC0294q0 interfaceC0294q0, InterfaceC1951j interfaceC1951j) {
        return (E) AbstractC1949h.get(interfaceC0294q0, interfaceC1951j);
    }

    public static /* synthetic */ V invokeOnCompletion$default(InterfaceC0294q0 interfaceC0294q0, boolean z6, boolean z7, H5.l lVar, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: invokeOnCompletion");
        }
        if ((i2 & 1) != 0) {
            z6 = false;
        }
        if ((i2 & 2) != 0) {
            z7 = true;
        }
        return ((A0) interfaceC0294q0).invokeOnCompletion(z6, z7, lVar);
    }

    public static InterfaceC1952k minusKey(InterfaceC0294q0 interfaceC0294q0, InterfaceC1951j interfaceC1951j) {
        return AbstractC1949h.minusKey(interfaceC0294q0, interfaceC1951j);
    }

    public static InterfaceC1952k plus(InterfaceC0294q0 interfaceC0294q0, InterfaceC1952k interfaceC1952k) {
        return AbstractC1949h.plus(interfaceC0294q0, interfaceC1952k);
    }
}
