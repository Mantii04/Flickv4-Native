package R5;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* loaded from: classes2.dex */
public class A {

    /* renamed from: b, reason: collision with root package name */
    public static final AtomicIntegerFieldUpdater f3130b = AtomicIntegerFieldUpdater.newUpdater(A.class, "_handled");
    private volatile int _handled;

    /* renamed from: a, reason: collision with root package name */
    public final Throwable f3131a;

    public A(Throwable th, boolean z6) {
        this.f3131a = th;
        this._handled = z6 ? 1 : 0;
    }

    public final boolean getHandled() {
        return f3130b.get(this) != 0;
    }

    public final boolean makeHandled() {
        return f3130b.compareAndSet(this, 0, 1);
    }

    public String toString() {
        return K.getClassSimpleName(this) + '[' + this.f3131a + ']';
    }

    public /* synthetic */ A(Throwable th, boolean z6, int i2, kotlin.jvm.internal.g gVar) {
        this(th, (i2 & 2) != 0 ? false : z6);
    }
}
