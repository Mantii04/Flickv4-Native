package W5;

import R5.P;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import y5.InterfaceC1952k;

/* renamed from: W5.m, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0366m extends R5.E implements P {

    /* renamed from: p, reason: collision with root package name */
    public static final AtomicIntegerFieldUpdater f4201p = AtomicIntegerFieldUpdater.newUpdater(C0366m.class, "runningWorkers");

    /* renamed from: f, reason: collision with root package name */
    public final R5.E f4202f;

    /* renamed from: j, reason: collision with root package name */
    public final int f4203j;

    /* renamed from: m, reason: collision with root package name */
    public final r f4204m;

    /* renamed from: n, reason: collision with root package name */
    public final Object f4205n;
    private volatile int runningWorkers;

    /* JADX WARN: Multi-variable type inference failed */
    public C0366m(R5.E e3, int i2) {
        this.f4202f = e3;
        this.f4203j = i2;
        if ((e3 instanceof P ? (P) e3 : null) == null) {
            R5.M.getDefaultDelay();
        }
        this.f4204m = new r(false);
        this.f4205n = new Object();
    }

    public final Runnable a() {
        while (true) {
            Runnable runnable = (Runnable) this.f4204m.removeFirstOrNull();
            if (runnable != null) {
                return runnable;
            }
            synchronized (this.f4205n) {
                AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f4201p;
                atomicIntegerFieldUpdater.decrementAndGet(this);
                if (this.f4204m.getSize() == 0) {
                    return null;
                }
                atomicIntegerFieldUpdater.incrementAndGet(this);
            }
        }
    }

    @Override // R5.E
    public void dispatch(InterfaceC1952k interfaceC1952k, Runnable runnable) {
        this.f4204m.addLast(runnable);
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f4201p;
        if (atomicIntegerFieldUpdater.get(this) < this.f4203j) {
            synchronized (this.f4205n) {
                if (atomicIntegerFieldUpdater.get(this) >= this.f4203j) {
                    return;
                }
                atomicIntegerFieldUpdater.incrementAndGet(this);
                Runnable a7 = a();
                if (a7 == null) {
                    return;
                }
                this.f4202f.dispatch(this, new RunnableC0365l(this, a7));
            }
        }
    }
}
