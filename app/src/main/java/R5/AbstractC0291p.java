package R5;

import W5.C0362i;
import y5.InterfaceC1944c;

/* renamed from: R5.p, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0291p {
    public static final void disposeOnCancellation(InterfaceC0285m interfaceC0285m, V v6) {
        interfaceC0285m.invokeOnCancellation(new W(v6));
    }

    public static final <T> C0287n getOrCreateCancellableContinuation(InterfaceC1944c interfaceC1944c) {
        if (!(interfaceC1944c instanceof C0362i)) {
            return new C0287n(interfaceC1944c, 1);
        }
        C0287n claimReusableCancellableContinuation = ((C0362i) interfaceC1944c).claimReusableCancellableContinuation();
        if (claimReusableCancellableContinuation != null) {
            if (!claimReusableCancellableContinuation.resetStateReusable()) {
                claimReusableCancellableContinuation = null;
            }
            if (claimReusableCancellableContinuation != null) {
                return claimReusableCancellableContinuation;
            }
        }
        return new C0287n(interfaceC1944c, 2);
    }
}
