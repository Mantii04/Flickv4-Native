package Y5;

import R5.AbstractC0272f0;
import y5.InterfaceC1952k;

/* loaded from: classes2.dex */
public abstract class h extends AbstractC0272f0 {

    /* renamed from: f, reason: collision with root package name */
    public final c f4422f;

    public h(int i2, int i7, long j7, String str) {
        this.f4422f = new c(i2, i7, j7, str);
    }

    @Override // R5.E
    public void dispatch(InterfaceC1952k interfaceC1952k, Runnable runnable) {
        c.dispatch$default(this.f4422f, runnable, null, false, 6, null);
    }

    public final void dispatchWithContext$kotlinx_coroutines_core(Runnable runnable, k kVar, boolean z6) {
        this.f4422f.dispatch(runnable, kVar, z6);
    }
}
