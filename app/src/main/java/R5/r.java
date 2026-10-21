package R5;

import u5.C1711j;

/* loaded from: classes2.dex */
public final class r extends AbstractC0295r0 {

    /* renamed from: m, reason: collision with root package name */
    public final C0287n f3192m;

    public r(C0287n c0287n) {
        this.f3192m = c0287n;
    }

    @Override // H5.l
    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
        invoke((Throwable) obj);
        return C1711j.f20329a;
    }

    @Override // R5.C
    public void invoke(Throwable th) {
        A0 job = getJob();
        C0287n c0287n = this.f3192m;
        c0287n.parentCancelled$kotlinx_coroutines_core(c0287n.getContinuationCancellationCause(job));
    }
}
