package R5;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import u5.C1711j;

/* renamed from: R5.n0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0288n0 extends AbstractC0295r0 {

    /* renamed from: n, reason: collision with root package name */
    public static final AtomicIntegerFieldUpdater f3187n = AtomicIntegerFieldUpdater.newUpdater(C0288n0.class, "_invoked");
    private volatile int _invoked;

    /* renamed from: m, reason: collision with root package name */
    public final H5.l f3188m;

    public C0288n0(H5.l lVar) {
        this.f3188m = lVar;
    }

    @Override // H5.l
    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
        invoke((Throwable) obj);
        return C1711j.f20329a;
    }

    @Override // R5.C
    public void invoke(Throwable th) {
        if (f3187n.compareAndSet(this, 0, 1)) {
            this.f3188m.invoke(th);
        }
    }
}
