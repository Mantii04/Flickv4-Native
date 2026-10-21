package R5;

import java.util.concurrent.CancellationException;
import y5.InterfaceC1952k;

/* renamed from: R5.u0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC0301u0 {
    public static final InterfaceC0305y Job(InterfaceC0294q0 interfaceC0294q0) {
        return new C0297s0(interfaceC0294q0);
    }

    public static /* synthetic */ InterfaceC0305y Job$default(InterfaceC0294q0 interfaceC0294q0, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            interfaceC0294q0 = null;
        }
        return AbstractC0299t0.Job(interfaceC0294q0);
    }

    public static final void cancel(InterfaceC1952k interfaceC1952k, CancellationException cancellationException) {
        InterfaceC0294q0 interfaceC0294q0 = (InterfaceC0294q0) interfaceC1952k.get(F.f3147e);
        if (interfaceC0294q0 != null) {
            interfaceC0294q0.cancel(cancellationException);
        }
    }

    public static /* synthetic */ void cancel$default(InterfaceC1952k interfaceC1952k, CancellationException cancellationException, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            cancellationException = null;
        }
        AbstractC0299t0.cancel(interfaceC1952k, cancellationException);
    }

    public static final void ensureActive(InterfaceC0294q0 interfaceC0294q0) {
        if (!interfaceC0294q0.isActive()) {
            throw ((A0) interfaceC0294q0).getCancellationException();
        }
    }

    public static final void ensureActive(InterfaceC1952k interfaceC1952k) {
        InterfaceC0294q0 interfaceC0294q0 = (InterfaceC0294q0) interfaceC1952k.get(F.f3147e);
        if (interfaceC0294q0 != null) {
            AbstractC0299t0.ensureActive(interfaceC0294q0);
        }
    }
}
