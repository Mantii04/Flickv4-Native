package R5;

import y5.InterfaceC1944c;
import z5.AbstractC2008a;

/* renamed from: R5.w, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0303w extends A0 implements InterfaceC0302v {
    public C0303w(InterfaceC0294q0 interfaceC0294q0) {
        super(true);
        initParentJob(interfaceC0294q0);
    }

    public Object await(InterfaceC1944c interfaceC1944c) {
        Object awaitInternal = awaitInternal(interfaceC1944c);
        AbstractC2008a.getCOROUTINE_SUSPENDED();
        return awaitInternal;
    }

    public boolean complete(Object obj) {
        return makeCompleting$kotlinx_coroutines_core(obj);
    }

    public boolean completeExceptionally(Throwable th) {
        return makeCompleting$kotlinx_coroutines_core(new A(th, false, 2, null));
    }

    @Override // R5.N
    public Object getCompleted() {
        return getCompletedInternal$kotlinx_coroutines_core();
    }

    @Override // R5.A0
    public boolean getOnCancelComplete$kotlinx_coroutines_core() {
        return true;
    }
}
