package R5;

import kotlin.Result;
import u5.C1711j;

/* loaded from: classes2.dex */
public final class J0 extends v0 {

    /* renamed from: m, reason: collision with root package name */
    public final C0287n f3149m;

    public J0(C0287n c0287n) {
        this.f3149m = c0287n;
    }

    @Override // H5.l
    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
        invoke((Throwable) obj);
        return C1711j.f20329a;
    }

    @Override // R5.C
    public void invoke(Throwable th) {
        Object state$kotlinx_coroutines_core = getJob().getState$kotlinx_coroutines_core();
        boolean z6 = state$kotlinx_coroutines_core instanceof A;
        C0287n c0287n = this.f3149m;
        if (z6) {
            int i2 = Result.f17390b;
            c0287n.resumeWith(Result.m103constructorimpl(kotlin.b.createFailure(((A) state$kotlinx_coroutines_core).f3131a)));
        } else {
            int i7 = Result.f17390b;
            c0287n.resumeWith(Result.m103constructorimpl(B0.unboxState(state$kotlinx_coroutines_core)));
        }
    }
}
