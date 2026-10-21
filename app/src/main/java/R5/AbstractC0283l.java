package R5;

/* renamed from: R5.l, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0283l {
    public static /* synthetic */ boolean cancel$default(InterfaceC0285m interfaceC0285m, Throwable th, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: cancel");
        }
        if ((i2 & 1) != 0) {
            th = null;
        }
        return interfaceC0285m.cancel(th);
    }
}
