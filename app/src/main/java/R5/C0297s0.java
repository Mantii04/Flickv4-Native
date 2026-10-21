package R5;

/* renamed from: R5.s0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0297s0 extends A0 implements InterfaceC0305y {

    /* renamed from: f, reason: collision with root package name */
    public final boolean f3193f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0297s0(InterfaceC0294q0 interfaceC0294q0) {
        super(true);
        A0 job;
        boolean z6 = true;
        initParentJob(interfaceC0294q0);
        InterfaceC0296s parentHandle$kotlinx_coroutines_core = getParentHandle$kotlinx_coroutines_core();
        C0298t c0298t = parentHandle$kotlinx_coroutines_core instanceof C0298t ? (C0298t) parentHandle$kotlinx_coroutines_core : null;
        if (c0298t != null && (job = c0298t.getJob()) != null) {
            while (!job.getHandlesException$kotlinx_coroutines_core()) {
                InterfaceC0296s parentHandle$kotlinx_coroutines_core2 = job.getParentHandle$kotlinx_coroutines_core();
                C0298t c0298t2 = parentHandle$kotlinx_coroutines_core2 instanceof C0298t ? (C0298t) parentHandle$kotlinx_coroutines_core2 : null;
                if (c0298t2 != null && (job = c0298t2.getJob()) != null) {
                }
            }
            this.f3193f = z6;
        }
        z6 = false;
        this.f3193f = z6;
    }

    @Override // R5.A0
    public boolean getHandlesException$kotlinx_coroutines_core() {
        return this.f3193f;
    }

    @Override // R5.A0
    public boolean getOnCancelComplete$kotlinx_coroutines_core() {
        return true;
    }
}
