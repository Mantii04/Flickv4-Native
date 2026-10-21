package U5;

import R5.C0287n;
import W5.G;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Result;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlinx.coroutines.flow.StateFlowImpl;
import u5.C1711j;
import y5.InterfaceC1944c;
import z5.AbstractC2008a;

/* loaded from: classes2.dex */
public final class n extends V5.c {

    /* renamed from: a, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f3804a = AtomicReferenceFieldUpdater.newUpdater(n.class, Object.class, "_state");
    private volatile Object _state;

    public final Object awaitPending(InterfaceC1944c interfaceC1944c) {
        G g7;
        C1711j c1711j;
        C0287n c0287n = new C0287n(IntrinsicsKt__IntrinsicsJvmKt.intercepted(interfaceC1944c), 1);
        c0287n.initCancellability();
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f3804a;
        g7 = m.f3802a;
        while (true) {
            boolean compareAndSet = atomicReferenceFieldUpdater.compareAndSet(this, g7, c0287n);
            c1711j = C1711j.f20329a;
            if (compareAndSet) {
                break;
            }
            if (atomicReferenceFieldUpdater.get(this) != g7) {
                int i2 = Result.f17390b;
                c0287n.resumeWith(Result.m103constructorimpl(c1711j));
                break;
            }
        }
        Object result = c0287n.getResult();
        if (result == AbstractC2008a.getCOROUTINE_SUSPENDED()) {
            A5.f.probeCoroutineSuspended(interfaceC1944c);
        }
        return result == AbstractC2008a.getCOROUTINE_SUSPENDED() ? result : c1711j;
    }

    public final void makePending() {
        G g7;
        G g8;
        G g9;
        G g10;
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f3804a;
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj == null) {
                return;
            }
            g7 = m.f3803b;
            if (obj == g7) {
                return;
            }
            g8 = m.f3802a;
            if (obj == g8) {
                g9 = m.f3803b;
                while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, g9)) {
                    if (atomicReferenceFieldUpdater.get(this) != obj) {
                        break;
                    }
                }
                return;
            }
            g10 = m.f3802a;
            while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, g10)) {
                if (atomicReferenceFieldUpdater.get(this) != obj) {
                    break;
                }
            }
            int i2 = Result.f17390b;
            ((C0287n) obj).resumeWith(Result.m103constructorimpl(C1711j.f20329a));
            return;
        }
    }

    public final boolean takePending() {
        G g7;
        G g8;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f3804a;
        g7 = m.f3802a;
        Object andSet = atomicReferenceFieldUpdater.getAndSet(this, g7);
        kotlin.jvm.internal.j.checkNotNull(andSet);
        g8 = m.f3803b;
        return andSet == g8;
    }

    @Override // V5.c
    public boolean allocateLocked(StateFlowImpl stateFlowImpl) {
        G g7;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f3804a;
        if (atomicReferenceFieldUpdater.get(this) != null) {
            return false;
        }
        g7 = m.f3802a;
        atomicReferenceFieldUpdater.set(this, g7);
        return true;
    }

    @Override // V5.c
    public InterfaceC1944c[] freeLocked(StateFlowImpl stateFlowImpl) {
        f3804a.set(this, null);
        return V5.b.f4026a;
    }
}
