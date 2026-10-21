package R5;

import W5.AbstractC0363j;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import y5.InterfaceC1944c;
import y5.InterfaceC1952k;
import z5.AbstractC2008a;

/* loaded from: classes2.dex */
public final class Q extends W5.C {

    /* renamed from: m, reason: collision with root package name */
    public static final AtomicIntegerFieldUpdater f3156m = AtomicIntegerFieldUpdater.newUpdater(Q.class, "_decision");
    private volatile int _decision;

    public Q(InterfaceC1952k interfaceC1952k, InterfaceC1944c interfaceC1944c) {
        super(interfaceC1952k, interfaceC1944c);
    }

    @Override // W5.C, R5.A0
    public void afterCompletion(Object obj) {
        afterResume(obj);
    }

    @Override // W5.C, R5.AbstractC0261a
    public void afterResume(Object obj) {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
        do {
            atomicIntegerFieldUpdater = f3156m;
            int i2 = atomicIntegerFieldUpdater.get(this);
            if (i2 != 0) {
                if (i2 != 1) {
                    throw new IllegalStateException("Already resumed");
                }
                InterfaceC1944c interfaceC1944c = this.f4175j;
                AbstractC0363j.resumeCancellableWith$default(IntrinsicsKt__IntrinsicsJvmKt.intercepted(interfaceC1944c), D.recoverResult(obj, interfaceC1944c), null, 2, null);
                return;
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, 0, 2));
    }

    public final Object getResult() {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
        do {
            atomicIntegerFieldUpdater = f3156m;
            int i2 = atomicIntegerFieldUpdater.get(this);
            if (i2 != 0) {
                if (i2 != 2) {
                    throw new IllegalStateException("Already suspended");
                }
                Object unboxState = B0.unboxState(getState$kotlinx_coroutines_core());
                if (unboxState instanceof A) {
                    throw ((A) unboxState).f3131a;
                }
                return unboxState;
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, 0, 1));
        return AbstractC2008a.getCOROUTINE_SUSPENDED();
    }
}
