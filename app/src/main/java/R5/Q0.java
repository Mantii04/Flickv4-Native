package R5;

import kotlin.Pair;
import u5.AbstractC1709h;
import y5.InterfaceC1944c;
import y5.InterfaceC1952k;

/* loaded from: classes2.dex */
public final class Q0 extends W5.C {

    /* renamed from: m, reason: collision with root package name */
    public final ThreadLocal f3157m;
    private volatile boolean threadLocalIsSet;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public Q0(y5.InterfaceC1952k r3, y5.InterfaceC1944c r4) {
        /*
            r2 = this;
            R5.R0 r0 = R5.R0.f3158b
            y5.i r1 = r3.get(r0)
            if (r1 != 0) goto Ld
            y5.k r0 = r3.plus(r0)
            goto Le
        Ld:
            r0 = r3
        Le:
            r2.<init>(r0, r4)
            java.lang.ThreadLocal r0 = new java.lang.ThreadLocal
            r0.<init>()
            r2.f3157m = r0
            y5.k r4 = r4.getContext()
            y5.e r0 = y5.C1946e.f21324b
            y5.i r4 = r4.get(r0)
            boolean r4 = r4 instanceof R5.E
            if (r4 != 0) goto L31
            r4 = 0
            java.lang.Object r4 = kotlinx.coroutines.internal.a.updateThreadContext(r3, r4)
            kotlinx.coroutines.internal.a.restoreThreadContext(r3, r4)
            r2.saveThreadContext(r3, r4)
        L31:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: R5.Q0.<init>(y5.k, y5.c):void");
    }

    @Override // W5.C, R5.AbstractC0261a
    public void afterResume(Object obj) {
        if (this.threadLocalIsSet) {
            Pair pair = (Pair) this.f3157m.get();
            if (pair != null) {
                kotlinx.coroutines.internal.a.restoreThreadContext((InterfaceC1952k) pair.component1(), pair.component2());
            }
            this.f3157m.remove();
        }
        Object recoverResult = D.recoverResult(obj, this.f4175j);
        InterfaceC1944c interfaceC1944c = this.f4175j;
        InterfaceC1952k context = interfaceC1944c.getContext();
        Object updateThreadContext = kotlinx.coroutines.internal.a.updateThreadContext(context, null);
        Q0 updateUndispatchedCompletion = updateThreadContext != kotlinx.coroutines.internal.a.f17614a ? kotlinx.coroutines.a.updateUndispatchedCompletion(interfaceC1944c, context, updateThreadContext) : null;
        try {
            this.f4175j.resumeWith(recoverResult);
            if (updateUndispatchedCompletion == null || updateUndispatchedCompletion.clearThreadContext()) {
                kotlinx.coroutines.internal.a.restoreThreadContext(context, updateThreadContext);
            }
        } catch (Throwable th) {
            if (updateUndispatchedCompletion == null || updateUndispatchedCompletion.clearThreadContext()) {
                kotlinx.coroutines.internal.a.restoreThreadContext(context, updateThreadContext);
            }
            throw th;
        }
    }

    public final boolean clearThreadContext() {
        boolean z6 = this.threadLocalIsSet && this.f3157m.get() == null;
        this.f3157m.remove();
        return !z6;
    }

    public final void saveThreadContext(InterfaceC1952k interfaceC1952k, Object obj) {
        this.threadLocalIsSet = true;
        this.f3157m.set(AbstractC1709h.to(interfaceC1952k, obj));
    }
}
