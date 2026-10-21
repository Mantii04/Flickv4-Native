package R5;

import y5.InterfaceC1944c;

/* loaded from: classes2.dex */
public final class w0 extends C0287n {

    /* renamed from: r, reason: collision with root package name */
    public final A0 f3196r;

    public w0(InterfaceC1944c interfaceC1944c, A0 a02) {
        super(interfaceC1944c, 1);
        this.f3196r = a02;
    }

    @Override // R5.C0287n
    public Throwable getContinuationCancellationCause(InterfaceC0294q0 interfaceC0294q0) {
        Throwable rootCause;
        Object state$kotlinx_coroutines_core = this.f3196r.getState$kotlinx_coroutines_core();
        return (!(state$kotlinx_coroutines_core instanceof y0) || (rootCause = ((y0) state$kotlinx_coroutines_core).getRootCause()) == null) ? state$kotlinx_coroutines_core instanceof A ? ((A) state$kotlinx_coroutines_core).f3131a : ((A0) interfaceC0294q0).getCancellationException() : rootCause;
    }

    @Override // R5.C0287n
    public String nameString() {
        return "AwaitContinuation";
    }
}
