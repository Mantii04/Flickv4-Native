package R5;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* renamed from: R5.q, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0293q extends A {

    /* renamed from: c, reason: collision with root package name */
    public static final AtomicIntegerFieldUpdater f3191c = AtomicIntegerFieldUpdater.newUpdater(C0293q.class, "_resumed");
    private volatile int _resumed;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C0293q(y5.InterfaceC1944c r3, java.lang.Throwable r4, boolean r5) {
        /*
            r2 = this;
            if (r4 != 0) goto L1a
            java.util.concurrent.CancellationException r4 = new java.util.concurrent.CancellationException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "Continuation "
            r0.<init>(r1)
            r0.append(r3)
            java.lang.String r3 = " was cancelled normally"
            r0.append(r3)
            java.lang.String r3 = r0.toString()
            r4.<init>(r3)
        L1a:
            r2.<init>(r4, r5)
            r3 = 0
            r2._resumed = r3
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: R5.C0293q.<init>(y5.c, java.lang.Throwable, boolean):void");
    }

    public final boolean makeResumed() {
        return f3191c.compareAndSet(this, 0, 1);
    }
}
