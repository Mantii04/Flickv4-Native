package W5;

import R5.H0;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import y5.InterfaceC1952k;

/* loaded from: classes2.dex */
public abstract class D extends AbstractC0358e implements H0 {

    /* renamed from: j, reason: collision with root package name */
    public static final AtomicIntegerFieldUpdater f4176j = AtomicIntegerFieldUpdater.newUpdater(D.class, "cleanedAndPointers");
    private volatile int cleanedAndPointers;

    /* renamed from: f, reason: collision with root package name */
    public final long f4177f;

    public D(long j7, D d7, int i2) {
        super(d7);
        this.f4177f = j7;
        this.cleanedAndPointers = i2 << 16;
    }

    public final boolean decPointers$kotlinx_coroutines_core() {
        return f4176j.addAndGet(this, -65536) == getNumberOfSlots() && !isTail();
    }

    public abstract int getNumberOfSlots();

    @Override // W5.AbstractC0358e
    public boolean isRemoved() {
        return f4176j.get(this) == getNumberOfSlots() && !isTail();
    }

    public abstract void onCancellation(int i2, Throwable th, InterfaceC1952k interfaceC1952k);

    public final void onSlotCleaned() {
        if (f4176j.incrementAndGet(this) == getNumberOfSlots()) {
            remove();
        }
    }

    public final boolean tryIncPointers$kotlinx_coroutines_core() {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
        int i2;
        do {
            atomicIntegerFieldUpdater = f4176j;
            i2 = atomicIntegerFieldUpdater.get(this);
            if (i2 == getNumberOfSlots() && !isTail()) {
                return false;
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i2, 65536 + i2));
        return true;
    }
}
